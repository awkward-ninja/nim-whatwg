type

  Event* = ref EventObj
  EventObj {. importc .} = object of RootObj
    `type`*: cstring
    `target`*: EventTarget
    `currentTarget`*: EventTarget
    `eventPhase`*: uint16
    `cancelBubble`*: bool
    `bubbles`*: bool
    `cancelable`*: bool
    `defaultPrevented`*: bool
    `composed`*: bool
    `isTrusted`*: bool

  EventInit* = ref EventInitObj
  EventInitObj {. importc .} = object of RootObj

  CustomEvent* = ref CustomEventObj
  CustomEventObj {. importc .} = object of EventObj

  CustomEventInit* = ref CustomEventInitObj
  CustomEventInitObj {. importc .} = object of EventInitObj

  EventTarget* = ref EventTargetObj
  EventTargetObj {. importc .} = object of RootObj

  EventListener* = ref EventListenerObj
  EventListenerObj {. importc .} = object of RootObj

  EventListenerOptions* = ref EventListenerOptionsObj
  EventListenerOptionsObj {. importc .} = object of RootObj

  AddEventListenerOptions* = ref AddEventListenerOptionsObj
  AddEventListenerOptionsObj {. importc .} = object of EventListenerOptionsObj

  AbortController* = ref AbortControllerObj
  AbortControllerObj {. importc .} = object of RootObj
    `signal`*: AbortSignal

  AbortSignal* = ref AbortSignalObj
  AbortSignalObj {. importc .} = object of EventTargetObj
    `aborted`*: bool
    `onabort`*: proc ( event: Event )

  NonElementParentNode* = ref NonElementParentNodeObj
  NonElementParentNodeObj {. importc .} = object of RootObj

  DocumentOrShadowRoot* = ref DocumentOrShadowRootObj
  DocumentOrShadowRootObj {. importc .} = object of RootObj

  ParentNode* = ref ParentNodeObj
  ParentNodeObj {. importc .} = object of RootObj
    `children`*: HTMLCollection
    `firstElementChild`*: Element
    `lastElementChild`*: Element
    `childElementCount`*: uint32

  NonDocumentTypeChildNode* = ref NonDocumentTypeChildNodeObj
  NonDocumentTypeChildNodeObj {. importc .} = object of RootObj
    `previousElementSibling`*: Element
    `nextElementSibling`*: Element

  ChildNode* = ref ChildNodeObj
  ChildNodeObj {. importc .} = object of RootObj

  Slotable* = ref SlotableObj
  SlotableObj {. importc .} = object of RootObj
    `assignedSlot`*: HTMLSlotElement

  NodeList* = ref NodeListObj
  NodeListObj {. importc .} = object of RootObj
    `length`*: uint32

  HTMLCollection* = ref HTMLCollectionObj
  HTMLCollectionObj {. importc .} = object of RootObj
    `length`*: uint32

  MutationObserver* = ref MutationObserverObj
  MutationObserverObj {. importc .} = object of RootObj

  MutationObserverInit* = ref MutationObserverInitObj
  MutationObserverInitObj {. importc .} = object of RootObj
    `attributes`*: bool
    `characterData`*: bool
    `attributeOldValue`*: bool
    `characterDataOldValue`*: bool

  MutationRecord* = ref MutationRecordObj
  MutationRecordObj {. importc .} = object of RootObj
    `type`*: cstring
    `target`*: Node
    `addedNodes`*: NodeList
    `removedNodes`*: NodeList
    `previousSibling`*: Node
    `nextSibling`*: Node
    `attributeName`*: cstring
    `attributeNamespace`*: cstring
    `oldValue`*: cstring

  Node* = ref NodeObj
  NodeObj {. importc .} = object of EventTargetObj
    `nodeType`*: uint16
    `nodeName`*: cstring
    `baseURI`*: cstring
    `isConnected`*: bool
    `ownerDocument`*: Document
    `parentNode`*: Node
    `parentElement`*: Element
    `childNodes`*: NodeList
    `firstChild`*: Node
    `lastChild`*: Node
    `previousSibling`*: Node
    `nextSibling`*: Node
    `nodeValue`*: cstring
    `textContent`*: cstring

  GetRootNodeOptions* = ref GetRootNodeOptionsObj
  GetRootNodeOptionsObj {. importc .} = object of RootObj

  Document* = ref DocumentObj
  DocumentObj {. importc .} = object of NodeObj
    `implementation`*: DOMImplementation
    `URL`*: cstring
    `documentURI`*: cstring
    `origin`*: cstring
    `compatMode`*: cstring
    `characterSet`*: cstring
    `charset`*: cstring
    `inputEncoding`*: cstring
    `contentType`*: cstring
    `doctype`*: DocumentType
    `documentElement`*: Element
    `location`*: Location
    `domain`*: cstring
    `referrer`*: cstring
    `cookie`*: cstring
    `lastModified`*: cstring
    `readyState`*: DocumentReadyState
    `title`*: cstring
    `dir`*: cstring
    `body`*: HTMLElement
    `head`*: HTMLHeadElement
    `images`*: HTMLCollection
    `embeds`*: HTMLCollection
    `plugins`*: HTMLCollection
    `links`*: HTMLCollection
    `forms`*: HTMLCollection
    `scripts`*: HTMLCollection
    `defaultView`*: Window
    `activeElement`*: Element
    `designMode`*: cstring
    `onreadystatechange`*: proc ( event: Event )
    `fgColor`*: cstring
    `linkColor`*: cstring
    `vlinkColor`*: cstring
    `alinkColor`*: cstring
    `bgColor`*: cstring
    `anchors`*: HTMLCollection
    `applets`*: HTMLCollection
    `all`*: HTMLAllCollection
    `children`*: HTMLCollection
    `firstElementChild`*: Element
    `lastElementChild`*: Element
    `childElementCount`*: uint32
    `onselectstart`*: proc ( event: Event )
    `onselectionchange`*: proc ( event: Event )
    `onabort`*: proc ( event: Event )
    `onauxclick`*: proc ( event: Event )
    `onblur`*: proc ( event: Event )
    `oncancel`*: proc ( event: Event )
    `oncanplay`*: proc ( event: Event )
    `oncanplaythrough`*: proc ( event: Event )
    `onchange`*: proc ( event: Event )
    `onclick`*: proc ( event: Event )
    `onclose`*: proc ( event: Event )
    `oncontextmenu`*: proc ( event: Event )
    `oncuechange`*: proc ( event: Event )
    `ondblclick`*: proc ( event: Event )
    `ondrag`*: proc ( event: Event )
    `ondragend`*: proc ( event: Event )
    `ondragenter`*: proc ( event: Event )
    `ondragexit`*: proc ( event: Event )
    `ondragleave`*: proc ( event: Event )
    `ondragover`*: proc ( event: Event )
    `ondragstart`*: proc ( event: Event )
    `ondrop`*: proc ( event: Event )
    `ondurationchange`*: proc ( event: Event )
    `onemptied`*: proc ( event: Event )
    `onended`*: proc ( event: Event )
    `onfocus`*: proc ( event: Event )
    `oninput`*: proc ( event: Event )
    `oninvalid`*: proc ( event: Event )
    `onkeydown`*: proc ( event: Event )
    `onkeypress`*: proc ( event: Event )
    `onkeyup`*: proc ( event: Event )
    `onload`*: proc ( event: Event )
    `onloadeddata`*: proc ( event: Event )
    `onloadedmetadata`*: proc ( event: Event )
    `onloadend`*: proc ( event: Event )
    `onloadstart`*: proc ( event: Event )
    `onmousedown`*: proc ( event: Event )
    `onmouseenter`*: proc ( event: Event )
    `onmouseleave`*: proc ( event: Event )
    `onmousemove`*: proc ( event: Event )
    `onmouseout`*: proc ( event: Event )
    `onmouseover`*: proc ( event: Event )
    `onmouseup`*: proc ( event: Event )
    `onwheel`*: proc ( event: Event )
    `onpause`*: proc ( event: Event )
    `onplay`*: proc ( event: Event )
    `onplaying`*: proc ( event: Event )
    `onprogress`*: proc ( event: Event )
    `onratechange`*: proc ( event: Event )
    `onreset`*: proc ( event: Event )
    `onresize`*: proc ( event: Event )
    `onscroll`*: proc ( event: Event )
    `onsecuritypolicyviolation`*: proc ( event: Event )
    `onseeked`*: proc ( event: Event )
    `onseeking`*: proc ( event: Event )
    `onselect`*: proc ( event: Event )
    `onstalled`*: proc ( event: Event )
    `onsubmit`*: proc ( event: Event )
    `onsuspend`*: proc ( event: Event )
    `ontimeupdate`*: proc ( event: Event )
    `ontoggle`*: proc ( event: Event )
    `onvolumechange`*: proc ( event: Event )
    `onwaiting`*: proc ( event: Event )
    `oncopy`*: proc ( event: Event )
    `oncut`*: proc ( event: Event )
    `onpaste`*: proc ( event: Event )

  XMLDocument* = ref XMLDocumentObj
  XMLDocumentObj {. importc .} = object of DocumentObj

  ElementCreationOptions* = ref ElementCreationOptionsObj
  ElementCreationOptionsObj {. importc .} = object of RootObj
    `is`*: cstring

  DOMImplementation* = ref DOMImplementationObj
  DOMImplementationObj {. importc .} = object of RootObj

  DocumentType* = ref DocumentTypeObj
  DocumentTypeObj {. importc .} = object of NodeObj
    `name`*: cstring
    `publicId`*: cstring
    `systemId`*: cstring

  DocumentFragment* = ref DocumentFragmentObj
  DocumentFragmentObj {. importc .} = object of NodeObj
    `children`*: HTMLCollection
    `firstElementChild`*: Element
    `lastElementChild`*: Element
    `childElementCount`*: uint32

  ShadowRoot* = ref ShadowRootObj
  ShadowRootObj {. importc .} = object of DocumentFragmentObj
    `mode`*: ShadowRootMode
    `host`*: Element

  ShadowRootMode* = cstring

  Element* = ref ElementObj
  ElementObj {. importc .} = object of NodeObj
    `namespaceURI`*: cstring
    `prefix`*: cstring
    `localName`*: cstring
    `tagName`*: cstring
    `id`*: cstring
    `className`*: cstring
    `classList`*: DOMTokenList
    `slot`*: cstring
    `attributes`*: NamedNodeMap
    `shadowRoot`*: ShadowRoot
    `children`*: HTMLCollection
    `firstElementChild`*: Element
    `lastElementChild`*: Element
    `childElementCount`*: uint32
    `previousElementSibling`*: Element
    `nextElementSibling`*: Element
    `assignedSlot`*: HTMLSlotElement

  ShadowRootInit* = ref ShadowRootInitObj
  ShadowRootInitObj {. importc .} = object of RootObj
    `mode`*: ShadowRootMode

  NamedNodeMap* = ref NamedNodeMapObj
  NamedNodeMapObj {. importc .} = object of RootObj
    `length`*: uint32

  Attr* = ref AttrObj
  AttrObj {. importc .} = object of NodeObj
    `namespaceURI`*: cstring
    `prefix`*: cstring
    `localName`*: cstring
    `name`*: cstring
    `value`*: cstring
    `ownerElement`*: Element
    `specified`*: bool

  CharacterData* = ref CharacterDataObj
  CharacterDataObj {. importc .} = object of NodeObj
    `data`*: cstring
    `length`*: uint32
    `previousElementSibling`*: Element
    `nextElementSibling`*: Element

  Text* = ref TextObj
  TextObj {. importc .} = object of CharacterDataObj
    `wholeText`*: cstring
    `assignedSlot`*: HTMLSlotElement

  CDATASection* = ref CDATASectionObj
  CDATASectionObj {. importc .} = object of TextObj

  ProcessingInstruction* = ref ProcessingInstructionObj
  ProcessingInstructionObj {. importc .} = object of CharacterDataObj
    `target`*: cstring

  Comment* = ref CommentObj
  CommentObj {. importc .} = object of CharacterDataObj

  Range* = ref RangeObj
  RangeObj {. importc .} = object of RootObj
    `startContainer`*: Node
    `startOffset`*: uint32
    `endContainer`*: Node
    `endOffset`*: uint32
    `collapsed`*: bool
    `commonAncestorContainer`*: Node

  NodeIterator* = ref NodeIteratorObj
  NodeIteratorObj {. importc .} = object of RootObj
    `root`*: Node
    `referenceNode`*: Node
    `pointerBeforeReferenceNode`*: bool
    `whatToShow`*: uint32
    `filter`*: NodeFilter

  TreeWalker* = ref TreeWalkerObj
  TreeWalkerObj {. importc .} = object of RootObj
    `root`*: Node
    `whatToShow`*: uint32
    `filter`*: NodeFilter
    `currentNode`*: Node

  NodeFilter* = ref NodeFilterObj
  NodeFilterObj {. importc .} = object of RootObj

  DOMTokenList* = ref DOMTokenListObj
  DOMTokenListObj {. importc .} = object of RootObj
    `length`*: uint32

  Selection* = ref SelectionObj
  SelectionObj {. importc .} = object of RootObj
    `anchorNode`*: Node
    `anchorOffset`*: uint32
    `focusNode`*: Node
    `focusOffset`*: uint32
    `isCollapsed`*: bool
    `rangeCount`*: uint32
    `type`*: cstring

  Window* = ref WindowObj
  WindowObj {. importc .} = object of RootObj
    `window`*: Window
    `self`*: Window
    `document`*: Document
    `name`*: cstring
    `location`*: Location
    `history`*: History
    `status`*: cstring
    `closed`*: bool
    `frames`*: Window
    `length`*: uint32
    `top`*: Window
    `parent`*: Window
    `frameElement`*: Element
    `external`*: External
    `onselectstart`*: proc ( event: Event )
    `onselectionchange`*: proc ( event: Event )
    `onabort`*: proc ( event: Event )
    `onauxclick`*: proc ( event: Event )
    `onblur`*: proc ( event: Event )
    `oncancel`*: proc ( event: Event )
    `oncanplay`*: proc ( event: Event )
    `oncanplaythrough`*: proc ( event: Event )
    `onchange`*: proc ( event: Event )
    `onclick`*: proc ( event: Event )
    `onclose`*: proc ( event: Event )
    `oncontextmenu`*: proc ( event: Event )
    `oncuechange`*: proc ( event: Event )
    `ondblclick`*: proc ( event: Event )
    `ondrag`*: proc ( event: Event )
    `ondragend`*: proc ( event: Event )
    `ondragenter`*: proc ( event: Event )
    `ondragexit`*: proc ( event: Event )
    `ondragleave`*: proc ( event: Event )
    `ondragover`*: proc ( event: Event )
    `ondragstart`*: proc ( event: Event )
    `ondrop`*: proc ( event: Event )
    `ondurationchange`*: proc ( event: Event )
    `onemptied`*: proc ( event: Event )
    `onended`*: proc ( event: Event )
    `onfocus`*: proc ( event: Event )
    `oninput`*: proc ( event: Event )
    `oninvalid`*: proc ( event: Event )
    `onkeydown`*: proc ( event: Event )
    `onkeypress`*: proc ( event: Event )
    `onkeyup`*: proc ( event: Event )
    `onload`*: proc ( event: Event )
    `onloadeddata`*: proc ( event: Event )
    `onloadedmetadata`*: proc ( event: Event )
    `onloadend`*: proc ( event: Event )
    `onloadstart`*: proc ( event: Event )
    `onmousedown`*: proc ( event: Event )
    `onmouseenter`*: proc ( event: Event )
    `onmouseleave`*: proc ( event: Event )
    `onmousemove`*: proc ( event: Event )
    `onmouseout`*: proc ( event: Event )
    `onmouseover`*: proc ( event: Event )
    `onmouseup`*: proc ( event: Event )
    `onwheel`*: proc ( event: Event )
    `onpause`*: proc ( event: Event )
    `onplay`*: proc ( event: Event )
    `onplaying`*: proc ( event: Event )
    `onprogress`*: proc ( event: Event )
    `onratechange`*: proc ( event: Event )
    `onreset`*: proc ( event: Event )
    `onresize`*: proc ( event: Event )
    `onscroll`*: proc ( event: Event )
    `onsecuritypolicyviolation`*: proc ( event: Event )
    `onseeked`*: proc ( event: Event )
    `onseeking`*: proc ( event: Event )
    `onselect`*: proc ( event: Event )
    `onstalled`*: proc ( event: Event )
    `onsubmit`*: proc ( event: Event )
    `onsuspend`*: proc ( event: Event )
    `ontimeupdate`*: proc ( event: Event )
    `ontoggle`*: proc ( event: Event )
    `onvolumechange`*: proc ( event: Event )
    `onwaiting`*: proc ( event: Event )
    `onafterprint`*: proc ( event: Event )
    `onbeforeprint`*: proc ( event: Event )
    `onhashchange`*: proc ( event: Event )
    `onlanguagechange`*: proc ( event: Event )
    `onmessage`*: proc ( event: Event )
    `onmessageerror`*: proc ( event: Event )
    `onoffline`*: proc ( event: Event )
    `ononline`*: proc ( event: Event )
    `onpagehide`*: proc ( event: Event )
    `onpageshow`*: proc ( event: Event )
    `onpopstate`*: proc ( event: Event )
    `onrejectionhandled`*: proc ( event: Event )
    `onstorage`*: proc ( event: Event )
    `onunhandledrejection`*: proc ( event: Event )
    `onunload`*: proc ( event: Event )
    `origin`*: cstring
    `sessionStorage`*: Storage
    `localStorage`*: Storage

  GlobalEventHandlers* = ref GlobalEventHandlersObj
  GlobalEventHandlersObj {. importc .} = object of RootObj
    `onselectstart`*: proc ( event: Event )
    `onselectionchange`*: proc ( event: Event )
    `onabort`*: proc ( event: Event )
    `onauxclick`*: proc ( event: Event )
    `onblur`*: proc ( event: Event )
    `oncancel`*: proc ( event: Event )
    `oncanplay`*: proc ( event: Event )
    `oncanplaythrough`*: proc ( event: Event )
    `onchange`*: proc ( event: Event )
    `onclick`*: proc ( event: Event )
    `onclose`*: proc ( event: Event )
    `oncontextmenu`*: proc ( event: Event )
    `oncuechange`*: proc ( event: Event )
    `ondblclick`*: proc ( event: Event )
    `ondrag`*: proc ( event: Event )
    `ondragend`*: proc ( event: Event )
    `ondragenter`*: proc ( event: Event )
    `ondragexit`*: proc ( event: Event )
    `ondragleave`*: proc ( event: Event )
    `ondragover`*: proc ( event: Event )
    `ondragstart`*: proc ( event: Event )
    `ondrop`*: proc ( event: Event )
    `ondurationchange`*: proc ( event: Event )
    `onemptied`*: proc ( event: Event )
    `onended`*: proc ( event: Event )
    `onfocus`*: proc ( event: Event )
    `oninput`*: proc ( event: Event )
    `oninvalid`*: proc ( event: Event )
    `onkeydown`*: proc ( event: Event )
    `onkeypress`*: proc ( event: Event )
    `onkeyup`*: proc ( event: Event )
    `onload`*: proc ( event: Event )
    `onloadeddata`*: proc ( event: Event )
    `onloadedmetadata`*: proc ( event: Event )
    `onloadend`*: proc ( event: Event )
    `onloadstart`*: proc ( event: Event )
    `onmousedown`*: proc ( event: Event )
    `onmouseenter`*: proc ( event: Event )
    `onmouseleave`*: proc ( event: Event )
    `onmousemove`*: proc ( event: Event )
    `onmouseout`*: proc ( event: Event )
    `onmouseover`*: proc ( event: Event )
    `onmouseup`*: proc ( event: Event )
    `onwheel`*: proc ( event: Event )
    `onpause`*: proc ( event: Event )
    `onplay`*: proc ( event: Event )
    `onplaying`*: proc ( event: Event )
    `onprogress`*: proc ( event: Event )
    `onratechange`*: proc ( event: Event )
    `onreset`*: proc ( event: Event )
    `onresize`*: proc ( event: Event )
    `onscroll`*: proc ( event: Event )
    `onsecuritypolicyviolation`*: proc ( event: Event )
    `onseeked`*: proc ( event: Event )
    `onseeking`*: proc ( event: Event )
    `onselect`*: proc ( event: Event )
    `onstalled`*: proc ( event: Event )
    `onsubmit`*: proc ( event: Event )
    `onsuspend`*: proc ( event: Event )
    `ontimeupdate`*: proc ( event: Event )
    `ontoggle`*: proc ( event: Event )
    `onvolumechange`*: proc ( event: Event )
    `onwaiting`*: proc ( event: Event )

  Example* = ref ExampleObj
  ExampleObj {. importc .} = object of RootObj

  HTMLAllCollection* = ref HTMLAllCollectionObj
  HTMLAllCollectionObj {. importc .} = object of RootObj
    `length`*: uint32

  RadioNodeList* = ref RadioNodeListObj
  RadioNodeListObj {. importc .} = object of NodeListObj
    `value`*: cstring

  DOMStringList* = ref DOMStringListObj
  DOMStringListObj {. importc .} = object of RootObj
    `length`*: uint32

  DocumentReadyState* = cstring

  HTMLElement* = ref HTMLElementObj
  HTMLElementObj {. importc .} = object of ElementObj
    `title`*: cstring
    `lang`*: cstring
    `translate`*: bool
    `dir`*: cstring
    `hidden`*: bool
    `tabIndex`*: int32
    `accessKey`*: cstring
    `accessKeyLabel`*: cstring
    `draggable`*: bool
    `spellcheck`*: bool
    `innerText`*: cstring
    `onselectstart`*: proc ( event: Event )
    `onselectionchange`*: proc ( event: Event )
    `onabort`*: proc ( event: Event )
    `onauxclick`*: proc ( event: Event )
    `onblur`*: proc ( event: Event )
    `oncancel`*: proc ( event: Event )
    `oncanplay`*: proc ( event: Event )
    `oncanplaythrough`*: proc ( event: Event )
    `onchange`*: proc ( event: Event )
    `onclick`*: proc ( event: Event )
    `onclose`*: proc ( event: Event )
    `oncontextmenu`*: proc ( event: Event )
    `oncuechange`*: proc ( event: Event )
    `ondblclick`*: proc ( event: Event )
    `ondrag`*: proc ( event: Event )
    `ondragend`*: proc ( event: Event )
    `ondragenter`*: proc ( event: Event )
    `ondragexit`*: proc ( event: Event )
    `ondragleave`*: proc ( event: Event )
    `ondragover`*: proc ( event: Event )
    `ondragstart`*: proc ( event: Event )
    `ondrop`*: proc ( event: Event )
    `ondurationchange`*: proc ( event: Event )
    `onemptied`*: proc ( event: Event )
    `onended`*: proc ( event: Event )
    `onfocus`*: proc ( event: Event )
    `oninput`*: proc ( event: Event )
    `oninvalid`*: proc ( event: Event )
    `onkeydown`*: proc ( event: Event )
    `onkeypress`*: proc ( event: Event )
    `onkeyup`*: proc ( event: Event )
    `onload`*: proc ( event: Event )
    `onloadeddata`*: proc ( event: Event )
    `onloadedmetadata`*: proc ( event: Event )
    `onloadend`*: proc ( event: Event )
    `onloadstart`*: proc ( event: Event )
    `onmousedown`*: proc ( event: Event )
    `onmouseenter`*: proc ( event: Event )
    `onmouseleave`*: proc ( event: Event )
    `onmousemove`*: proc ( event: Event )
    `onmouseout`*: proc ( event: Event )
    `onmouseover`*: proc ( event: Event )
    `onmouseup`*: proc ( event: Event )
    `onwheel`*: proc ( event: Event )
    `onpause`*: proc ( event: Event )
    `onplay`*: proc ( event: Event )
    `onplaying`*: proc ( event: Event )
    `onprogress`*: proc ( event: Event )
    `onratechange`*: proc ( event: Event )
    `onreset`*: proc ( event: Event )
    `onresize`*: proc ( event: Event )
    `onscroll`*: proc ( event: Event )
    `onsecuritypolicyviolation`*: proc ( event: Event )
    `onseeked`*: proc ( event: Event )
    `onseeking`*: proc ( event: Event )
    `onselect`*: proc ( event: Event )
    `onstalled`*: proc ( event: Event )
    `onsubmit`*: proc ( event: Event )
    `onsuspend`*: proc ( event: Event )
    `ontimeupdate`*: proc ( event: Event )
    `ontoggle`*: proc ( event: Event )
    `onvolumechange`*: proc ( event: Event )
    `onwaiting`*: proc ( event: Event )
    `oncopy`*: proc ( event: Event )
    `oncut`*: proc ( event: Event )
    `onpaste`*: proc ( event: Event )
    `contentEditable`*: cstring
    `isContentEditable`*: bool

  HTMLUnknownElement* = ref HTMLUnknownElementObj
  HTMLUnknownElementObj {. importc .} = object of HTMLElementObj

  DOMStringMap* = ref DOMStringMapObj
  DOMStringMapObj {. importc .} = object of RootObj

  HTMLHtmlElement* = ref HTMLHtmlElementObj
  HTMLHtmlElementObj {. importc .} = object of HTMLElementObj
    `version`*: cstring

  HTMLHeadElement* = ref HTMLHeadElementObj
  HTMLHeadElementObj {. importc .} = object of HTMLElementObj

  HTMLTitleElement* = ref HTMLTitleElementObj
  HTMLTitleElementObj {. importc .} = object of HTMLElementObj
    `text`*: cstring

  HTMLBaseElement* = ref HTMLBaseElementObj
  HTMLBaseElementObj {. importc .} = object of HTMLElementObj
    `href`*: cstring
    `target`*: cstring

  HTMLLinkElement* = ref HTMLLinkElementObj
  HTMLLinkElementObj {. importc .} = object of HTMLElementObj
    `href`*: cstring
    `crossOrigin`*: cstring
    `rel`*: cstring
    `as`*: cstring
    `relList`*: DOMTokenList
    `media`*: cstring
    `nonce`*: cstring
    `integrity`*: cstring
    `hreflang`*: cstring
    `type`*: cstring
    `sizes`*: DOMTokenList
    `referrerPolicy`*: cstring
    `scope`*: cstring
    `workerType`*: cstring
    `updateViaCache`*: cstring
    `charset`*: cstring
    `rev`*: cstring
    `target`*: cstring

  HTMLMetaElement* = ref HTMLMetaElementObj
  HTMLMetaElementObj {. importc .} = object of HTMLElementObj
    `name`*: cstring
    `httpEquiv`*: cstring
    `content`*: cstring
    `scheme`*: cstring

  HTMLStyleElement* = ref HTMLStyleElementObj
  HTMLStyleElementObj {. importc .} = object of HTMLElementObj
    `media`*: cstring
    `nonce`*: cstring
    `type`*: cstring

  HTMLBodyElement* = ref HTMLBodyElementObj
  HTMLBodyElementObj {. importc .} = object of HTMLElementObj
    `text`*: cstring
    `link`*: cstring
    `vLink`*: cstring
    `aLink`*: cstring
    `bgColor`*: cstring
    `background`*: cstring
    `onafterprint`*: proc ( event: Event )
    `onbeforeprint`*: proc ( event: Event )
    `onhashchange`*: proc ( event: Event )
    `onlanguagechange`*: proc ( event: Event )
    `onmessage`*: proc ( event: Event )
    `onmessageerror`*: proc ( event: Event )
    `onoffline`*: proc ( event: Event )
    `ononline`*: proc ( event: Event )
    `onpagehide`*: proc ( event: Event )
    `onpageshow`*: proc ( event: Event )
    `onpopstate`*: proc ( event: Event )
    `onrejectionhandled`*: proc ( event: Event )
    `onstorage`*: proc ( event: Event )
    `onunhandledrejection`*: proc ( event: Event )
    `onunload`*: proc ( event: Event )

  HTMLHeadingElement* = ref HTMLHeadingElementObj
  HTMLHeadingElementObj {. importc .} = object of HTMLElementObj
    `align`*: cstring

  HTMLParagraphElement* = ref HTMLParagraphElementObj
  HTMLParagraphElementObj {. importc .} = object of HTMLElementObj
    `align`*: cstring

  HTMLHRElement* = ref HTMLHRElementObj
  HTMLHRElementObj {. importc .} = object of HTMLElementObj
    `align`*: cstring
    `color`*: cstring
    `noShade`*: bool
    `size`*: cstring
    `width`*: cstring

  HTMLPreElement* = ref HTMLPreElementObj
  HTMLPreElementObj {. importc .} = object of HTMLElementObj
    `width`*: int32

  HTMLQuoteElement* = ref HTMLQuoteElementObj
  HTMLQuoteElementObj {. importc .} = object of HTMLElementObj
    `cite`*: cstring

  HTMLOListElement* = ref HTMLOListElementObj
  HTMLOListElementObj {. importc .} = object of HTMLElementObj
    `reversed`*: bool
    `start`*: int32
    `type`*: cstring
    `compact`*: bool

  HTMLUListElement* = ref HTMLUListElementObj
  HTMLUListElementObj {. importc .} = object of HTMLElementObj
    `compact`*: bool
    `type`*: cstring

  HTMLMenuElement* = ref HTMLMenuElementObj
  HTMLMenuElementObj {. importc .} = object of HTMLElementObj
    `compact`*: bool

  HTMLLIElement* = ref HTMLLIElementObj
  HTMLLIElementObj {. importc .} = object of HTMLElementObj
    `value`*: int32
    `type`*: cstring

  HTMLDListElement* = ref HTMLDListElementObj
  HTMLDListElementObj {. importc .} = object of HTMLElementObj
    `compact`*: bool

  HTMLDivElement* = ref HTMLDivElementObj
  HTMLDivElementObj {. importc .} = object of HTMLElementObj
    `align`*: cstring

  HTMLAnchorElement* = ref HTMLAnchorElementObj
  HTMLAnchorElementObj {. importc .} = object of HTMLElementObj
    `target`*: cstring
    `download`*: cstring
    `ping`*: cstring
    `rel`*: cstring
    `relList`*: DOMTokenList
    `hreflang`*: cstring
    `type`*: cstring
    `text`*: cstring
    `referrerPolicy`*: cstring
    `coords`*: cstring
    `charset`*: cstring
    `name`*: cstring
    `rev`*: cstring
    `shape`*: cstring
    `origin`*: cstring
    `protocol`*: cstring
    `username`*: cstring
    `password`*: cstring
    `host`*: cstring
    `hostname`*: cstring
    `port`*: cstring
    `pathname`*: cstring
    `search`*: cstring
    `hash`*: cstring

  HTMLDataElement* = ref HTMLDataElementObj
  HTMLDataElementObj {. importc .} = object of HTMLElementObj
    `value`*: cstring

  HTMLTimeElement* = ref HTMLTimeElementObj
  HTMLTimeElementObj {. importc .} = object of HTMLElementObj
    `dateTime`*: cstring

  HTMLSpanElement* = ref HTMLSpanElementObj
  HTMLSpanElementObj {. importc .} = object of HTMLElementObj

  HTMLBRElement* = ref HTMLBRElementObj
  HTMLBRElementObj {. importc .} = object of HTMLElementObj
    `clear`*: cstring

  HTMLHyperlinkElementUtils* = ref HTMLHyperlinkElementUtilsObj
  HTMLHyperlinkElementUtilsObj {. importc .} = object of RootObj
    `origin`*: cstring
    `protocol`*: cstring
    `username`*: cstring
    `password`*: cstring
    `host`*: cstring
    `hostname`*: cstring
    `port`*: cstring
    `pathname`*: cstring
    `search`*: cstring
    `hash`*: cstring

  HTMLModElement* = ref HTMLModElementObj
  HTMLModElementObj {. importc .} = object of HTMLElementObj
    `cite`*: cstring
    `dateTime`*: cstring

  HTMLPictureElement* = ref HTMLPictureElementObj
  HTMLPictureElementObj {. importc .} = object of HTMLElementObj

  HTMLSourceElement* = ref HTMLSourceElementObj
  HTMLSourceElementObj {. importc .} = object of HTMLElementObj
    `src`*: cstring
    `type`*: cstring
    `srcset`*: cstring
    `sizes`*: cstring
    `media`*: cstring

  HTMLImageElement* = ref HTMLImageElementObj
  HTMLImageElementObj {. importc .} = object of HTMLElementObj
    `alt`*: cstring
    `src`*: cstring
    `srcset`*: cstring
    `sizes`*: cstring
    `crossOrigin`*: cstring
    `useMap`*: cstring
    `isMap`*: bool
    `width`*: uint32
    `height`*: uint32
    `naturalWidth`*: uint32
    `naturalHeight`*: uint32
    `complete`*: bool
    `currentSrc`*: cstring
    `referrerPolicy`*: cstring
    `name`*: cstring
    `lowsrc`*: cstring
    `align`*: cstring
    `hspace`*: uint32
    `vspace`*: uint32
    `longDesc`*: cstring
    `border`*: cstring

  HTMLIFrameElement* = ref HTMLIFrameElementObj
  HTMLIFrameElementObj {. importc .} = object of HTMLElementObj
    `src`*: cstring
    `srcdoc`*: cstring
    `name`*: cstring
    `sandbox`*: DOMTokenList
    `allowFullscreen`*: bool
    `allowPaymentRequest`*: bool
    `allowUserMedia`*: bool
    `width`*: cstring
    `height`*: cstring
    `referrerPolicy`*: cstring
    `contentDocument`*: Document
    `contentWindow`*: Window
    `align`*: cstring
    `scrolling`*: cstring
    `frameBorder`*: cstring
    `longDesc`*: cstring
    `marginHeight`*: cstring
    `marginWidth`*: cstring

  HTMLEmbedElement* = ref HTMLEmbedElementObj
  HTMLEmbedElementObj {. importc .} = object of HTMLElementObj
    `src`*: cstring
    `type`*: cstring
    `width`*: cstring
    `height`*: cstring
    `align`*: cstring
    `name`*: cstring

  HTMLObjectElement* = ref HTMLObjectElementObj
  HTMLObjectElementObj {. importc .} = object of HTMLElementObj
    `data`*: cstring
    `type`*: cstring
    `typeMustMatch`*: bool
    `name`*: cstring
    `useMap`*: cstring
    `form`*: HTMLFormElement
    `width`*: cstring
    `height`*: cstring
    `contentDocument`*: Document
    `contentWindow`*: Window
    `willValidate`*: bool
    `validity`*: ValidityState
    `validationMessage`*: cstring
    `align`*: cstring
    `archive`*: cstring
    `code`*: cstring
    `declare`*: bool
    `hspace`*: uint32
    `standby`*: cstring
    `vspace`*: uint32
    `codeBase`*: cstring
    `codeType`*: cstring
    `border`*: cstring

  HTMLParamElement* = ref HTMLParamElementObj
  HTMLParamElementObj {. importc .} = object of HTMLElementObj
    `name`*: cstring
    `value`*: cstring
    `type`*: cstring
    `valueType`*: cstring

  HTMLTrackElement* = ref HTMLTrackElementObj
  HTMLTrackElementObj {. importc .} = object of HTMLElementObj
    `kind`*: cstring
    `src`*: cstring
    `srclang`*: cstring
    `label`*: cstring
    `default`*: bool
    `readyState`*: uint16
    `track`*: TextTrack

  CanPlayTypeResult* = cstring

  HTMLMediaElement* = ref HTMLMediaElementObj
  HTMLMediaElementObj {. importc .} = object of HTMLElementObj
    `error`*: MediaError
    `src`*: cstring
    `currentSrc`*: cstring
    `crossOrigin`*: cstring
    `networkState`*: uint16
    `preload`*: cstring
    `buffered`*: TimeRanges
    `readyState`*: uint16
    `seeking`*: bool
    `currentTime`*: float64
    `duration`*: float64
    `paused`*: bool
    `defaultPlaybackRate`*: float64
    `playbackRate`*: float64
    `played`*: TimeRanges
    `seekable`*: TimeRanges
    `ended`*: bool
    `autoplay`*: bool
    `loop`*: bool
    `controls`*: bool
    `volume`*: float64
    `muted`*: bool
    `defaultMuted`*: bool
    `audioTracks`*: AudioTrackList
    `videoTracks`*: VideoTrackList
    `textTracks`*: TextTrackList

  MediaError* = ref MediaErrorObj
  MediaErrorObj {. importc .} = object of RootObj
    `code`*: uint16
    `message`*: cstring

  AudioTrackList* = ref AudioTrackListObj
  AudioTrackListObj {. importc .} = object of EventTargetObj
    `length`*: uint32
    `onchange`*: proc ( event: Event )
    `onaddtrack`*: proc ( event: Event )
    `onremovetrack`*: proc ( event: Event )

  AudioTrack* = ref AudioTrackObj
  AudioTrackObj {. importc .} = object of RootObj
    `id`*: cstring
    `kind`*: cstring
    `label`*: cstring
    `language`*: cstring
    `enabled`*: bool

  VideoTrackList* = ref VideoTrackListObj
  VideoTrackListObj {. importc .} = object of EventTargetObj
    `length`*: uint32
    `selectedIndex`*: int32
    `onchange`*: proc ( event: Event )
    `onaddtrack`*: proc ( event: Event )
    `onremovetrack`*: proc ( event: Event )

  VideoTrack* = ref VideoTrackObj
  VideoTrackObj {. importc .} = object of RootObj
    `id`*: cstring
    `kind`*: cstring
    `label`*: cstring
    `language`*: cstring
    `selected`*: bool

  TextTrackList* = ref TextTrackListObj
  TextTrackListObj {. importc .} = object of EventTargetObj
    `length`*: uint32
    `onchange`*: proc ( event: Event )
    `onaddtrack`*: proc ( event: Event )
    `onremovetrack`*: proc ( event: Event )

  TextTrackMode* = cstring

  TextTrackKind* = cstring

  TextTrack* = ref TextTrackObj
  TextTrackObj {. importc .} = object of EventTargetObj
    `kind`*: TextTrackKind
    `label`*: cstring
    `language`*: cstring
    `id`*: cstring
    `inBandMetadataTrackDispatchType`*: cstring
    `mode`*: TextTrackMode
    `cues`*: TextTrackCueList
    `activeCues`*: TextTrackCueList
    `oncuechange`*: proc ( event: Event )

  TextTrackCueList* = ref TextTrackCueListObj
  TextTrackCueListObj {. importc .} = object of RootObj
    `length`*: uint32

  TextTrackCue* = ref TextTrackCueObj
  TextTrackCueObj {. importc .} = object of EventTargetObj
    `track`*: TextTrack
    `id`*: cstring
    `startTime`*: float64
    `endTime`*: float64
    `pauseOnExit`*: bool
    `onenter`*: proc ( event: Event )
    `onexit`*: proc ( event: Event )

  TimeRanges* = ref TimeRangesObj
  TimeRangesObj {. importc .} = object of RootObj
    `length`*: uint32

  TrackEvent* = ref TrackEventObj
  TrackEventObj {. importc .} = object of EventObj

  TrackEventInit* = ref TrackEventInitObj
  TrackEventInitObj {. importc .} = object of EventInitObj

  HTMLMapElement* = ref HTMLMapElementObj
  HTMLMapElementObj {. importc .} = object of HTMLElementObj
    `name`*: cstring
    `areas`*: HTMLCollection

  HTMLAreaElement* = ref HTMLAreaElementObj
  HTMLAreaElementObj {. importc .} = object of HTMLElementObj
    `alt`*: cstring
    `coords`*: cstring
    `shape`*: cstring
    `target`*: cstring
    `download`*: cstring
    `ping`*: cstring
    `rel`*: cstring
    `relList`*: DOMTokenList
    `referrerPolicy`*: cstring
    `noHref`*: bool
    `origin`*: cstring
    `protocol`*: cstring
    `username`*: cstring
    `password`*: cstring
    `host`*: cstring
    `hostname`*: cstring
    `port`*: cstring
    `pathname`*: cstring
    `search`*: cstring
    `hash`*: cstring

  HTMLTableElement* = ref HTMLTableElementObj
  HTMLTableElementObj {. importc .} = object of HTMLElementObj
    `caption`*: HTMLTableCaptionElement
    `tHead`*: HTMLTableSectionElement
    `tFoot`*: HTMLTableSectionElement
    `tBodies`*: HTMLCollection
    `rows`*: HTMLCollection
    `align`*: cstring
    `border`*: cstring
    `frame`*: cstring
    `rules`*: cstring
    `summary`*: cstring
    `width`*: cstring
    `bgColor`*: cstring
    `cellPadding`*: cstring
    `cellSpacing`*: cstring

  HTMLTableCaptionElement* = ref HTMLTableCaptionElementObj
  HTMLTableCaptionElementObj {. importc .} = object of HTMLElementObj
    `align`*: cstring

  HTMLTableColElement* = ref HTMLTableColElementObj
  HTMLTableColElementObj {. importc .} = object of HTMLElementObj
    `span`*: uint32
    `align`*: cstring
    `ch`*: cstring
    `chOff`*: cstring
    `vAlign`*: cstring
    `width`*: cstring

  HTMLTableSectionElement* = ref HTMLTableSectionElementObj
  HTMLTableSectionElementObj {. importc .} = object of HTMLElementObj
    `rows`*: HTMLCollection
    `align`*: cstring
    `ch`*: cstring
    `chOff`*: cstring
    `vAlign`*: cstring

  HTMLTableRowElement* = ref HTMLTableRowElementObj
  HTMLTableRowElementObj {. importc .} = object of HTMLElementObj
    `rowIndex`*: int32
    `sectionRowIndex`*: int32
    `cells`*: HTMLCollection
    `align`*: cstring
    `ch`*: cstring
    `chOff`*: cstring
    `vAlign`*: cstring
    `bgColor`*: cstring

  HTMLTableCellElement* = ref HTMLTableCellElementObj
  HTMLTableCellElementObj {. importc .} = object of HTMLElementObj
    `colSpan`*: uint32
    `rowSpan`*: uint32
    `headers`*: cstring
    `cellIndex`*: int32
    `scope`*: cstring
    `abbr`*: cstring
    `align`*: cstring
    `axis`*: cstring
    `height`*: cstring
    `width`*: cstring
    `ch`*: cstring
    `chOff`*: cstring
    `noWrap`*: bool
    `vAlign`*: cstring
    `bgColor`*: cstring

  HTMLFormElement* = ref HTMLFormElementObj
  HTMLFormElementObj {. importc .} = object of HTMLElementObj
    `acceptCharset`*: cstring
    `action`*: cstring
    `autocomplete`*: cstring
    `enctype`*: cstring
    `encoding`*: cstring
    `method`*: cstring
    `name`*: cstring
    `noValidate`*: bool
    `target`*: cstring
    `length`*: uint32

  HTMLLabelElement* = ref HTMLLabelElementObj
  HTMLLabelElementObj {. importc .} = object of HTMLElementObj
    `form`*: HTMLFormElement
    `htmlFor`*: cstring
    `control`*: HTMLElement

  HTMLInputElement* = ref HTMLInputElementObj
  HTMLInputElementObj {. importc .} = object of HTMLElementObj
    `accept`*: cstring
    `alt`*: cstring
    `autocomplete`*: cstring
    `autofocus`*: bool
    `defaultChecked`*: bool
    `checked`*: bool
    `dirName`*: cstring
    `disabled`*: bool
    `form`*: HTMLFormElement
    `formAction`*: cstring
    `formEnctype`*: cstring
    `formMethod`*: cstring
    `formNoValidate`*: bool
    `formTarget`*: cstring
    `height`*: uint32
    `indeterminate`*: bool
    `inputMode`*: cstring
    `list`*: HTMLElement
    `max`*: cstring
    `maxLength`*: int32
    `min`*: cstring
    `minLength`*: int32
    `multiple`*: bool
    `name`*: cstring
    `pattern`*: cstring
    `placeholder`*: cstring
    `readOnly`*: bool
    `required`*: bool
    `size`*: uint32
    `src`*: cstring
    `step`*: cstring
    `type`*: cstring
    `defaultValue`*: cstring
    `value`*: cstring
    `valueAsNumber`*: float64
    `width`*: uint32
    `willValidate`*: bool
    `validity`*: ValidityState
    `validationMessage`*: cstring
    `labels`*: NodeList
    `selectionStart`*: uint32
    `selectionEnd`*: uint32
    `selectionDirection`*: cstring
    `align`*: cstring
    `useMap`*: cstring

  HTMLButtonElement* = ref HTMLButtonElementObj
  HTMLButtonElementObj {. importc .} = object of HTMLElementObj
    `autofocus`*: bool
    `disabled`*: bool
    `form`*: HTMLFormElement
    `formAction`*: cstring
    `formEnctype`*: cstring
    `formMethod`*: cstring
    `formNoValidate`*: bool
    `formTarget`*: cstring
    `name`*: cstring
    `type`*: cstring
    `value`*: cstring
    `willValidate`*: bool
    `validity`*: ValidityState
    `validationMessage`*: cstring
    `labels`*: NodeList

  HTMLSelectElement* = ref HTMLSelectElementObj
  HTMLSelectElementObj {. importc .} = object of HTMLElementObj
    `autocomplete`*: cstring
    `autofocus`*: bool
    `disabled`*: bool
    `form`*: HTMLFormElement
    `multiple`*: bool
    `name`*: cstring
    `required`*: bool
    `size`*: uint32
    `type`*: cstring
    `length`*: uint32
    `selectedOptions`*: HTMLCollection
    `selectedIndex`*: int32
    `value`*: cstring
    `willValidate`*: bool
    `validity`*: ValidityState
    `validationMessage`*: cstring
    `labels`*: NodeList

  HTMLDataListElement* = ref HTMLDataListElementObj
  HTMLDataListElementObj {. importc .} = object of HTMLElementObj
    `options`*: HTMLCollection

  HTMLOptGroupElement* = ref HTMLOptGroupElementObj
  HTMLOptGroupElementObj {. importc .} = object of HTMLElementObj
    `disabled`*: bool
    `label`*: cstring

  HTMLOptionElement* = ref HTMLOptionElementObj
  HTMLOptionElementObj {. importc .} = object of HTMLElementObj
    `disabled`*: bool
    `form`*: HTMLFormElement
    `label`*: cstring
    `defaultSelected`*: bool
    `selected`*: bool
    `value`*: cstring
    `text`*: cstring
    `index`*: int32

  HTMLTextAreaElement* = ref HTMLTextAreaElementObj
  HTMLTextAreaElementObj {. importc .} = object of HTMLElementObj
    `autocomplete`*: cstring
    `autofocus`*: bool
    `cols`*: uint32
    `dirName`*: cstring
    `disabled`*: bool
    `form`*: HTMLFormElement
    `inputMode`*: cstring
    `maxLength`*: int32
    `minLength`*: int32
    `name`*: cstring
    `placeholder`*: cstring
    `readOnly`*: bool
    `required`*: bool
    `rows`*: uint32
    `wrap`*: cstring
    `type`*: cstring
    `defaultValue`*: cstring
    `value`*: cstring
    `textLength`*: uint32
    `willValidate`*: bool
    `validity`*: ValidityState
    `validationMessage`*: cstring
    `labels`*: NodeList
    `selectionStart`*: uint32
    `selectionEnd`*: uint32
    `selectionDirection`*: cstring

  HTMLOutputElement* = ref HTMLOutputElementObj
  HTMLOutputElementObj {. importc .} = object of HTMLElementObj
    `htmlFor`*: DOMTokenList
    `form`*: HTMLFormElement
    `name`*: cstring
    `type`*: cstring
    `defaultValue`*: cstring
    `value`*: cstring
    `willValidate`*: bool
    `validity`*: ValidityState
    `validationMessage`*: cstring
    `labels`*: NodeList

  HTMLProgressElement* = ref HTMLProgressElementObj
  HTMLProgressElementObj {. importc .} = object of HTMLElementObj
    `value`*: float64
    `max`*: float64
    `position`*: float64
    `labels`*: NodeList

  HTMLMeterElement* = ref HTMLMeterElementObj
  HTMLMeterElementObj {. importc .} = object of HTMLElementObj
    `value`*: float64
    `min`*: float64
    `max`*: float64
    `low`*: float64
    `high`*: float64
    `optimum`*: float64
    `labels`*: NodeList

  HTMLFieldSetElement* = ref HTMLFieldSetElementObj
  HTMLFieldSetElementObj {. importc .} = object of HTMLElementObj
    `disabled`*: bool
    `form`*: HTMLFormElement
    `name`*: cstring
    `type`*: cstring
    `elements`*: HTMLCollection
    `willValidate`*: bool
    `validity`*: ValidityState
    `validationMessage`*: cstring

  HTMLLegendElement* = ref HTMLLegendElementObj
  HTMLLegendElementObj {. importc .} = object of HTMLElementObj
    `form`*: HTMLFormElement
    `align`*: cstring

  SelectionMode* = cstring

  ValidityState* = ref ValidityStateObj
  ValidityStateObj {. importc .} = object of RootObj
    `valueMissing`*: bool
    `typeMismatch`*: bool
    `patternMismatch`*: bool
    `tooLong`*: bool
    `tooShort`*: bool
    `rangeUnderflow`*: bool
    `rangeOverflow`*: bool
    `stepMismatch`*: bool
    `badInput`*: bool
    `customError`*: bool
    `valid`*: bool

  HTMLDetailsElement* = ref HTMLDetailsElementObj
  HTMLDetailsElementObj {. importc .} = object of HTMLElementObj
    `open`*: bool

  HTMLDialogElement* = ref HTMLDialogElementObj
  HTMLDialogElementObj {. importc .} = object of HTMLElementObj
    `open`*: bool
    `returnValue`*: cstring

  HTMLScriptElement* = ref HTMLScriptElementObj
  HTMLScriptElementObj {. importc .} = object of HTMLElementObj
    `src`*: cstring
    `type`*: cstring
    `noModule`*: bool
    `charset`*: cstring
    `async`*: bool
    `defer`*: bool
    `crossOrigin`*: cstring
    `text`*: cstring
    `nonce`*: cstring
    `integrity`*: cstring
    `event`*: cstring
    `htmlFor`*: cstring

  HTMLTemplateElement* = ref HTMLTemplateElementObj
  HTMLTemplateElementObj {. importc .} = object of HTMLElementObj
    `content`*: DocumentFragment

  HTMLSlotElement* = ref HTMLSlotElementObj
  HTMLSlotElementObj {. importc .} = object of HTMLElementObj
    `name`*: cstring

  AssignedNodesOptions* = ref AssignedNodesOptionsObj
  AssignedNodesOptionsObj {. importc .} = object of RootObj

  HTMLCanvasElement* = ref HTMLCanvasElementObj
  HTMLCanvasElementObj {. importc .} = object of HTMLElementObj
    `width`*: uint32
    `height`*: uint32

  CanvasFillRule* = cstring

  CanvasRenderingContext2DSettings* = ref CanvasRenderingContext2DSettingsObj
  CanvasRenderingContext2DSettingsObj {. importc .} = object of RootObj

  ImageSmoothingQuality* = cstring

  CanvasRenderingContext2D* = ref CanvasRenderingContext2DObj
  CanvasRenderingContext2DObj {. importc .} = object of RootObj
    `canvas`*: HTMLCanvasElement
    `globalAlpha`*: float64
    `globalCompositeOperation`*: cstring
    `imageSmoothingEnabled`*: bool
    `imageSmoothingQuality`*: ImageSmoothingQuality
    `shadowOffsetX`*: float64
    `shadowOffsetY`*: float64
    `shadowBlur`*: float64
    `shadowColor`*: cstring
    `filter`*: cstring
    `lineWidth`*: float64
    `lineCap`*: CanvasLineCap
    `lineJoin`*: CanvasLineJoin
    `miterLimit`*: float64
    `lineDashOffset`*: float64
    `font`*: cstring
    `textAlign`*: CanvasTextAlign
    `textBaseline`*: CanvasTextBaseline
    `direction`*: CanvasDirection

  CanvasState* = ref CanvasStateObj
  CanvasStateObj {. importc .} = object of RootObj

  CanvasTransform* = ref CanvasTransformObj
  CanvasTransformObj {. importc .} = object of RootObj

  CanvasCompositing* = ref CanvasCompositingObj
  CanvasCompositingObj {. importc .} = object of RootObj
    `globalAlpha`*: float64
    `globalCompositeOperation`*: cstring

  CanvasImageSmoothing* = ref CanvasImageSmoothingObj
  CanvasImageSmoothingObj {. importc .} = object of RootObj
    `imageSmoothingEnabled`*: bool
    `imageSmoothingQuality`*: ImageSmoothingQuality

  CanvasFillStrokeStyles* = ref CanvasFillStrokeStylesObj
  CanvasFillStrokeStylesObj {. importc .} = object of RootObj

  CanvasShadowStyles* = ref CanvasShadowStylesObj
  CanvasShadowStylesObj {. importc .} = object of RootObj
    `shadowOffsetX`*: float64
    `shadowOffsetY`*: float64
    `shadowBlur`*: float64
    `shadowColor`*: cstring

  CanvasFilters* = ref CanvasFiltersObj
  CanvasFiltersObj {. importc .} = object of RootObj
    `filter`*: cstring

  CanvasRect* = ref CanvasRectObj
  CanvasRectObj {. importc .} = object of RootObj

  CanvasDrawPath* = ref CanvasDrawPathObj
  CanvasDrawPathObj {. importc .} = object of RootObj

  CanvasUserInterface* = ref CanvasUserInterfaceObj
  CanvasUserInterfaceObj {. importc .} = object of RootObj

  CanvasText* = ref CanvasTextObj
  CanvasTextObj {. importc .} = object of RootObj

  CanvasDrawImage* = ref CanvasDrawImageObj
  CanvasDrawImageObj {. importc .} = object of RootObj

  CanvasImageData* = ref CanvasImageDataObj
  CanvasImageDataObj {. importc .} = object of RootObj

  CanvasLineCap* = cstring

  CanvasLineJoin* = cstring

  CanvasTextAlign* = cstring

  CanvasTextBaseline* = cstring

  CanvasDirection* = cstring

  CanvasPathDrawingStyles* = ref CanvasPathDrawingStylesObj
  CanvasPathDrawingStylesObj {. importc .} = object of RootObj
    `lineWidth`*: float64
    `lineCap`*: CanvasLineCap
    `lineJoin`*: CanvasLineJoin
    `miterLimit`*: float64
    `lineDashOffset`*: float64

  CanvasTextDrawingStyles* = ref CanvasTextDrawingStylesObj
  CanvasTextDrawingStylesObj {. importc .} = object of RootObj
    `font`*: cstring
    `textAlign`*: CanvasTextAlign
    `textBaseline`*: CanvasTextBaseline
    `direction`*: CanvasDirection

  CanvasPath* = ref CanvasPathObj
  CanvasPathObj {. importc .} = object of RootObj

  CanvasGradient* = ref CanvasGradientObj
  CanvasGradientObj {. importc .} = object of RootObj

  CanvasPattern* = ref CanvasPatternObj
  CanvasPatternObj {. importc .} = object of RootObj

  TextMetrics* = ref TextMetricsObj
  TextMetricsObj {. importc .} = object of RootObj
    `width`*: float64
    `actualBoundingBoxLeft`*: float64
    `actualBoundingBoxRight`*: float64
    `fontBoundingBoxAscent`*: float64
    `fontBoundingBoxDescent`*: float64
    `actualBoundingBoxAscent`*: float64
    `actualBoundingBoxDescent`*: float64
    `emHeightAscent`*: float64
    `emHeightDescent`*: float64
    `hangingBaseline`*: float64
    `alphabeticBaseline`*: float64
    `ideographicBaseline`*: float64

  ImageData* = ref ImageDataObj
  ImageDataObj {. importc .} = object of RootObj
    `width`*: uint32
    `height`*: uint32

  Path2D* = ref Path2DObj
  Path2DObj {. importc .} = object of RootObj

  ImageBitmapRenderingContext* = ref ImageBitmapRenderingContextObj
  ImageBitmapRenderingContextObj {. importc .} = object of RootObj
    `canvas`*: HTMLCanvasElement

  ImageBitmapRenderingContextSettings* = ref ImageBitmapRenderingContextSettingsObj
  ImageBitmapRenderingContextSettingsObj {. importc .} = object of RootObj

  ImageEncodeOptions* = ref ImageEncodeOptionsObj
  ImageEncodeOptionsObj {. importc .} = object of RootObj

  OffscreenRenderingContextType* = cstring

  OffscreenCanvas* = ref OffscreenCanvasObj
  OffscreenCanvasObj {. importc .} = object of EventTargetObj
    `width`*: uint64
    `height`*: uint64

  OffscreenCanvasRenderingContext2D* = ref OffscreenCanvasRenderingContext2DObj
  OffscreenCanvasRenderingContext2DObj {. importc .} = object of RootObj
    `canvas`*: OffscreenCanvas
    `globalAlpha`*: float64
    `globalCompositeOperation`*: cstring
    `imageSmoothingEnabled`*: bool
    `imageSmoothingQuality`*: ImageSmoothingQuality
    `shadowOffsetX`*: float64
    `shadowOffsetY`*: float64
    `shadowBlur`*: float64
    `shadowColor`*: cstring
    `filter`*: cstring
    `lineWidth`*: float64
    `lineCap`*: CanvasLineCap
    `lineJoin`*: CanvasLineJoin
    `miterLimit`*: float64
    `lineDashOffset`*: float64

  CustomElementRegistry* = ref CustomElementRegistryObj
  CustomElementRegistryObj {. importc .} = object of RootObj

  ElementDefinitionOptions* = ref ElementDefinitionOptionsObj
  ElementDefinitionOptionsObj {. importc .} = object of RootObj
    `extends`*: cstring

  ElementContentEditable* = ref ElementContentEditableObj
  ElementContentEditableObj {. importc .} = object of RootObj
    `contentEditable`*: cstring
    `isContentEditable`*: bool

  DataTransfer* = ref DataTransferObj
  DataTransferObj {. importc .} = object of RootObj
    `dropEffect`*: cstring
    `effectAllowed`*: cstring
    `items`*: DataTransferItemList

  DataTransferItemList* = ref DataTransferItemListObj
  DataTransferItemListObj {. importc .} = object of RootObj
    `length`*: uint32

  DataTransferItem* = ref DataTransferItemObj
  DataTransferItemObj {. importc .} = object of RootObj
    `kind`*: cstring
    `type`*: cstring

  BarProp* = ref BarPropObj
  BarPropObj {. importc .} = object of RootObj
    `visible`*: bool

  ScrollRestoration* = cstring

  History* = ref HistoryObj
  HistoryObj {. importc .} = object of RootObj
    `length`*: uint32
    `scrollRestoration`*: ScrollRestoration

  Location* = ref LocationObj
  LocationObj {. importc .} = object of RootObj
    `origin`*: cstring
    `protocol`*: cstring
    `host`*: cstring
    `hostname`*: cstring
    `port`*: cstring
    `pathname`*: cstring
    `search`*: cstring
    `hash`*: cstring
    `ancestorOrigins`*: DOMStringList

  PopStateEvent* = ref PopStateEventObj
  PopStateEventObj {. importc .} = object of EventObj

  PopStateEventInit* = ref PopStateEventInitObj
  PopStateEventInitObj {. importc .} = object of EventInitObj

  HashChangeEvent* = ref HashChangeEventObj
  HashChangeEventObj {. importc .} = object of EventObj
    `oldURL`*: cstring
    `newURL`*: cstring

  HashChangeEventInit* = ref HashChangeEventInitObj
  HashChangeEventInitObj {. importc .} = object of EventInitObj

  PageTransitionEvent* = ref PageTransitionEventObj
  PageTransitionEventObj {. importc .} = object of EventObj
    `persisted`*: bool

  PageTransitionEventInit* = ref PageTransitionEventInitObj
  PageTransitionEventInitObj {. importc .} = object of EventInitObj

  BeforeUnloadEvent* = ref BeforeUnloadEventObj
  BeforeUnloadEventObj {. importc .} = object of EventObj
    `returnValue`*: cstring

  ApplicationCache* = ref ApplicationCacheObj
  ApplicationCacheObj {. importc .} = object of EventTargetObj
    `status`*: uint16
    `onchecking`*: proc ( event: Event )
    `onerror`*: proc ( event: Event )
    `onnoupdate`*: proc ( event: Event )
    `ondownloading`*: proc ( event: Event )
    `onprogress`*: proc ( event: Event )
    `onupdateready`*: proc ( event: Event )
    `oncached`*: proc ( event: Event )
    `onobsolete`*: proc ( event: Event )

  NavigatorOnLine* = ref NavigatorOnLineObj
  NavigatorOnLineObj {. importc .} = object of RootObj
    `onLine`*: bool

  ErrorEvent* = ref ErrorEventObj
  ErrorEventObj {. importc .} = object of EventObj
    `message`*: cstring
    `filename`*: cstring
    `lineno`*: uint32
    `colno`*: uint32

  ErrorEventInit* = ref ErrorEventInitObj
  ErrorEventInitObj {. importc .} = object of EventInitObj

  PromiseRejectionEvent* = ref PromiseRejectionEventObj
  PromiseRejectionEventObj {. importc .} = object of EventObj

  PromiseRejectionEventInit* = ref PromiseRejectionEventInitObj
  PromiseRejectionEventInitObj {. importc .} = object of EventInitObj

  WindowEventHandlers* = ref WindowEventHandlersObj
  WindowEventHandlersObj {. importc .} = object of RootObj
    `onafterprint`*: proc ( event: Event )
    `onbeforeprint`*: proc ( event: Event )
    `onhashchange`*: proc ( event: Event )
    `onlanguagechange`*: proc ( event: Event )
    `onmessage`*: proc ( event: Event )
    `onmessageerror`*: proc ( event: Event )
    `onoffline`*: proc ( event: Event )
    `ononline`*: proc ( event: Event )
    `onpagehide`*: proc ( event: Event )
    `onpageshow`*: proc ( event: Event )
    `onpopstate`*: proc ( event: Event )
    `onrejectionhandled`*: proc ( event: Event )
    `onstorage`*: proc ( event: Event )
    `onunhandledrejection`*: proc ( event: Event )
    `onunload`*: proc ( event: Event )

  DocumentAndElementEventHandlers* = ref DocumentAndElementEventHandlersObj
  DocumentAndElementEventHandlersObj {. importc .} = object of RootObj
    `oncopy`*: proc ( event: Event )
    `oncut`*: proc ( event: Event )
    `onpaste`*: proc ( event: Event )

  WindowOrWorkerGlobalScope* = ref WindowOrWorkerGlobalScopeObj
  WindowOrWorkerGlobalScopeObj {. importc .} = object of RootObj
    `origin`*: cstring

  Navigator* = ref NavigatorObj
  NavigatorObj {. importc .} = object of RootObj
    `appCodeName`*: cstring
    `appName`*: cstring
    `appVersion`*: cstring
    `platform`*: cstring
    `product`*: cstring
    `productSub`*: cstring
    `userAgent`*: cstring
    `vendor`*: cstring
    `vendorSub`*: cstring
    `oscpu`*: cstring
    `language`*: cstring
    `onLine`*: bool
    `cookieEnabled`*: bool
    `plugins`*: PluginArray
    `mimeTypes`*: MimeTypeArray
    `hardwareConcurrency`*: uint64

  NavigatorID* = ref NavigatorIDObj
  NavigatorIDObj {. importc .} = object of RootObj
    `appCodeName`*: cstring
    `appName`*: cstring
    `appVersion`*: cstring
    `platform`*: cstring
    `product`*: cstring
    `productSub`*: cstring
    `userAgent`*: cstring
    `vendor`*: cstring
    `vendorSub`*: cstring
    `oscpu`*: cstring

  NavigatorLanguage* = ref NavigatorLanguageObj
  NavigatorLanguageObj {. importc .} = object of RootObj
    `language`*: cstring

  NavigatorContentUtils* = ref NavigatorContentUtilsObj
  NavigatorContentUtilsObj {. importc .} = object of RootObj

  NavigatorCookies* = ref NavigatorCookiesObj
  NavigatorCookiesObj {. importc .} = object of RootObj
    `cookieEnabled`*: bool

  NavigatorPlugins* = ref NavigatorPluginsObj
  NavigatorPluginsObj {. importc .} = object of RootObj
    `plugins`*: PluginArray
    `mimeTypes`*: MimeTypeArray

  PluginArray* = ref PluginArrayObj
  PluginArrayObj {. importc .} = object of RootObj
    `length`*: uint32

  MimeTypeArray* = ref MimeTypeArrayObj
  MimeTypeArrayObj {. importc .} = object of RootObj
    `length`*: uint32

  Plugin* = ref PluginObj
  PluginObj {. importc .} = object of RootObj
    `name`*: cstring
    `description`*: cstring
    `filename`*: cstring
    `length`*: uint32

  MimeType* = ref MimeTypeObj
  MimeTypeObj {. importc .} = object of RootObj
    `type`*: cstring
    `description`*: cstring
    `suffixes`*: cstring
    `enabledPlugin`*: Plugin

  ImageBitmap* = ref ImageBitmapObj
  ImageBitmapObj {. importc .} = object of RootObj
    `width`*: uint32
    `height`*: uint32

  ImageOrientation* = cstring

  PremultiplyAlpha* = cstring

  ColorSpaceConversion* = cstring

  ResizeQuality* = cstring

  ImageBitmapOptions* = ref ImageBitmapOptionsObj
  ImageBitmapOptionsObj {. importc .} = object of RootObj
    `resizeWidth`*: uint32
    `resizeHeight`*: uint32

  MessageEvent* = ref MessageEventObj
  MessageEventObj {. importc .} = object of EventObj
    `origin`*: cstring
    `lastEventId`*: cstring

  MessageEventInit* = ref MessageEventInitObj
  MessageEventInitObj {. importc .} = object of EventInitObj

  EventSource* = ref EventSourceObj
  EventSourceObj {. importc .} = object of EventTargetObj
    `url`*: cstring
    `withCredentials`*: bool
    `readyState`*: uint16
    `onopen`*: proc ( event: Event )
    `onmessage`*: proc ( event: Event )
    `onerror`*: proc ( event: Event )

  EventSourceInit* = ref EventSourceInitObj
  EventSourceInitObj {. importc .} = object of RootObj

  BinaryType* = cstring

  WebSocket* = ref WebSocketObj
  WebSocketObj {. importc .} = object of EventTargetObj
    `url`*: cstring
    `readyState`*: uint16
    `bufferedAmount`*: uint64
    `onopen`*: proc ( event: Event )
    `onerror`*: proc ( event: Event )
    `onclose`*: proc ( event: Event )
    `extensions`*: cstring
    `protocol`*: cstring
    `onmessage`*: proc ( event: Event )
    `binaryType`*: BinaryType

  CloseEvent* = ref CloseEventObj
  CloseEventObj {. importc .} = object of EventObj
    `wasClean`*: bool
    `code`*: uint16
    `reason`*: cstring

  CloseEventInit* = ref CloseEventInitObj
  CloseEventInitObj {. importc .} = object of EventInitObj

  MessageChannel* = ref MessageChannelObj
  MessageChannelObj {. importc .} = object of RootObj
    `port1`*: MessagePort
    `port2`*: MessagePort

  MessagePort* = ref MessagePortObj
  MessagePortObj {. importc .} = object of EventTargetObj
    `onmessage`*: proc ( event: Event )
    `onmessageerror`*: proc ( event: Event )

  BroadcastChannel* = ref BroadcastChannelObj
  BroadcastChannelObj {. importc .} = object of EventTargetObj
    `name`*: cstring
    `onmessage`*: proc ( event: Event )
    `onmessageerror`*: proc ( event: Event )

  WorkerGlobalScope* = ref WorkerGlobalScopeObj
  WorkerGlobalScopeObj {. importc .} = object of EventTargetObj
    `self`*: WorkerGlobalScope
    `location`*: WorkerLocation
    `navigator`*: WorkerNavigator
    `onlanguagechange`*: proc ( event: Event )
    `onoffline`*: proc ( event: Event )
    `ononline`*: proc ( event: Event )
    `onrejectionhandled`*: proc ( event: Event )
    `onunhandledrejection`*: proc ( event: Event )
    `origin`*: cstring

  DedicatedWorkerGlobalScope* = ref DedicatedWorkerGlobalScopeObj
  DedicatedWorkerGlobalScopeObj {. importc .} = object of WorkerGlobalScopeObj
    `name`*: cstring
    `onmessage`*: proc ( event: Event )
    `onmessageerror`*: proc ( event: Event )

  SharedWorkerGlobalScope* = ref SharedWorkerGlobalScopeObj
  SharedWorkerGlobalScopeObj {. importc .} = object of WorkerGlobalScopeObj
    `name`*: cstring
    `onconnect`*: proc ( event: Event )

  AbstractWorker* = ref AbstractWorkerObj
  AbstractWorkerObj {. importc .} = object of RootObj
    `onerror`*: proc ( event: Event )

  Worker* = ref WorkerObj
  WorkerObj {. importc .} = object of EventTargetObj
    `onmessage`*: proc ( event: Event )
    `onmessageerror`*: proc ( event: Event )
    `onerror`*: proc ( event: Event )

  WorkerOptions* = ref WorkerOptionsObj
  WorkerOptionsObj {. importc .} = object of RootObj

  WorkerType* = cstring

  SharedWorker* = ref SharedWorkerObj
  SharedWorkerObj {. importc .} = object of EventTargetObj
    `port`*: MessagePort
    `onerror`*: proc ( event: Event )

  NavigatorConcurrentHardware* = ref NavigatorConcurrentHardwareObj
  NavigatorConcurrentHardwareObj {. importc .} = object of RootObj
    `hardwareConcurrency`*: uint64

  WorkerNavigator* = ref WorkerNavigatorObj
  WorkerNavigatorObj {. importc .} = object of RootObj
    `appCodeName`*: cstring
    `appName`*: cstring
    `appVersion`*: cstring
    `platform`*: cstring
    `product`*: cstring
    `productSub`*: cstring
    `userAgent`*: cstring
    `vendor`*: cstring
    `vendorSub`*: cstring
    `oscpu`*: cstring
    `language`*: cstring
    `onLine`*: bool
    `hardwareConcurrency`*: uint64

  WorkerLocation* = ref WorkerLocationObj
  WorkerLocationObj {. importc .} = object of RootObj
    `origin`*: cstring
    `protocol`*: cstring
    `host`*: cstring
    `hostname`*: cstring
    `port`*: cstring
    `pathname`*: cstring
    `search`*: cstring
    `hash`*: cstring

  Storage* = ref StorageObj
  StorageObj {. importc .} = object of RootObj
    `length`*: uint32

  WindowSessionStorage* = ref WindowSessionStorageObj
  WindowSessionStorageObj {. importc .} = object of RootObj
    `sessionStorage`*: Storage

  WindowLocalStorage* = ref WindowLocalStorageObj
  WindowLocalStorageObj {. importc .} = object of RootObj
    `localStorage`*: Storage

  StorageEvent* = ref StorageEventObj
  StorageEventObj {. importc .} = object of EventObj
    `key`*: cstring
    `oldValue`*: cstring
    `newValue`*: cstring
    `url`*: cstring
    `storageArea`*: Storage

  StorageEventInit* = ref StorageEventInitObj
  StorageEventInitObj {. importc .} = object of EventInitObj

  HTMLAppletElement* = ref HTMLAppletElementObj
  HTMLAppletElementObj {. importc .} = object of HTMLElementObj
    `align`*: cstring
    `alt`*: cstring
    `archive`*: cstring
    `code`*: cstring
    `codeBase`*: cstring
    `height`*: cstring
    `hspace`*: uint32
    `name`*: cstring
    `object`*: cstring
    `vspace`*: uint32
    `width`*: cstring

  HTMLMarqueeElement* = ref HTMLMarqueeElementObj
  HTMLMarqueeElementObj {. importc .} = object of HTMLElementObj
    `behavior`*: cstring
    `bgColor`*: cstring
    `direction`*: cstring
    `height`*: cstring
    `hspace`*: uint32
    `loop`*: int32
    `scrollAmount`*: uint32
    `scrollDelay`*: uint32
    `trueSpeed`*: bool
    `vspace`*: uint32
    `width`*: cstring
    `onbounce`*: proc ( event: Event )
    `onfinish`*: proc ( event: Event )
    `onstart`*: proc ( event: Event )

  HTMLFrameSetElement* = ref HTMLFrameSetElementObj
  HTMLFrameSetElementObj {. importc .} = object of HTMLElementObj
    `cols`*: cstring
    `rows`*: cstring
    `onafterprint`*: proc ( event: Event )
    `onbeforeprint`*: proc ( event: Event )
    `onhashchange`*: proc ( event: Event )
    `onlanguagechange`*: proc ( event: Event )
    `onmessage`*: proc ( event: Event )
    `onmessageerror`*: proc ( event: Event )
    `onoffline`*: proc ( event: Event )
    `ononline`*: proc ( event: Event )
    `onpagehide`*: proc ( event: Event )
    `onpageshow`*: proc ( event: Event )
    `onpopstate`*: proc ( event: Event )
    `onrejectionhandled`*: proc ( event: Event )
    `onstorage`*: proc ( event: Event )
    `onunhandledrejection`*: proc ( event: Event )
    `onunload`*: proc ( event: Event )

  HTMLFrameElement* = ref HTMLFrameElementObj
  HTMLFrameElementObj {. importc .} = object of HTMLElementObj
    `name`*: cstring
    `scrolling`*: cstring
    `src`*: cstring
    `frameBorder`*: cstring
    `longDesc`*: cstring
    `noResize`*: bool
    `contentDocument`*: Document
    `contentWindow`*: Window
    `marginHeight`*: cstring
    `marginWidth`*: cstring

  HTMLDirectoryElement* = ref HTMLDirectoryElementObj
  HTMLDirectoryElementObj {. importc .} = object of HTMLElementObj
    `compact`*: bool

  HTMLFontElement* = ref HTMLFontElementObj
  HTMLFontElementObj {. importc .} = object of HTMLElementObj
    `color`*: cstring
    `face`*: cstring
    `size`*: cstring

  External* = ref ExternalObj
  ExternalObj {. importc .} = object of RootObj

