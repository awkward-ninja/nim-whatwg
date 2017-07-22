const
	fs = require( 'fs' ),
	https = require( 'https' ),
	jsdom = require( 'jsdom' ),
	webidl2 = require( 'webidl2' )

function skip( type, name, context ) {

	const prefix = context.join( ': ' )

	console.warn( `${prefix}: Skipped ${type} definition ${name ? `'${name}'` : '(??)'}` )

}

function getNimType( idlType, context ) {

	// HACK: assuming nullable types are only used for reference types

	if( idlType.idlType.constructor !== String ) {
		skip( 'complex typed', null, context )
		return null
	}

	switch( idlType.idlType ) {
		case 'boolean':
			return 'bool'
		case 'unsigned short':
			return 'uint16'
		case 'unsigned long':
			return 'uint32'
		case 'unsigned long long':
			return 'uint64'
		case 'short':
			return 'int16'
		case 'long':
			return 'int32'
		case 'long long':
			return 'int64'
		case 'double':
		case 'unrestricted double':
			return 'float64'
		case 'ByteString':
		case 'DOMString':
		case 'USVString':
			return 'cstring'
		case 'TimerHandler':
			// HACK: timer handlers can only be trivial procedures for now
			return 'proc ()'
		case 'EventHandler':
			// HACK: event handlers are somewhat trivial for now
			return 'proc ( event: Event )'
		case 'WindowProxy':
			return 'Window'
		case 'any':
		case 'object':
		case 'Function':
		case 'DOMHighResTimeStamp':
		case 'DOMStringMap':
		case 'Uint8ClampedArray':
		case 'ArrayBuffer':
		case 'ArrayBufferView':
		case 'ShadowRootInit':
		case 'HTMLOrSVGScriptElement':
		case 'HTMLOptionsCollection':
		case 'HTMLFormControlsCollection':
		case 'OnErrorEventHandler':
		case 'OnBeforeUnloadEventHandler':
		case 'MessageEventSource':
		case 'CustomElementRegistry':
		case 'BarProp':
		case 'Navigator':
		case 'ApplicationCache':
		case 'FrameRequestCallback':
		case 'MediaProvider':
		case 'FileList':
		case 'File':
		case 'Blob':
		case 'RenderingContext':
		case 'DOMMatrix':
		case 'DOMMatrixInit':
		case 'CanvasImageSource':
		case 'OffscreenRenderingContext':
		case 'FunctionStringCallback':
			skip( 'typed', idlType.idlType, context )
			return null
		default:
			return idlType.idlType
	}

}

const INDENT = '  '

