" Vim syntax file
" Language:     HTML (version 5)
" Maintainer:   Christian Angermann
" URL:          http://rm.blog.br/vim/syntax/html.vim
" Last Change:  2012 Mar 03
" License:      Public domain
"
" Note: This file just adds the new tags from HTML 5
"       and don't replace default html.vim syntax file

" HTML 5 tags
syn keyword htmlTagName contained article aside audio bdi canvas command
syn keyword htmlTagName contained datalist details embed figure figcaption footer
syn keyword htmlTagName contained header hgroup keygen mark meter nav output
syn keyword htmlTagName contained progress time ruby rt rp ruby section summary
syn keyword htmlTagName contained time track video wbr

" HTML 5 arguments
syn keyword htmlArg contained autofocus placeholder min max step
syn keyword htmlArg contained contenteditable contextmenu draggable dropzone hidden
syn keyword htmlArg contained item data* required pattern
syn keyword htmlArg contained itemprop list subject spellcheck
" this doesn't work because default syntax file already define a 'data' attribute
syn match   htmlArg contained "\<\(data-[\-a-zA-Z0-9_]\+\)="