{. push importcpp .}

proc `stopPropagation`*( self: Event ): void

proc `stopImmediatePropagation`*( self: Event ): void

proc `preventDefault`*( self: Event ): void

proc `initEvent`*( self: Event, `type`: cstring ): void
proc `initEvent`*( self: Event, `type`: cstring, `bubbles`: bool ): void
proc `initEvent`*( self: Event, `type`: cstring, `bubbles`: bool, `cancelable`: bool ): void

proc `dispatchEvent`*( self: EventTarget, `event`: Event ): bool

proc `handleEvent`*( self: EventListener, `event`: Event ): void

proc `abort`*( self: AbortController ): void

proc `getElementById`*( self: NonElementParentNode, `elementId`: cstring ): Element

proc `prepend`*( self: ParentNode ): void

proc `append`*( self: ParentNode ): void

proc `querySelector`*( self: ParentNode, `selectors`: cstring ): Element

proc `querySelectorAll`*( self: ParentNode, `selectors`: cstring ): NodeList

proc `before`*( self: ChildNode ): void

proc `after`*( self: ChildNode ): void

proc `replaceWith`*( self: ChildNode ): void

proc `remove`*( self: ChildNode ): void

proc `observe`*( self: MutationObserver, `target`: Node ): void
proc `observe`*( self: MutationObserver, `target`: Node, `options`: MutationObserverInit ): void

