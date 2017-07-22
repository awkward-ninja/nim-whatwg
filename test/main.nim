import ../dist/whatwg

proc h( tag: cstring ): Element =
  result = document.create_element( tag )
  discard document.body.append_child( result )

let input1 = cast[ HTMLInputElement ]( h( "input" ) )
input1.size = 32
input1.set_attribute( "style", "display: block" )

let input2 = cast[ HTMLInputElement ]( h( "input" ) )
input2.size = 32
input2.set_attribute( "style", "display: block" )

onkeydown = proc ( event: Event ) =
  input2.value = "YOU PRESSED A KEY"

onmousedown = proc ( event: Event ) =
  input2.value = "YOU PRESSED A MOUSE"

proc greet( msg: cstring ) =
  input1.value = $ msg & " from " & $ location.hostname

discard set_timeout( proc () =
  greet( atob( "SGVsbG8gV29ybGQh" ) )
, 1000 )