function* nimField( idlMember, moduleName, idlDef, imported ) {

	const context = [ moduleName, idlDef.name ]

	// HACK: writeable types are object properties for now
	// HACK: optional fields are non-nullable properties for now

	if( idlMember.static ) {
		skip( `static ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.stringifier ) {
		skip( `stringifier ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.inherit ) {
		skip( `inherit ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.default ) {
		skip( `defaulted ${idlMember.type}`, idlMember.name, context )
		return
	}

	context.push( idlMember.name )

	const nimType = getNimType( idlMember.idlType, context )
	context.pop()

	if( ! nimType )
		return

	if( idlMember.idlType.sequence ) {
		skip( `sequence-valued ${idlMember.type}`, idlMember.name, context )
		return
	}

	const nimPragmas = imported ? ' {. importc .}' : ''

	yield `${INDENT}${INDENT}\`${idlMember.name}\`*${nimPragmas}: ${nimType}`

}

function getNimSig( nimKind, idlMember, nimType, nimArgs, nimSuffix = '' ) {

	return `${nimKind} \`${idlMember.name}\`*( ${nimArgs.join( ', ' )} ): ${nimType}${nimSuffix}`

}

function* nimOverload( idlMember, nimType, nimSelf, nimArgs, nimValues, global ) {

	yield getNimSig( 'proc', idlMember, nimType, nimSelf.concat( nimArgs ) )

	if( global ) {
		yield getNimSig( 'template', idlMember, nimType, nimArgs, ' =' )
		yield `${INDENT}window.${idlMember.name}( ${nimValues.join( ', ' )} )`
	}

}

function* nimProc( idlMember, moduleName, idlDef, global ) {

	const context = [ moduleName, idlDef.name ]

	if( idlMember.static ) {
		skip( `static ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.getter ) {
		skip( `getter ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.setter ) {
		skip( `setter ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.creator ) {
		skip( `creator ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.deleter ) {
		skip( `deleter ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.legacycaller ) {
		skip( `legacy caller ${idlMember.type}`, idlMember.name, context )
		return
	}

	if( idlMember.stringifier ) {
		skip( `stringifier ${idlMember.type}`, idlMember.name, context )
		return
	}

	context.push( idlMember.name )

	const nimType = getNimType( idlMember.idlType, context )
	context.pop()

	if( ! nimType )
		return

	if( idlMember.idlType.sequence ) {
		skip( `sequence-valued ${idlMember.type}`, idlMember.name, context )
		return
	}

	const
		idlArgsReq = [],
		idlArgsOpt = []

	for( const idlArg of idlMember.arguments ) {
		context.push( idlMember.name )
		context.push( idlArg.name )

		// HACK: variadic arguments are omitted for now
		if( idlArg.variadic ) {
			skip( 'variadic argument', idlArg.name, context )
			continue
		}

		if( ! getNimType( idlArg.idlType, context ) ) {
			context.pop()
			context.pop()
			return
		}

		( idlArg.optional ? idlArgsOpt : idlArgsReq ).push( idlArg )

		context.pop()
		context.pop()
	}

	yield ''

	const
		nimSelf = [ `self: ${idlDef.name}` ],
		nimArgs = idlArgsReq.map( idlArg =>
			`\`${idlArg.name}\`: ${getNimType( idlArg.idlType, context )}`
		),
		nimValues = idlArgsReq.map( idlArg => idlArg.name )

	yield* nimOverload( idlMember, nimType, nimSelf, nimArgs, nimValues, global )

	for( const idlArg of idlArgsOpt ) {
		const nimArgType = getNimType( idlArg.idlType, context )

		nimArgs.push( `\`${idlArg.name}\`: ${nimArgType}` )
		nimValues.push( idlArg.name )

		yield* nimOverload( idlMember, nimType, nimSelf, nimArgs, nimValues, global )
	}

}

function* nimObject( idlDef, moduleName ) {

	const
		context = [ moduleName, idlDef.name ],
		idlBase = idlDef.inheritance ? idlDef.inheritance : 'Root'

	yield ''
	yield `${INDENT}${idlDef.name}* = ref ${idlDef.name}Obj`
	yield `${INDENT}${idlDef.name}Obj {. importc .} = object of ${idlBase}Obj`

	for( const idlMember of idlDef.members ) {
		switch( idlMember.type ) {

			case 'attribute':
			case 'field':
				yield* nimField( idlMember, moduleName, idlDef )
				break

			case 'operation':
				// handled in nimProcs
				break

			default:
				skip( idlMember.type, idlMember.name, context )
				break

		}
	}

}

function* nimEnum( idlDef ) {

	// HACK: enum types are unrestricted strings for now

	yield ''
	yield `${INDENT}${idlDef.name}* = cstring`

}

const
	idlDefs = [],
	idlIfaces = {}

function* nimModule( moduleName ) {

	const
		context = [ moduleName ],
		idlGlobals = {}

	for( const idlDef of idlDefs ) {
		switch( idlDef.type ) {

			case 'interface':
				for( const idlExtAttr of idlDef.extAttrs )
					if( idlExtAttr.name === 'PrimaryGlobal' )
						idlGlobals[ idlDef.name ] = idlDef
				break

			case 'implements': {
				const
					idlTarget = idlIfaces[ idlDef.target ],
					idlSource = idlIfaces[ idlDef.implements ]

				if( ! idlTarget || ! idlSource ) {
					skip( idlDef.type, `${idlDef.target}: ${idlDef.implements}`, context )
					continue
				}

				const idlMembers = idlTarget.members

				// HACK: members not inherited recursively from source interface
				if( idlMembers )
					idlMembers.push.apply( idlMembers, idlSource.members )
				break
			}

		}
	}

	yield 'type'

	for( const idlDef of idlDefs ) {
		switch( idlDef.type ) {

			case 'interface':
			case 'callback interface':
			case 'dictionary':
				yield* nimObject( idlDef, moduleName )
				break

			case 'enum':
				yield* nimEnum( idlDef )
				break

			case 'implements':
				// handled above
				break

			default:
				skip( idlDef.type, idlDef.name, context )
				break

		}
	}

	yield ''
	yield '{. push importcpp .}'

	for( const idlDef of idlDefs ) {
		switch( idlDef.type ) {

			case 'interface':
			case 'callback interface': {

				const context = [ moduleName, idlDef.name ]

				for( const idlMember of idlDef.members ) {
					switch( idlMember.type ) {

						case 'operation':
							yield* nimProc( idlMember, moduleName, idlDef, idlDef.name in idlGlobals )
							break

						case 'attribute':
							// handled in nimObject
							break

						default:
							skip( idlMember.type, idlMember.name, context )
							break

					}
				}

				break

			}

			default:
				// handled above
				break

		}
	}

	yield ''
	yield '{. pop .}'


	yield ''
	yield 'var'

	for ( const idlDef of Object.values( idlGlobals ) )
		for( const idlMember of idlDef.members )
			if( idlMember.type === 'attribute' )
				yield* nimField( idlMember, moduleName, idlDef, true )

}

function idlModule( moduleName, idlTree ) {

	const context = [ moduleName ]

	for( const idlDef of idlTree ) {
		switch( idlDef.name ) {
			case 'DragEvent':
			case 'DragEventInit':
			case 'HTMLOptionsCollection':      // requires attribute overriding/shadowing
			case 'HTMLVideoElement':           // requires ordering parent classes before child classes
			case 'HTMLAudioElement':           //   (same)
			case 'HTMLFormControlsCollection': //   (same)
				skip( idlDef.type, idlDef.name, context )
				continue
			}

			switch( idlDef.type ) {

				case 'interface':
				case 'callback interface':
				case 'dictionary': {
					const idlMerged = idlIfaces[ idlDef.name ]

					if( ! idlMerged ) {
						idlDefs.push( idlDef )
						idlIfaces[ idlDef.name ] = idlDef
						continue
					}

					const
						idlMembers = idlMerged.members,
						idlExtAttrs = idlMerged.extAttrs

					if( idlMembers )
						idlMembers.push.apply( idlMembers, idlDef.members )
					if( idlExtAttrs )
						idlExtAttrs.push.apply( idlExtAttrs, idlDef.extAttrs )
					break
				}

				default:
					idlDefs.push( idlDef )
					break

		}
	}

}

function bail( message, error ) {

	console.error( message )
	if( error )
		console.error( error )
	process.exit( 1 )

}

const specs = [
	{ name: 'dom', url: 'https://dom.spec.whatwg.org', query: 'main .idl.def' },
	{ name: 'html', url: 'https://html.spec.whatwg.org', query: '.idl' },
	{ name: 'selection', url: 'https://w3c.github.io/selection-api/', query: '.idl' }
]

var parsed = 0

function compile( name, src, output ) {

	fs.readFile( src, 'utf8', ( error, content ) => {
		if( error )
			bail( `Could not open specification at ${src}`, error )

		try {
			idlModule( name, webidl2.parse( content ) )
		}
		catch( error ) {
			bail( `Could not parse specification at ${src}`, error )
		}

		if( ++parsed === specs.length  ) {
			const lines = []

			for( const line of nimModule( 'whatwg' ) )
				lines.push( line )

			fs.write( output, lines.join( '\n' ), error => {
				if( error )
					bail( 'Could not write module file', error )
			} )
		}
	} )

}

function scrape( name, src, query, output ) {

	const
		path = `src/${name}.idl`,
		file = fs.createWriteStream( path, { flags: 'wx' } )
			.on( 'error', error => {
				if( error.code !== 'EEXIST' )
					bail( `Could not open specification at ${path}`, error )

				compile( name, path, output )
			} )
			.on( 'open', () => {
				console.log( `Scraping document at ${src} ...` )

				jsdom.JSDOM.fromFile( src )
					.then( dom => {
						for( const node of dom.window.document.querySelectorAll( query ) ) {
							file.write( '\n' )
							file.write( node.textContent )
						}

						compile( name, path, output )
					} )
					.catch( error => {
						bail( `Could not scrape document at ${src}`, error )
					} )
			} )

}

function download( name, url, query, output ) {

	const
		path = `src/${name}.html`,
		file = fs.createWriteStream( path, { flags: 'wx' } )
			.on( 'error', error => {
				if( error.code !== 'EEXIST' )
					bail( `Could not open document at ${path}`, error )

				scrape( name, path, query, output )
			} )
			.on( 'open', () => {
				console.log( `Downloading document at ${url} ...` )

				https.get( url, response => {
					response.pipe( file )
						.on( 'finish', () => {
							scrape( name, path, query, output )
						} )
				} )
					.on( 'error', error => {
						bail( `Could not download document at ${url}`, error )
					} )
			} )

}

fs.open( 'dist/whatwg.nim', 'w', ( error, output ) => {
	if( error )
		bail( 'Could not open module file', error )

	for( const spec of specs )
		download( spec.name, spec.url, spec.query, output )
} )