proc `disconnect`*( self: MutationObserver ): void

proc `getRootNode`*( self: Node ): Node
proc `getRootNode`*( self: Node, `options`: GetRootNodeOptions ): Node

proc `hasChildNodes`*( self: Node ): bool

proc `normalize`*( self: Node ): void

proc `cloneNode`*( self: Node ): Node
proc `cloneNode`*( self: Node, `deep`: bool ): Node

proc `isEqualNode`*( self: Node, `otherNode`: Node ): bool

proc `isSameNode`*( self: Node, `otherNode`: Node ): bool

proc `compareDocumentPosition`*( self: Node, `other`: Node ): uint16

proc `contains`*( self: Node, `other`: Node ): bool

proc `lookupPrefix`*( self: Node, `namespace`: cstring ): cstring

proc `lookupNamespaceURI`*( self: Node, `prefix`: cstring ): cstring

proc `isDefaultNamespace`*( self: Node, `namespace`: cstring ): bool

proc `insertBefore`*( self: Node, `node`: Node, `child`: Node ): Node

proc `appendChild`*( self: Node, `node`: Node ): Node

proc `replaceChild`*( self: Node, `node`: Node, `child`: Node ): Node

proc `removeChild`*( self: Node, `child`: Node ): Node

proc `getElementsByTagName`*( self: Document, `qualifiedName`: cstring ): HTMLCollection

