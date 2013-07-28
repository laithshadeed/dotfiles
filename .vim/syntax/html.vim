" Vim syntax file
" Language:     HTML (version 5)
" Maintainer:   Christian Angermann
" Last Change:  2013 Jul 03
" License:      Public domain
"
" Note: This file just adds the new tags from HTML 5
"       and don't replace default html.vim syntax file
syn keyword htmlTagName           contained a abbr address area b base bdo blockquote body br button caption cite code col colgroup dd del dfn div dl dt em fieldset form h1 h2 h3 h4 h5 h6 head hr html i iframe img input ins kbd label legend li link map meta noscript ol optgroup option p param pre q s samp script select small span strong style sub sup table tbody td textarea tfoot th thead title tr u ul var
syn keyword deprecatedHtmlTagName contained acronym applet basefont big center dir font frame frameset noframes hgroup strike tt
syn keyword html5TagName          contained article aside audio bdi canvas command datalist details embed figcaption figure footer header keygen mark menu meter nav output progress rp rt ruby section summary time track video wbr

" HTML 5 arguments
syn keyword htmlArg contained autofocus placeholder min max step
syn keyword htmlArg contained contenteditable contextmenu draggable dropzone hidden
syn keyword htmlArg contained item data* required pattern
syn keyword htmlArg contained itemprop list subject spellcheck
" this doesn't work because default syntax file already define a 'data' attribute
syn match   htmlArg contained "\<\(data-[\-a-zA-Z0-9_]\+\)="

hi def link htmlTagName           Function
hi def link deprecatedHtmlTagName Function
hi def link html5TagName          Function
hi def link htmlEndTag            Directory