proc `getElementsByTagNameNS`*( self: Document, `namespace`: cstring, `localName`: cstring ): HTMLCollection

proc `getElementsByClassName`*( self: Document, `classNames`: cstring ): HTMLCollection

proc `createElement`*( self: Document, `localName`: cstring ): Element
proc `createElement`*( self: Document, `localName`: cstring, `options`: ElementCreationOptions ): Element

proc `createElementNS`*( self: Document, `namespace`: cstring, `qualifiedName`: cstring ): Element
proc `createElementNS`*( self: Document, `namespace`: cstring, `qualifiedName`: cstring, `options`: ElementCreationOptions ): Element

proc `createDocumentFragment`*( self: Document ): DocumentFragment

proc `createTextNode`*( self: Document, `data`: cstring ): Text

proc `createCDATASection`*( self: Document, `data`: cstring ): CDATASection

proc `createComment`*( self: Document, `data`: cstring ): Comment

proc `createProcessingInstruction`*( self: Document, `target`: cstring, `data`: cstring ): ProcessingInstruction

proc `importNode`*( self: Document, `node`: Node ): Node
proc `importNode`*( self: Document, `node`: Node, `deep`: bool ): Node

proc `adoptNode`*( self: Document, `node`: Node ): Node

proc `createAttribute`*( self: Document, `localName`: cstring ): Attr

proc `createAttributeNS`*( self: Document, `namespace`: cstring, `qualifiedName`: cstring ): Attr

proc `createEvent`*( self: Document, `interface`: cstring ): Event

proc `createRange`*( self: Document ): Range

proc `createNodeIterator`*( self: Document, `root`: Node ): NodeIterator
proc `createNodeIterator`*( self: Document, `root`: Node, `whatToShow`: uint32 ): NodeIterator
proc `createNodeIterator`*( self: Document, `root`: Node, `whatToShow`: uint32, `filter`: NodeFilter ): NodeIterator

proc `createTreeWalker`*( self: Document, `root`: Node ): TreeWalker
proc `createTreeWalker`*( self: Document, `root`: Node, `whatToShow`: uint32 ): TreeWalker
proc `createTreeWalker`*( self: Document, `root`: Node, `whatToShow`: uint32, `filter`: NodeFilter ): TreeWalker

proc `getSelection`*( self: Document ): Selection

proc `getElementsByName`*( self: Document, `elementName`: cstring ): NodeList

proc `open`*( self: Document ): Document
proc `open`*( self: Document, `type`: cstring ): Document
proc `open`*( self: Document, `type`: cstring, `replace`: cstring ): Document

proc `open`*( self: Document, `url`: cstring, `name`: cstring, `features`: cstring ): Window

proc `close`*( self: Document ): void

proc `write`*( self: Document ): void

proc `writeln`*( self: Document ): void

proc `hasFocus`*( self: Document ): bool

proc `execCommand`*( self: Document, `commandId`: cstring ): bool
proc `execCommand`*( self: Document, `commandId`: cstring, `showUI`: bool ): bool
proc `execCommand`*( self: Document, `commandId`: cstring, `showUI`: bool, `value`: cstring ): bool

proc `queryCommandEnabled`*( self: Document, `commandId`: cstring ): bool

proc `queryCommandIndeterm`*( self: Document, `commandId`: cstring ): bool

proc `queryCommandState`*( self: Document, `commandId`: cstring ): bool

proc `queryCommandSupported`*( self: Document, `commandId`: cstring ): bool

proc `queryCommandValue`*( self: Document, `commandId`: cstring ): cstring

proc `clear`*( self: Document ): void

proc `captureEvents`*( self: Document ): void

proc `releaseEvents`*( self: Document ): void

proc `getElementById`*( self: Document, `elementId`: cstring ): Element

proc `prepend`*( self: Document ): void

proc `append`*( self: Document ): void

proc `querySelector`*( self: Document, `selectors`: cstring ): Element

proc `querySelectorAll`*( self: Document, `selectors`: cstring ): NodeList

proc `createDocumentType`*( self: DOMImplementation, `qualifiedName`: cstring, `publicId`: cstring, `systemId`: cstring ): DocumentType

proc `createDocument`*( self: DOMImplementation, `namespace`: cstring, `qualifiedName`: cstring ): XMLDocument
proc `createDocument`*( self: DOMImplementation, `namespace`: cstring, `qualifiedName`: cstring, `doctype`: DocumentType ): XMLDocument

proc `createHTMLDocument`*( self: DOMImplementation ): Document
proc `createHTMLDocument`*( self: DOMImplementation, `title`: cstring ): Document

proc `hasFeature`*( self: DOMImplementation ): bool

proc `before`*( self: DocumentType ): void

proc `after`*( self: DocumentType ): void

proc `replaceWith`*( self: DocumentType ): void

proc `remove`*( self: DocumentType ): void

proc `getElementById`*( self: DocumentFragment, `elementId`: cstring ): Element

proc `prepend`*( self: DocumentFragment ): void

proc `append`*( self: DocumentFragment ): void

proc `querySelector`*( self: DocumentFragment, `selectors`: cstring ): Element

proc `querySelectorAll`*( self: DocumentFragment, `selectors`: cstring ): NodeList

proc `hasAttributes`*( self: Element ): bool

proc `getAttribute`*( self: Element, `qualifiedName`: cstring ): cstring

proc `getAttributeNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): cstring

proc `setAttribute`*( self: Element, `qualifiedName`: cstring, `value`: cstring ): void

proc `setAttributeNS`*( self: Element, `namespace`: cstring, `qualifiedName`: cstring, `value`: cstring ): void

proc `removeAttribute`*( self: Element, `qualifiedName`: cstring ): void

proc `removeAttributeNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): void

proc `hasAttribute`*( self: Element, `qualifiedName`: cstring ): bool

proc `hasAttributeNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): bool

proc `getAttributeNode`*( self: Element, `qualifiedName`: cstring ): Attr

proc `getAttributeNodeNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): Attr

proc `setAttributeNode`*( self: Element, `attr`: Attr ): Attr

proc `setAttributeNodeNS`*( self: Element, `attr`: Attr ): Attr

proc `removeAttributeNode`*( self: Element, `attr`: Attr ): Attr

proc `closest`*( self: Element, `selectors`: cstring ): Element

proc `matches`*( self: Element, `selectors`: cstring ): bool

proc `webkitMatchesSelector`*( self: Element, `selectors`: cstring ): bool

proc `getElementsByTagName`*( self: Element, `qualifiedName`: cstring ): HTMLCollection

proc `getElementsByTagNameNS`*( self: Element, `namespace`: cstring, `localName`: cstring ): HTMLCollection

proc `getElementsByClassName`*( self: Element, `classNames`: cstring ): HTMLCollection

proc `insertAdjacentElement`*( self: Element, `where`: cstring, `element`: Element ): Element

proc `insertAdjacentText`*( self: Element, `where`: cstring, `data`: cstring ): void

proc `prepend`*( self: Element ): void

proc `append`*( self: Element ): void

proc `querySelector`*( self: Element, `selectors`: cstring ): Element

proc `querySelectorAll`*( self: Element, `selectors`: cstring ): NodeList

proc `before`*( self: Element ): void

proc `after`*( self: Element ): void

proc `replaceWith`*( self: Element ): void

proc `remove`*( self: Element ): void

proc `getNamedItemNS`*( self: NamedNodeMap, `namespace`: cstring, `localName`: cstring ): Attr

proc `setNamedItem`*( self: NamedNodeMap, `attr`: Attr ): Attr

proc `setNamedItemNS`*( self: NamedNodeMap, `attr`: Attr ): Attr

proc `removeNamedItem`*( self: NamedNodeMap, `qualifiedName`: cstring ): Attr

proc `removeNamedItemNS`*( self: NamedNodeMap, `namespace`: cstring, `localName`: cstring ): Attr

proc `substringData`*( self: CharacterData, `offset`: uint32, `count`: uint32 ): cstring

proc `appendData`*( self: CharacterData, `data`: cstring ): void

proc `insertData`*( self: CharacterData, `offset`: uint32, `data`: cstring ): void

proc `deleteData`*( self: CharacterData, `offset`: uint32, `count`: uint32 ): void

proc `replaceData`*( self: CharacterData, `offset`: uint32, `count`: uint32, `data`: cstring ): void

proc `before`*( self: CharacterData ): void

proc `after`*( self: CharacterData ): void

proc `replaceWith`*( self: CharacterData ): void

proc `remove`*( self: CharacterData ): void

proc `splitText`*( self: Text, `offset`: uint32 ): Text

proc `setStart`*( self: Range, `node`: Node, `offset`: uint32 ): void

proc `setEnd`*( self: Range, `node`: Node, `offset`: uint32 ): void

proc `setStartBefore`*( self: Range, `node`: Node ): void

proc `setStartAfter`*( self: Range, `node`: Node ): void

proc `setEndBefore`*( self: Range, `node`: Node ): void

proc `setEndAfter`*( self: Range, `node`: Node ): void

proc `collapse`*( self: Range ): void
proc `collapse`*( self: Range, `toStart`: bool ): void

proc `selectNode`*( self: Range, `node`: Node ): void

proc `selectNodeContents`*( self: Range, `node`: Node ): void

proc `compareBoundaryPoints`*( self: Range, `how`: uint16, `sourceRange`: Range ): int16

proc `deleteContents`*( self: Range ): void

proc `extractContents`*( self: Range ): DocumentFragment

proc `cloneContents`*( self: Range ): DocumentFragment

proc `insertNode`*( self: Range, `node`: Node ): void

proc `surroundContents`*( self: Range, `newParent`: Node ): void

proc `cloneRange`*( self: Range ): Range

proc `detach`*( self: Range ): void

proc `isPointInRange`*( self: Range, `node`: Node, `offset`: uint32 ): bool

proc `comparePoint`*( self: Range, `node`: Node, `offset`: uint32 ): int16

proc `intersectsNode`*( self: Range, `node`: Node ): bool

proc `nextNode`*( self: NodeIterator ): Node

proc `previousNode`*( self: NodeIterator ): Node

proc `detach`*( self: NodeIterator ): void

proc `parentNode`*( self: TreeWalker ): Node

proc `firstChild`*( self: TreeWalker ): Node

proc `lastChild`*( self: TreeWalker ): Node

proc `previousSibling`*( self: TreeWalker ): Node

proc `nextSibling`*( self: TreeWalker ): Node

proc `previousNode`*( self: TreeWalker ): Node

proc `nextNode`*( self: TreeWalker ): Node

proc `acceptNode`*( self: NodeFilter, `node`: Node ): uint16

proc `contains`*( self: DOMTokenList, `token`: cstring ): bool

proc `add`*( self: DOMTokenList ): void

proc `remove`*( self: DOMTokenList ): void

proc `toggle`*( self: DOMTokenList, `token`: cstring ): bool
proc `toggle`*( self: DOMTokenList, `token`: cstring, `force`: bool ): bool

proc `replace`*( self: DOMTokenList, `token`: cstring, `newToken`: cstring ): void

proc `supports`*( self: DOMTokenList, `token`: cstring ): bool

proc `getRangeAt`*( self: Selection, `index`: uint32 ): Range

proc `addRange`*( self: Selection, `range`: Range ): void

proc `removeRange`*( self: Selection, `range`: Range ): void

proc `removeAllRanges`*( self: Selection ): void

proc `empty`*( self: Selection ): void

proc `collapse`*( self: Selection, `node`: Node ): void
proc `collapse`*( self: Selection, `node`: Node, `offset`: uint32 ): void

proc `setPosition`*( self: Selection, `node`: Node ): void
proc `setPosition`*( self: Selection, `node`: Node, `offset`: uint32 ): void

proc `collapseToStart`*( self: Selection ): void

proc `collapseToEnd`*( self: Selection ): void

proc `extend`*( self: Selection, `node`: Node ): void
proc `extend`*( self: Selection, `node`: Node, `offset`: uint32 ): void

proc `setBaseAndExtent`*( self: Selection, `anchorNode`: Node, `anchorOffset`: uint32, `focusNode`: Node, `focusOffset`: uint32 ): void

proc `selectAllChildren`*( self: Selection, `node`: Node ): void

proc `deleteFromDocument`*( self: Selection ): void

proc `containsNode`*( self: Selection, `node`: Node ): bool
proc `containsNode`*( self: Selection, `node`: Node, `allowPartialContainment`: bool ): bool

proc `getSelection`*( self: Window ): Selection
template `getSelection`*(  ): Selection =
  window.getSelection(  )

proc `close`*( self: Window ): void
template `close`*(  ): void =
  window.close(  )

proc `stop`*( self: Window ): void
template `stop`*(  ): void =
  window.stop(  )

proc `focus`*( self: Window ): void
template `focus`*(  ): void =
  window.focus(  )

proc `blur`*( self: Window ): void
template `blur`*(  ): void =
  window.blur(  )

proc `open`*( self: Window ): Window
template `open`*(  ): Window =
  window.open(  )
proc `open`*( self: Window, `url`: cstring ): Window
template `open`*( `url`: cstring ): Window =
  window.open( url )
proc `open`*( self: Window, `url`: cstring, `target`: cstring ): Window
template `open`*( `url`: cstring, `target`: cstring ): Window =
  window.open( url, target )
proc `open`*( self: Window, `url`: cstring, `target`: cstring, `features`: cstring ): Window
template `open`*( `url`: cstring, `target`: cstring, `features`: cstring ): Window =
  window.open( url, target, features )

proc `alert`*( self: Window ): void
template `alert`*(  ): void =
  window.alert(  )

proc `alert`*( self: Window, `message`: cstring ): void
template `alert`*( `message`: cstring ): void =
  window.alert( message )

proc `confirm`*( self: Window ): bool
template `confirm`*(  ): bool =
  window.confirm(  )
proc `confirm`*( self: Window, `message`: cstring ): bool
template `confirm`*( `message`: cstring ): bool =
  window.confirm( message )

proc `prompt`*( self: Window ): cstring
template `prompt`*(  ): cstring =
  window.prompt(  )
proc `prompt`*( self: Window, `message`: cstring ): cstring
template `prompt`*( `message`: cstring ): cstring =
  window.prompt( message )
proc `prompt`*( self: Window, `message`: cstring, `default`: cstring ): cstring
template `prompt`*( `message`: cstring, `default`: cstring ): cstring =
  window.prompt( message, default )

proc `print`*( self: Window ): void
template `print`*(  ): void =
  window.print(  )

proc `cancelAnimationFrame`*( self: Window, `handle`: uint32 ): void
template `cancelAnimationFrame`*( `handle`: uint32 ): void =
  window.cancelAnimationFrame( handle )

proc `captureEvents`*( self: Window ): void
template `captureEvents`*(  ): void =
  window.captureEvents(  )

proc `releaseEvents`*( self: Window ): void
template `releaseEvents`*(  ): void =
  window.releaseEvents(  )

proc `btoa`*( self: Window, `data`: cstring ): cstring
template `btoa`*( `data`: cstring ): cstring =
  window.btoa( data )

proc `atob`*( self: Window, `data`: cstring ): cstring
template `atob`*( `data`: cstring ): cstring =
  window.atob( data )

proc `setTimeout`*( self: Window, `handler`: proc () ): int32
template `setTimeout`*( `handler`: proc () ): int32 =
  window.setTimeout( handler )
proc `setTimeout`*( self: Window, `handler`: proc (), `timeout`: int32 ): int32
template `setTimeout`*( `handler`: proc (), `timeout`: int32 ): int32 =
  window.setTimeout( handler, timeout )

proc `clearTimeout`*( self: Window ): void
template `clearTimeout`*(  ): void =
  window.clearTimeout(  )
proc `clearTimeout`*( self: Window, `handle`: int32 ): void
template `clearTimeout`*( `handle`: int32 ): void =
  window.clearTimeout( handle )

proc `setInterval`*( self: Window, `handler`: proc () ): int32
template `setInterval`*( `handler`: proc () ): int32 =
  window.setInterval( handler )
proc `setInterval`*( self: Window, `handler`: proc (), `timeout`: int32 ): int32
template `setInterval`*( `handler`: proc (), `timeout`: int32 ): int32 =
  window.setInterval( handler, timeout )

proc `clearInterval`*( self: Window ): void
template `clearInterval`*(  ): void =
  window.clearInterval(  )
proc `clearInterval`*( self: Window, `handle`: int32 ): void
template `clearInterval`*( `handle`: int32 ): void =
  window.clearInterval( handle )

proc `contains`*( self: DOMStringList, `string`: cstring ): bool

proc `click`*( self: HTMLElement ): void

proc `focus`*( self: HTMLElement ): void

proc `blur`*( self: HTMLElement ): void

proc `getSVGDocument`*( self: HTMLIFrameElement ): Document

proc `getSVGDocument`*( self: HTMLEmbedElement ): Document

proc `getSVGDocument`*( self: HTMLObjectElement ): Document

proc `checkValidity`*( self: HTMLObjectElement ): bool

proc `reportValidity`*( self: HTMLObjectElement ): bool

proc `setCustomValidity`*( self: HTMLObjectElement, `error`: cstring ): void

proc `load`*( self: HTMLMediaElement ): void

proc `canPlayType`*( self: HTMLMediaElement, `type`: cstring ): CanPlayTypeResult

proc `fastSeek`*( self: HTMLMediaElement, `time`: float64 ): void

proc `pause`*( self: HTMLMediaElement ): void

proc `addTextTrack`*( self: HTMLMediaElement, `kind`: TextTrackKind ): TextTrack
proc `addTextTrack`*( self: HTMLMediaElement, `kind`: TextTrackKind, `label`: cstring ): TextTrack
proc `addTextTrack`*( self: HTMLMediaElement, `kind`: TextTrackKind, `label`: cstring, `language`: cstring ): TextTrack

proc `getTrackById`*( self: AudioTrackList, `id`: cstring ): AudioTrack

proc `getTrackById`*( self: VideoTrackList, `id`: cstring ): VideoTrack

proc `getTrackById`*( self: TextTrackList, `id`: cstring ): TextTrack

proc `addCue`*( self: TextTrack, `cue`: TextTrackCue ): void

proc `removeCue`*( self: TextTrack, `cue`: TextTrackCue ): void

proc `getCueById`*( self: TextTrackCueList, `id`: cstring ): TextTrackCue

proc `start`*( self: TimeRanges, `index`: uint32 ): float64

proc `end`*( self: TimeRanges, `index`: uint32 ): float64

proc `createCaption`*( self: HTMLTableElement ): HTMLTableCaptionElement

proc `deleteCaption`*( self: HTMLTableElement ): void

proc `createTHead`*( self: HTMLTableElement ): HTMLTableSectionElement

proc `deleteTHead`*( self: HTMLTableElement ): void

proc `createTFoot`*( self: HTMLTableElement ): HTMLTableSectionElement

proc `deleteTFoot`*( self: HTMLTableElement ): void

proc `createTBody`*( self: HTMLTableElement ): HTMLTableSectionElement

proc `insertRow`*( self: HTMLTableElement ): HTMLTableRowElement
proc `insertRow`*( self: HTMLTableElement, `index`: int32 ): HTMLTableRowElement

proc `deleteRow`*( self: HTMLTableElement, `index`: int32 ): void

proc `insertRow`*( self: HTMLTableSectionElement ): HTMLElement
proc `insertRow`*( self: HTMLTableSectionElement, `index`: int32 ): HTMLElement

proc `deleteRow`*( self: HTMLTableSectionElement, `index`: int32 ): void

proc `insertCell`*( self: HTMLTableRowElement ): HTMLTableCellElement
proc `insertCell`*( self: HTMLTableRowElement, `index`: int32 ): HTMLTableCellElement

proc `deleteCell`*( self: HTMLTableRowElement, `index`: int32 ): void

proc `submit`*( self: HTMLFormElement ): void

proc `reset`*( self: HTMLFormElement ): void

proc `checkValidity`*( self: HTMLFormElement ): bool

proc `reportValidity`*( self: HTMLFormElement ): bool

proc `stepUp`*( self: HTMLInputElement ): void
proc `stepUp`*( self: HTMLInputElement, `n`: int32 ): void

proc `stepDown`*( self: HTMLInputElement ): void
proc `stepDown`*( self: HTMLInputElement, `n`: int32 ): void

proc `checkValidity`*( self: HTMLInputElement ): bool

proc `reportValidity`*( self: HTMLInputElement ): bool

proc `setCustomValidity`*( self: HTMLInputElement, `error`: cstring ): void

proc `select`*( self: HTMLInputElement ): void

proc `setRangeText`*( self: HTMLInputElement, `replacement`: cstring ): void

proc `setRangeText`*( self: HTMLInputElement, `replacement`: cstring, `start`: uint32, `end`: uint32 ): void
proc `setRangeText`*( self: HTMLInputElement, `replacement`: cstring, `start`: uint32, `end`: uint32, `selectionMode`: SelectionMode ): void

proc `setSelectionRange`*( self: HTMLInputElement, `start`: uint32, `end`: uint32 ): void
proc `setSelectionRange`*( self: HTMLInputElement, `start`: uint32, `end`: uint32, `direction`: cstring ): void

proc `checkValidity`*( self: HTMLButtonElement ): bool

proc `reportValidity`*( self: HTMLButtonElement ): bool

proc `setCustomValidity`*( self: HTMLButtonElement, `error`: cstring ): void

proc `namedItem`*( self: HTMLSelectElement, `name`: cstring ): HTMLOptionElement

proc `remove`*( self: HTMLSelectElement ): void

proc `remove`*( self: HTMLSelectElement, `index`: int32 ): void

proc `checkValidity`*( self: HTMLSelectElement ): bool

proc `reportValidity`*( self: HTMLSelectElement ): bool

proc `setCustomValidity`*( self: HTMLSelectElement, `error`: cstring ): void

proc `checkValidity`*( self: HTMLTextAreaElement ): bool

proc `reportValidity`*( self: HTMLTextAreaElement ): bool

proc `setCustomValidity`*( self: HTMLTextAreaElement, `error`: cstring ): void

proc `select`*( self: HTMLTextAreaElement ): void

proc `setRangeText`*( self: HTMLTextAreaElement, `replacement`: cstring ): void

proc `setRangeText`*( self: HTMLTextAreaElement, `replacement`: cstring, `start`: uint32, `end`: uint32 ): void
proc `setRangeText`*( self: HTMLTextAreaElement, `replacement`: cstring, `start`: uint32, `end`: uint32, `selectionMode`: SelectionMode ): void

proc `setSelectionRange`*( self: HTMLTextAreaElement, `start`: uint32, `end`: uint32 ): void
proc `setSelectionRange`*( self: HTMLTextAreaElement, `start`: uint32, `end`: uint32, `direction`: cstring ): void

proc `checkValidity`*( self: HTMLOutputElement ): bool

proc `reportValidity`*( self: HTMLOutputElement ): bool

proc `setCustomValidity`*( self: HTMLOutputElement, `error`: cstring ): void

proc `checkValidity`*( self: HTMLFieldSetElement ): bool

proc `reportValidity`*( self: HTMLFieldSetElement ): bool

proc `setCustomValidity`*( self: HTMLFieldSetElement, `error`: cstring ): void

proc `show`*( self: HTMLDialogElement ): void

proc `showModal`*( self: HTMLDialogElement ): void

proc `close`*( self: HTMLDialogElement ): void
proc `close`*( self: HTMLDialogElement, `returnValue`: cstring ): void

proc `transferControlToOffscreen`*( self: HTMLCanvasElement ): OffscreenCanvas

proc `save`*( self: CanvasRenderingContext2D ): void

proc `restore`*( self: CanvasRenderingContext2D ): void

proc `scale`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64 ): void

proc `rotate`*( self: CanvasRenderingContext2D, `angle`: float64 ): void

proc `translate`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64 ): void

proc `transform`*( self: CanvasRenderingContext2D, `a`: float64, `b`: float64, `c`: float64, `d`: float64, `e`: float64, `f`: float64 ): void

proc `setTransform`*( self: CanvasRenderingContext2D, `a`: float64, `b`: float64, `c`: float64, `d`: float64, `e`: float64, `f`: float64 ): void

proc `resetTransform`*( self: CanvasRenderingContext2D ): void

proc `createLinearGradient`*( self: CanvasRenderingContext2D, `x0`: float64, `y0`: float64, `x1`: float64, `y1`: float64 ): CanvasGradient

proc `createRadialGradient`*( self: CanvasRenderingContext2D, `x0`: float64, `y0`: float64, `r0`: float64, `x1`: float64, `y1`: float64, `r1`: float64 ): CanvasGradient

proc `clearRect`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `fillRect`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `strokeRect`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `beginPath`*( self: CanvasRenderingContext2D ): void

proc `fill`*( self: CanvasRenderingContext2D ): void
proc `fill`*( self: CanvasRenderingContext2D, `fillRule`: CanvasFillRule ): void

proc `fill`*( self: CanvasRenderingContext2D, `path`: Path2D ): void
proc `fill`*( self: CanvasRenderingContext2D, `path`: Path2D, `fillRule`: CanvasFillRule ): void

proc `stroke`*( self: CanvasRenderingContext2D ): void

proc `stroke`*( self: CanvasRenderingContext2D, `path`: Path2D ): void

proc `clip`*( self: CanvasRenderingContext2D ): void
proc `clip`*( self: CanvasRenderingContext2D, `fillRule`: CanvasFillRule ): void

proc `clip`*( self: CanvasRenderingContext2D, `path`: Path2D ): void
proc `clip`*( self: CanvasRenderingContext2D, `path`: Path2D, `fillRule`: CanvasFillRule ): void

proc `resetClip`*( self: CanvasRenderingContext2D ): void

proc `isPointInPath`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64 ): bool
proc `isPointInPath`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `fillRule`: CanvasFillRule ): bool

proc `isPointInPath`*( self: CanvasRenderingContext2D, `path`: Path2D, `x`: float64, `y`: float64 ): bool
proc `isPointInPath`*( self: CanvasRenderingContext2D, `path`: Path2D, `x`: float64, `y`: float64, `fillRule`: CanvasFillRule ): bool

proc `isPointInStroke`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64 ): bool

proc `isPointInStroke`*( self: CanvasRenderingContext2D, `path`: Path2D, `x`: float64, `y`: float64 ): bool

proc `drawFocusIfNeeded`*( self: CanvasRenderingContext2D, `element`: Element ): void

proc `drawFocusIfNeeded`*( self: CanvasRenderingContext2D, `path`: Path2D, `element`: Element ): void

proc `scrollPathIntoView`*( self: CanvasRenderingContext2D ): void

proc `scrollPathIntoView`*( self: CanvasRenderingContext2D, `path`: Path2D ): void

proc `fillText`*( self: CanvasRenderingContext2D, `text`: cstring, `x`: float64, `y`: float64 ): void
proc `fillText`*( self: CanvasRenderingContext2D, `text`: cstring, `x`: float64, `y`: float64, `maxWidth`: float64 ): void

proc `strokeText`*( self: CanvasRenderingContext2D, `text`: cstring, `x`: float64, `y`: float64 ): void
proc `strokeText`*( self: CanvasRenderingContext2D, `text`: cstring, `x`: float64, `y`: float64, `maxWidth`: float64 ): void

proc `measureText`*( self: CanvasRenderingContext2D, `text`: cstring ): TextMetrics

proc `createImageData`*( self: CanvasRenderingContext2D, `sw`: int32, `sh`: int32 ): ImageData

proc `createImageData`*( self: CanvasRenderingContext2D, `imagedata`: ImageData ): ImageData

proc `getImageData`*( self: CanvasRenderingContext2D, `sx`: int32, `sy`: int32, `sw`: int32, `sh`: int32 ): ImageData

proc `putImageData`*( self: CanvasRenderingContext2D, `imagedata`: ImageData, `dx`: int32, `dy`: int32 ): void

proc `putImageData`*( self: CanvasRenderingContext2D, `imagedata`: ImageData, `dx`: int32, `dy`: int32, `dirtyX`: int32, `dirtyY`: int32, `dirtyWidth`: int32, `dirtyHeight`: int32 ): void

proc `closePath`*( self: CanvasRenderingContext2D ): void

proc `moveTo`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64 ): void

proc `lineTo`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64 ): void

proc `quadraticCurveTo`*( self: CanvasRenderingContext2D, `cpx`: float64, `cpy`: float64, `x`: float64, `y`: float64 ): void

proc `bezierCurveTo`*( self: CanvasRenderingContext2D, `cp1x`: float64, `cp1y`: float64, `cp2x`: float64, `cp2y`: float64, `x`: float64, `y`: float64 ): void

proc `arcTo`*( self: CanvasRenderingContext2D, `x1`: float64, `y1`: float64, `x2`: float64, `y2`: float64, `radius`: float64 ): void

proc `arcTo`*( self: CanvasRenderingContext2D, `x1`: float64, `y1`: float64, `x2`: float64, `y2`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64 ): void

proc `rect`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `arc`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `radius`: float64, `startAngle`: float64, `endAngle`: float64 ): void
proc `arc`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `radius`: float64, `startAngle`: float64, `endAngle`: float64, `anticlockwise`: bool ): void

proc `ellipse`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64, `startAngle`: float64, `endAngle`: float64 ): void
proc `ellipse`*( self: CanvasRenderingContext2D, `x`: float64, `y`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64, `startAngle`: float64, `endAngle`: float64, `anticlockwise`: bool ): void

proc `save`*( self: CanvasState ): void

proc `restore`*( self: CanvasState ): void

proc `scale`*( self: CanvasTransform, `x`: float64, `y`: float64 ): void

proc `rotate`*( self: CanvasTransform, `angle`: float64 ): void

proc `translate`*( self: CanvasTransform, `x`: float64, `y`: float64 ): void

proc `transform`*( self: CanvasTransform, `a`: float64, `b`: float64, `c`: float64, `d`: float64, `e`: float64, `f`: float64 ): void

proc `setTransform`*( self: CanvasTransform, `a`: float64, `b`: float64, `c`: float64, `d`: float64, `e`: float64, `f`: float64 ): void

proc `resetTransform`*( self: CanvasTransform ): void

proc `createLinearGradient`*( self: CanvasFillStrokeStyles, `x0`: float64, `y0`: float64, `x1`: float64, `y1`: float64 ): CanvasGradient

proc `createRadialGradient`*( self: CanvasFillStrokeStyles, `x0`: float64, `y0`: float64, `r0`: float64, `x1`: float64, `y1`: float64, `r1`: float64 ): CanvasGradient

proc `clearRect`*( self: CanvasRect, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `fillRect`*( self: CanvasRect, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `strokeRect`*( self: CanvasRect, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `beginPath`*( self: CanvasDrawPath ): void

proc `fill`*( self: CanvasDrawPath ): void
proc `fill`*( self: CanvasDrawPath, `fillRule`: CanvasFillRule ): void

proc `fill`*( self: CanvasDrawPath, `path`: Path2D ): void
proc `fill`*( self: CanvasDrawPath, `path`: Path2D, `fillRule`: CanvasFillRule ): void

proc `stroke`*( self: CanvasDrawPath ): void

proc `stroke`*( self: CanvasDrawPath, `path`: Path2D ): void

proc `clip`*( self: CanvasDrawPath ): void
proc `clip`*( self: CanvasDrawPath, `fillRule`: CanvasFillRule ): void

proc `clip`*( self: CanvasDrawPath, `path`: Path2D ): void
proc `clip`*( self: CanvasDrawPath, `path`: Path2D, `fillRule`: CanvasFillRule ): void

proc `resetClip`*( self: CanvasDrawPath ): void

proc `isPointInPath`*( self: CanvasDrawPath, `x`: float64, `y`: float64 ): bool
proc `isPointInPath`*( self: CanvasDrawPath, `x`: float64, `y`: float64, `fillRule`: CanvasFillRule ): bool

proc `isPointInPath`*( self: CanvasDrawPath, `path`: Path2D, `x`: float64, `y`: float64 ): bool
proc `isPointInPath`*( self: CanvasDrawPath, `path`: Path2D, `x`: float64, `y`: float64, `fillRule`: CanvasFillRule ): bool

proc `isPointInStroke`*( self: CanvasDrawPath, `x`: float64, `y`: float64 ): bool

proc `isPointInStroke`*( self: CanvasDrawPath, `path`: Path2D, `x`: float64, `y`: float64 ): bool

proc `drawFocusIfNeeded`*( self: CanvasUserInterface, `element`: Element ): void

proc `drawFocusIfNeeded`*( self: CanvasUserInterface, `path`: Path2D, `element`: Element ): void

proc `scrollPathIntoView`*( self: CanvasUserInterface ): void

proc `scrollPathIntoView`*( self: CanvasUserInterface, `path`: Path2D ): void

proc `fillText`*( self: CanvasText, `text`: cstring, `x`: float64, `y`: float64 ): void
proc `fillText`*( self: CanvasText, `text`: cstring, `x`: float64, `y`: float64, `maxWidth`: float64 ): void

proc `strokeText`*( self: CanvasText, `text`: cstring, `x`: float64, `y`: float64 ): void
proc `strokeText`*( self: CanvasText, `text`: cstring, `x`: float64, `y`: float64, `maxWidth`: float64 ): void

proc `measureText`*( self: CanvasText, `text`: cstring ): TextMetrics

proc `createImageData`*( self: CanvasImageData, `sw`: int32, `sh`: int32 ): ImageData

proc `createImageData`*( self: CanvasImageData, `imagedata`: ImageData ): ImageData

proc `getImageData`*( self: CanvasImageData, `sx`: int32, `sy`: int32, `sw`: int32, `sh`: int32 ): ImageData

proc `putImageData`*( self: CanvasImageData, `imagedata`: ImageData, `dx`: int32, `dy`: int32 ): void

proc `putImageData`*( self: CanvasImageData, `imagedata`: ImageData, `dx`: int32, `dy`: int32, `dirtyX`: int32, `dirtyY`: int32, `dirtyWidth`: int32, `dirtyHeight`: int32 ): void

proc `closePath`*( self: CanvasPath ): void

proc `moveTo`*( self: CanvasPath, `x`: float64, `y`: float64 ): void

proc `lineTo`*( self: CanvasPath, `x`: float64, `y`: float64 ): void

proc `quadraticCurveTo`*( self: CanvasPath, `cpx`: float64, `cpy`: float64, `x`: float64, `y`: float64 ): void

proc `bezierCurveTo`*( self: CanvasPath, `cp1x`: float64, `cp1y`: float64, `cp2x`: float64, `cp2y`: float64, `x`: float64, `y`: float64 ): void

proc `arcTo`*( self: CanvasPath, `x1`: float64, `y1`: float64, `x2`: float64, `y2`: float64, `radius`: float64 ): void

proc `arcTo`*( self: CanvasPath, `x1`: float64, `y1`: float64, `x2`: float64, `y2`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64 ): void

proc `rect`*( self: CanvasPath, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `arc`*( self: CanvasPath, `x`: float64, `y`: float64, `radius`: float64, `startAngle`: float64, `endAngle`: float64 ): void
proc `arc`*( self: CanvasPath, `x`: float64, `y`: float64, `radius`: float64, `startAngle`: float64, `endAngle`: float64, `anticlockwise`: bool ): void

proc `ellipse`*( self: CanvasPath, `x`: float64, `y`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64, `startAngle`: float64, `endAngle`: float64 ): void
proc `ellipse`*( self: CanvasPath, `x`: float64, `y`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64, `startAngle`: float64, `endAngle`: float64, `anticlockwise`: bool ): void

proc `addColorStop`*( self: CanvasGradient, `offset`: float64, `color`: cstring ): void

proc `closePath`*( self: Path2D ): void

proc `moveTo`*( self: Path2D, `x`: float64, `y`: float64 ): void

proc `lineTo`*( self: Path2D, `x`: float64, `y`: float64 ): void

proc `quadraticCurveTo`*( self: Path2D, `cpx`: float64, `cpy`: float64, `x`: float64, `y`: float64 ): void

proc `bezierCurveTo`*( self: Path2D, `cp1x`: float64, `cp1y`: float64, `cp2x`: float64, `cp2y`: float64, `x`: float64, `y`: float64 ): void

proc `arcTo`*( self: Path2D, `x1`: float64, `y1`: float64, `x2`: float64, `y2`: float64, `radius`: float64 ): void

proc `arcTo`*( self: Path2D, `x1`: float64, `y1`: float64, `x2`: float64, `y2`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64 ): void

proc `rect`*( self: Path2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `arc`*( self: Path2D, `x`: float64, `y`: float64, `radius`: float64, `startAngle`: float64, `endAngle`: float64 ): void
proc `arc`*( self: Path2D, `x`: float64, `y`: float64, `radius`: float64, `startAngle`: float64, `endAngle`: float64, `anticlockwise`: bool ): void

proc `ellipse`*( self: Path2D, `x`: float64, `y`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64, `startAngle`: float64, `endAngle`: float64 ): void
proc `ellipse`*( self: Path2D, `x`: float64, `y`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64, `startAngle`: float64, `endAngle`: float64, `anticlockwise`: bool ): void

proc `transferFromImageBitmap`*( self: ImageBitmapRenderingContext, `bitmap`: ImageBitmap ): void

proc `transferToImageBitmap`*( self: OffscreenCanvas ): ImageBitmap

proc `commit`*( self: OffscreenCanvasRenderingContext2D ): void

proc `save`*( self: OffscreenCanvasRenderingContext2D ): void

proc `restore`*( self: OffscreenCanvasRenderingContext2D ): void

proc `scale`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64 ): void

proc `rotate`*( self: OffscreenCanvasRenderingContext2D, `angle`: float64 ): void

proc `translate`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64 ): void

proc `transform`*( self: OffscreenCanvasRenderingContext2D, `a`: float64, `b`: float64, `c`: float64, `d`: float64, `e`: float64, `f`: float64 ): void

proc `setTransform`*( self: OffscreenCanvasRenderingContext2D, `a`: float64, `b`: float64, `c`: float64, `d`: float64, `e`: float64, `f`: float64 ): void

proc `resetTransform`*( self: OffscreenCanvasRenderingContext2D ): void

proc `createLinearGradient`*( self: OffscreenCanvasRenderingContext2D, `x0`: float64, `y0`: float64, `x1`: float64, `y1`: float64 ): CanvasGradient

proc `createRadialGradient`*( self: OffscreenCanvasRenderingContext2D, `x0`: float64, `y0`: float64, `r0`: float64, `x1`: float64, `y1`: float64, `r1`: float64 ): CanvasGradient

proc `clearRect`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `fillRect`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `strokeRect`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `beginPath`*( self: OffscreenCanvasRenderingContext2D ): void

proc `fill`*( self: OffscreenCanvasRenderingContext2D ): void
proc `fill`*( self: OffscreenCanvasRenderingContext2D, `fillRule`: CanvasFillRule ): void

proc `fill`*( self: OffscreenCanvasRenderingContext2D, `path`: Path2D ): void
proc `fill`*( self: OffscreenCanvasRenderingContext2D, `path`: Path2D, `fillRule`: CanvasFillRule ): void

proc `stroke`*( self: OffscreenCanvasRenderingContext2D ): void

proc `stroke`*( self: OffscreenCanvasRenderingContext2D, `path`: Path2D ): void

proc `clip`*( self: OffscreenCanvasRenderingContext2D ): void
proc `clip`*( self: OffscreenCanvasRenderingContext2D, `fillRule`: CanvasFillRule ): void

proc `clip`*( self: OffscreenCanvasRenderingContext2D, `path`: Path2D ): void
proc `clip`*( self: OffscreenCanvasRenderingContext2D, `path`: Path2D, `fillRule`: CanvasFillRule ): void

proc `resetClip`*( self: OffscreenCanvasRenderingContext2D ): void

proc `isPointInPath`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64 ): bool
proc `isPointInPath`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `fillRule`: CanvasFillRule ): bool

proc `isPointInPath`*( self: OffscreenCanvasRenderingContext2D, `path`: Path2D, `x`: float64, `y`: float64 ): bool
proc `isPointInPath`*( self: OffscreenCanvasRenderingContext2D, `path`: Path2D, `x`: float64, `y`: float64, `fillRule`: CanvasFillRule ): bool

proc `isPointInStroke`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64 ): bool

proc `isPointInStroke`*( self: OffscreenCanvasRenderingContext2D, `path`: Path2D, `x`: float64, `y`: float64 ): bool

proc `createImageData`*( self: OffscreenCanvasRenderingContext2D, `sw`: int32, `sh`: int32 ): ImageData

proc `createImageData`*( self: OffscreenCanvasRenderingContext2D, `imagedata`: ImageData ): ImageData

proc `getImageData`*( self: OffscreenCanvasRenderingContext2D, `sx`: int32, `sy`: int32, `sw`: int32, `sh`: int32 ): ImageData

proc `putImageData`*( self: OffscreenCanvasRenderingContext2D, `imagedata`: ImageData, `dx`: int32, `dy`: int32 ): void

proc `putImageData`*( self: OffscreenCanvasRenderingContext2D, `imagedata`: ImageData, `dx`: int32, `dy`: int32, `dirtyX`: int32, `dirtyY`: int32, `dirtyWidth`: int32, `dirtyHeight`: int32 ): void

proc `closePath`*( self: OffscreenCanvasRenderingContext2D ): void

proc `moveTo`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64 ): void

proc `lineTo`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64 ): void

proc `quadraticCurveTo`*( self: OffscreenCanvasRenderingContext2D, `cpx`: float64, `cpy`: float64, `x`: float64, `y`: float64 ): void

proc `bezierCurveTo`*( self: OffscreenCanvasRenderingContext2D, `cp1x`: float64, `cp1y`: float64, `cp2x`: float64, `cp2y`: float64, `x`: float64, `y`: float64 ): void

proc `arcTo`*( self: OffscreenCanvasRenderingContext2D, `x1`: float64, `y1`: float64, `x2`: float64, `y2`: float64, `radius`: float64 ): void

proc `arcTo`*( self: OffscreenCanvasRenderingContext2D, `x1`: float64, `y1`: float64, `x2`: float64, `y2`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64 ): void

proc `rect`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `w`: float64, `h`: float64 ): void

proc `arc`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `radius`: float64, `startAngle`: float64, `endAngle`: float64 ): void
proc `arc`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `radius`: float64, `startAngle`: float64, `endAngle`: float64, `anticlockwise`: bool ): void

proc `ellipse`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64, `startAngle`: float64, `endAngle`: float64 ): void
proc `ellipse`*( self: OffscreenCanvasRenderingContext2D, `x`: float64, `y`: float64, `radiusX`: float64, `radiusY`: float64, `rotation`: float64, `startAngle`: float64, `endAngle`: float64, `anticlockwise`: bool ): void

proc `setDragImage`*( self: DataTransfer, `image`: Element, `x`: int32, `y`: int32 ): void

proc `getData`*( self: DataTransfer, `format`: cstring ): cstring

proc `setData`*( self: DataTransfer, `format`: cstring, `data`: cstring ): void

proc `clearData`*( self: DataTransfer ): void
proc `clearData`*( self: DataTransfer, `format`: cstring ): void

proc `add`*( self: DataTransferItemList, `data`: cstring, `type`: cstring ): DataTransferItem

proc `remove`*( self: DataTransferItemList, `index`: uint32 ): void

proc `clear`*( self: DataTransferItemList ): void

proc `go`*( self: History ): void
proc `go`*( self: History, `delta`: int32 ): void

proc `back`*( self: History ): void

proc `forward`*( self: History ): void

proc `assign`*( self: Location, `url`: cstring ): void

proc `replace`*( self: Location, `url`: cstring ): void

proc `reload`*( self: Location ): void

proc `update`*( self: ApplicationCache ): void

proc `abort`*( self: ApplicationCache ): void

proc `swapCache`*( self: ApplicationCache ): void

proc `btoa`*( self: WindowOrWorkerGlobalScope, `data`: cstring ): cstring

proc `atob`*( self: WindowOrWorkerGlobalScope, `data`: cstring ): cstring

proc `setTimeout`*( self: WindowOrWorkerGlobalScope, `handler`: proc () ): int32
proc `setTimeout`*( self: WindowOrWorkerGlobalScope, `handler`: proc (), `timeout`: int32 ): int32

proc `clearTimeout`*( self: WindowOrWorkerGlobalScope ): void
proc `clearTimeout`*( self: WindowOrWorkerGlobalScope, `handle`: int32 ): void

proc `setInterval`*( self: WindowOrWorkerGlobalScope, `handler`: proc () ): int32
proc `setInterval`*( self: WindowOrWorkerGlobalScope, `handler`: proc (), `timeout`: int32 ): int32

proc `clearInterval`*( self: WindowOrWorkerGlobalScope ): void
proc `clearInterval`*( self: WindowOrWorkerGlobalScope, `handle`: int32 ): void

proc `taintEnabled`*( self: Navigator ): bool

proc `registerProtocolHandler`*( self: Navigator, `scheme`: cstring, `url`: cstring, `title`: cstring ): void

proc `registerContentHandler`*( self: Navigator, `mimeType`: cstring, `url`: cstring, `title`: cstring ): void

proc `isProtocolHandlerRegistered`*( self: Navigator, `scheme`: cstring, `url`: cstring ): cstring

proc `isContentHandlerRegistered`*( self: Navigator, `mimeType`: cstring, `url`: cstring ): cstring

proc `unregisterProtocolHandler`*( self: Navigator, `scheme`: cstring, `url`: cstring ): void

proc `unregisterContentHandler`*( self: Navigator, `mimeType`: cstring, `url`: cstring ): void

proc `javaEnabled`*( self: Navigator ): bool

proc `taintEnabled`*( self: NavigatorID ): bool

proc `registerProtocolHandler`*( self: NavigatorContentUtils, `scheme`: cstring, `url`: cstring, `title`: cstring ): void

proc `registerContentHandler`*( self: NavigatorContentUtils, `mimeType`: cstring, `url`: cstring, `title`: cstring ): void

proc `isProtocolHandlerRegistered`*( self: NavigatorContentUtils, `scheme`: cstring, `url`: cstring ): cstring

proc `isContentHandlerRegistered`*( self: NavigatorContentUtils, `mimeType`: cstring, `url`: cstring ): cstring

proc `unregisterProtocolHandler`*( self: NavigatorContentUtils, `scheme`: cstring, `url`: cstring ): void

proc `unregisterContentHandler`*( self: NavigatorContentUtils, `mimeType`: cstring, `url`: cstring ): void

proc `javaEnabled`*( self: NavigatorPlugins ): bool

proc `refresh`*( self: PluginArray ): void
proc `refresh`*( self: PluginArray, `reload`: bool ): void

proc `close`*( self: ImageBitmap ): void

proc `close`*( self: EventSource ): void

proc `close`*( self: WebSocket ): void
proc `close`*( self: WebSocket, `code`: uint16 ): void
proc `close`*( self: WebSocket, `code`: uint16, `reason`: cstring ): void

proc `send`*( self: WebSocket, `data`: cstring ): void

proc `start`*( self: MessagePort ): void

proc `close`*( self: MessagePort ): void

proc `close`*( self: BroadcastChannel ): void

proc `importScripts`*( self: WorkerGlobalScope ): void

proc `btoa`*( self: WorkerGlobalScope, `data`: cstring ): cstring

proc `atob`*( self: WorkerGlobalScope, `data`: cstring ): cstring

proc `setTimeout`*( self: WorkerGlobalScope, `handler`: proc () ): int32
proc `setTimeout`*( self: WorkerGlobalScope, `handler`: proc (), `timeout`: int32 ): int32

proc `clearTimeout`*( self: WorkerGlobalScope ): void
proc `clearTimeout`*( self: WorkerGlobalScope, `handle`: int32 ): void

proc `setInterval`*( self: WorkerGlobalScope, `handler`: proc () ): int32
proc `setInterval`*( self: WorkerGlobalScope, `handler`: proc (), `timeout`: int32 ): int32

proc `clearInterval`*( self: WorkerGlobalScope ): void
proc `clearInterval`*( self: WorkerGlobalScope, `handle`: int32 ): void

proc `close`*( self: DedicatedWorkerGlobalScope ): void

proc `close`*( self: SharedWorkerGlobalScope ): void

proc `terminate`*( self: Worker ): void

proc `taintEnabled`*( self: WorkerNavigator ): bool

proc `key`*( self: Storage, `index`: uint32 ): cstring

proc `clear`*( self: Storage ): void

proc `start`*( self: HTMLMarqueeElement ): void

proc `stop`*( self: HTMLMarqueeElement ): void

proc `AddSearchProvider`*( self: External ): void

proc `IsSearchProviderInstalled`*( self: External ): void

{. pop .}

var
    `window`* {. importc .}: Window
    `self`* {. importc .}: Window
    `document`* {. importc .}: Document
    `name`* {. importc .}: cstring
    `location`* {. importc .}: Location
    `history`* {. importc .}: History
    `status`* {. importc .}: cstring
    `closed`* {. importc .}: bool
    `frames`* {. importc .}: Window
    `length`* {. importc .}: uint32
    `top`* {. importc .}: Window
    `parent`* {. importc .}: Window
    `frameElement`* {. importc .}: Element
    `external`* {. importc .}: External
    `onselectstart`* {. importc .}: proc ( event: Event )
    `onselectionchange`* {. importc .}: proc ( event: Event )
    `onabort`* {. importc .}: proc ( event: Event )
    `onauxclick`* {. importc .}: proc ( event: Event )
    `onblur`* {. importc .}: proc ( event: Event )
    `oncancel`* {. importc .}: proc ( event: Event )
    `oncanplay`* {. importc .}: proc ( event: Event )
    `oncanplaythrough`* {. importc .}: proc ( event: Event )
    `onchange`* {. importc .}: proc ( event: Event )
    `onclick`* {. importc .}: proc ( event: Event )
    `onclose`* {. importc .}: proc ( event: Event )
    `oncontextmenu`* {. importc .}: proc ( event: Event )
    `oncuechange`* {. importc .}: proc ( event: Event )
    `ondblclick`* {. importc .}: proc ( event: Event )
    `ondrag`* {. importc .}: proc ( event: Event )
    `ondragend`* {. importc .}: proc ( event: Event )
    `ondragenter`* {. importc .}: proc ( event: Event )
    `ondragexit`* {. importc .}: proc ( event: Event )
    `ondragleave`* {. importc .}: proc ( event: Event )
    `ondragover`* {. importc .}: proc ( event: Event )
    `ondragstart`* {. importc .}: proc ( event: Event )
    `ondrop`* {. importc .}: proc ( event: Event )
    `ondurationchange`* {. importc .}: proc ( event: Event )
    `onemptied`* {. importc .}: proc ( event: Event )
    `onended`* {. importc .}: proc ( event: Event )
    `onfocus`* {. importc .}: proc ( event: Event )
    `oninput`* {. importc .}: proc ( event: Event )
    `oninvalid`* {. importc .}: proc ( event: Event )
    `onkeydown`* {. importc .}: proc ( event: Event )
    `onkeypress`* {. importc .}: proc ( event: Event )
    `onkeyup`* {. importc .}: proc ( event: Event )
    `onload`* {. importc .}: proc ( event: Event )
    `onloadeddata`* {. importc .}: proc ( event: Event )
    `onloadedmetadata`* {. importc .}: proc ( event: Event )
    `onloadend`* {. importc .}: proc ( event: Event )
    `onloadstart`* {. importc .}: proc ( event: Event )
    `onmousedown`* {. importc .}: proc ( event: Event )
    `onmouseenter`* {. importc .}: proc ( event: Event )
    `onmouseleave`* {. importc .}: proc ( event: Event )
    `onmousemove`* {. importc .}: proc ( event: Event )
    `onmouseout`* {. importc .}: proc ( event: Event )
    `onmouseover`* {. importc .}: proc ( event: Event )
    `onmouseup`* {. importc .}: proc ( event: Event )
    `onwheel`* {. importc .}: proc ( event: Event )
    `onpause`* {. importc .}: proc ( event: Event )
    `onplay`* {. importc .}: proc ( event: Event )
    `onplaying`* {. importc .}: proc ( event: Event )
    `onprogress`* {. importc .}: proc ( event: Event )
    `onratechange`* {. importc .}: proc ( event: Event )
    `onreset`* {. importc .}: proc ( event: Event )
    `onresize`* {. importc .}: proc ( event: Event )
    `onscroll`* {. importc .}: proc ( event: Event )
    `onsecuritypolicyviolation`* {. importc .}: proc ( event: Event )
    `onseeked`* {. importc .}: proc ( event: Event )
    `onseeking`* {. importc .}: proc ( event: Event )
    `onselect`* {. importc .}: proc ( event: Event )
    `onstalled`* {. importc .}: proc ( event: Event )
    `onsubmit`* {. importc .}: proc ( event: Event )
    `onsuspend`* {. importc .}: proc ( event: Event )
    `ontimeupdate`* {. importc .}: proc ( event: Event )
    `ontoggle`* {. importc .}: proc ( event: Event )
    `onvolumechange`* {. importc .}: proc ( event: Event )
    `onwaiting`* {. importc .}: proc ( event: Event )
    `onafterprint`* {. importc .}: proc ( event: Event )
    `onbeforeprint`* {. importc .}: proc ( event: Event )
    `onhashchange`* {. importc .}: proc ( event: Event )
    `onlanguagechange`* {. importc .}: proc ( event: Event )
    `onmessage`* {. importc .}: proc ( event: Event )
    `onmessageerror`* {. importc .}: proc ( event: Event )
    `onoffline`* {. importc .}: proc ( event: Event )
    `ononline`* {. importc .}: proc ( event: Event )
    `onpagehide`* {. importc .}: proc ( event: Event )
    `onpageshow`* {. importc .}: proc ( event: Event )
    `onpopstate`* {. importc .}: proc ( event: Event )
    `onrejectionhandled`* {. importc .}: proc ( event: Event )
    `onstorage`* {. importc .}: proc ( event: Event )
    `onunhandledrejection`* {. importc .}: proc ( event: Event )
    `onunload`* {. importc .}: proc ( event: Event )
    `origin`* {. importc .}: cstring
    `sessionStorage`* {. importc .}: Storage
    `localStorage`* {. importc .}: Storage