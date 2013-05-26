" Vim completion script
" Based on Mikolaj Machowski's csscomplete.vim
" Language:	CSS 3
" Maintainer:	Chris Yip
" Last Change:	June 28. 2011
"
" NOTICE: this version is for EXPERIENCE.

let kw_animation = 'animation animation-delay animation-direction animation-duration animation-fill-mode animation-iteration-count animation-name animation-play-state animation-timing-function'

let kw_background = 'background background-attachment background-clip background-color background-image background-origin background-position background-repeat background-size'

let kw_border  = "border  border-top border-right border-bottom border-left"
let kw_border .= ' '.'border-color border-top-color border-right-color border-bottom-color border-left-color'
lef kw_border .= ' '.'border-style border-top-style border-right-style border-bottom-style border-left-style'
lef kw_border .= ' '.'border-width border-top-width border-right-width border-bottom-width border-left-width'
let kw_border .= ' '.'border-radius border-top-left-radius border-top-right-radius border-bottom-left-radius border-bottom-right-radius'
lef kw_border .= ' '.'border-collapse border-spacing'

let kw_box = 'box-shadow'

let kw_font = 'font font-face font-family font-size font-size-adjust font-stretch font-style font-variant font-weight'

let kw_text = 'text-align text-decoration text-indent text-overflow text-rendering text-shadow text-transform'

let kw_values = kw_animation." azimuth ".kw_background." ".kw_border." bottom ".kw_box." caption-side clear clip clip-path color content counter-increment counter-reset cue cue-after cue-before cursor direction display elevation empty-cells filter float ".kw_font." height image-rendering ime-mode left letter-spacing line-height list-style list-style-image list-style-position list-style-type margin margin-top margin-right margin-bottom margin-left marker-offset marks mask max-height max-width min-height min-width opacity orient orphans outline outline-color outline-offset outline-style outline-width overflow overflow-x overflow-y padding padding-top padding-right padding-bottom padding-left page-break-after page-break-before page-break-inside pause pause-after pause-before pitch pitch-range play-during pointer-events position quotes resize right richness speak speak-header speak-numeral speak-punctuation speech-rate stress table-layout ".kw_text." top transform transform-origin transition unicode-bidi vertical-align visibility voice-family volume white-space widows width word-spacing word-wrap z-index"

let s:values = split(kw_values)

function! csscomplete#CompleteCSS(findstart, base)

    if a:findstart
        " We need whole line to proper checking
        let line = getline('.')
        let start = col('.') - 1
        let compl_begin = col('.') - 2
        while start >= 0 && line[start - 1] =~ '\%(\k\|-\)'
            let start -= 1
        endwhile
        let b:compl_context = line[0:compl_begin]
        return start
    endif

    " There are few chars important for context:
    " ^ ; : { } /* */
    " Where ^ is start of line and /* */ are comment borders
    " Depending on their relative position to cursor we will know what should
    " be completed.
    " 1. if nearest are ^ or { or ; current word is property
    " 2. if : it is value (with exception of pseudo things)
    " 3. if } we are outside of css definitions
    " 4. for comments ignoring is be the easiest but assume they are the same
    "    as 1.
    " 5. if @ complete at-rule
    " 6. if ! complete important
    if exists("b:compl_context")
        let line = b:compl_context
        unlet! b:compl_context
    else
        let line = a:base
    endif

    let res = []
    let res2 = []
    let borders = {}

    " Check last occurrence of sequence

    let openbrace  = strridx(line, '{')
    let closebrace = strridx(line, '}')
    let colon      = strridx(line, ':')
    let semicolon  = strridx(line, ';')
    let opencomm   = strridx(line, '/*')
    let closecomm  = strridx(line, '*/')
    let style      = strridx(line, 'style\s*=')
    let atrule     = strridx(line, '@')
    let exclam     = strridx(line, '!')

    if openbrace > -1
        let borders[openbrace] = "openbrace"
    endif
    if closebrace > -1
        let borders[closebrace] = "closebrace"
    endif
    if colon > -1
        let borders[colon] = "colon"
    endif
    if semicolon > -1
        let borders[semicolon] = "semicolon"
    endif
    if opencomm > -1
        let borders[opencomm] = "opencomm"
    endif
    if closecomm > -1
        let borders[closecomm] = "closecomm"
    endif
    if style > -1
        let borders[style] = "style"
    endif
    if atrule > -1
        let borders[atrule] = "atrule"
    endif
    if exclam > -1
        let borders[exclam] = "exclam"
    endif


    if len(borders) == 0 || borders[max(keys(borders))] =~ '^\%(openbrace\|semicolon\|opencomm\|closecomm\|style\)$'
        " Complete properties


        let entered_property = matchstr(line, '.\{-}\zs[a-zA-Z-]*$')

        for m in s:values
            if m =~? '^'.entered_property
                call add(res, m . ':')
            elseif m =~? entered_property
                call add(res2, m . ':')
            endif
        endfor

        return res + res2

    elseif borders[max(keys(borders))] == 'colon'
        " Get name of property
        let prop = tolower(matchstr(line, '\zs[a-zA-Z-]*\ze\s*:[^:]\{-}$'))

        if prop == 'azimuth'
            let values = ["left-side", "far-left", "left", "center-left", "center", "center-right", "right", "far-right", "right-side", "behind", "leftwards", "rightwards"]
        elseif prop == 'background-attachment'
            let values = ["scroll", "fixed"]
        elseif prop == 'background-color'
            let values = ["transparent", "rgb(", "#"]
        elseif prop == 'background-image'
            let values = ["url(", "none"]
        elseif prop == 'background-position'
            let vals = matchstr(line, '.*:\s*\zs.*')
            if vals =~ '^\%([a-zA-Z]\+\)\?$'
                let values = ["top", "center", "bottom"]
            elseif vals =~ '^[a-zA-Z]\+\s\+\%([a-zA-Z]\+\)\?$'
                let values = ["left", "center", "right"]
            else
                return []
            endif
        elseif prop == 'background-repeat'
            let values = ["repeat", "repeat-x", "repeat-y", "no-repeat"]
        elseif prop == 'background'
            let values = ["url(", "scroll", "fixed", "transparent", "rgb(", "#", "none", "top", "center", "bottom" , "left", "right", "repeat", "repeat-x", "repeat-y", "no-repeat"]
        elseif prop == 'border-collapse'
            let values = ["collapse", "separate"]
        elseif prop == 'border-color'
            let values = ["rgb(", "#", "transparent"]
        elseif prop == 'border-spacing'
            return []
        elseif prop == 'border-style'
            let values = ["none", "hidden", "dotted", "dashed", "solid", "double", "groove", "ridge", "inset", "outset"]
        elseif prop =~ 'border-\%(top\|right\|bottom\|left\)$'
            let vals = matchstr(line, '.*:\s*\zs.*')
            if vals =~ '^\%([a-zA-Z0-9.]\+\)\?$'
                let values = ["thin", "thick", "medium"]
            elseif vals =~ '^[a-zA-Z0-9.]\+\s\+\%([a-zA-Z]\+\)\?$'
                let values = ["none", "hidden", "dotted", "dashed", "solid", "double", "groove", "ridge", "inset", "outset"]
            elseif vals =~ '^[a-zA-Z0-9.]\+\s\+[a-zA-Z]\+\s\+\%([a-zA-Z(]\+\)\?$'
                let values = ["rgb(", "#", "transparent"]
            else
                return []
            endif
        elseif prop =~ 'border-\%(top\|right\|bottom\|left\)-color'
            let values = ["rgb(", "#", "transparent"]
        elseif prop =~ 'border-\%(top\|right\|bottom\|left\)-style'
            let values = ["none", "hidden", "dotted", "dashed", "solid", "double", "groove", "ridge", "inset", "outset"]
        elseif prop =~ 'border-\%(top\|right\|bottom\|left\)-width'
            let values = ["thin", "thick", "medium"]
        elseif prop == 'border-width'
            let values = ["thin", "thick", "medium"]
        elseif prop == 'border'
            let vals = matchstr(line, '.*:\s*\zs.*')
            if vals =~ '^\%([a-zA-Z0-9.]\+\)\?$'
                let values = ["thin", "thick", "medium"]
            elseif vals =~ '^[a-zA-Z0-9.]\+\s\+\%([a-zA-Z]\+\)\?$'
                let values = ["none", "hidden", "dotted", "dashed", "solid", "double", "groove", "ridge", "inset", "outset"]
            elseif vals =~ '^[a-zA-Z0-9.]\+\s\+[a-zA-Z]\+\s\+\%([a-zA-Z(]\+\)\?$'
                let values = ["rgb(", "#", "transparent"]
            else
                return []
            endif
        elseif prop == 'bottom'
            let values = ["auto"]
        elseif prop == 'caption-side'
            let values = ["top", "bottom"]
        elseif prop == 'clear'
            let values = ["none", "left", "right", "both"]
        elseif prop == 'clip'
            let values = ["auto", "rect("]
        elseif prop == 'color'
            let values = ["rgb(", "#"]
        elseif prop == 'content'
            let values = ["normal", "attr(", "open-quote", "close-quote", "no-open-quote", "no-close-quote"]
        elseif prop =~ 'counter-\%(increment\|reset\)$'
            let values = ["none"]
        elseif prop =~ '^\%(cue-after\|cue-before\|cue\)$'
            let values = ["url(", "none"]
        elseif prop == 'cursor'
            let values = ["url(", "auto", "crosshair", "default", "pointer", "move", "e-resize", "ne-resize", "nw-resize", "n-resize", "se-resize", "sw-resize", "s-resize", "w-resize", "text", "wait", "help", "progress"]
        elseif prop == 'direction'
            let values = ["ltr", "rtl"]
        elseif prop == 'display'
            let values = ["inline", "block", "list-item", "run-in", "inline-block", "table", "inline-table", "table-row-group", "table-header-group", "table-footer-group", "table-row", "table-column-group", "table-column", "table-cell", "table-caption", "none"]
        elseif prop == 'elevation'
            let values = ["below", "level", "above", "higher", "lower"]
        elseif prop == 'empty-cells'
            let values = ["show", "hide"]
        elseif prop == 'float'
            let values = ["left", "right", "none"]
        elseif prop == 'font-family'
            let values = ["sans-serif", "serif", "monospace", "cursive", "fantasy"]
        elseif prop == 'font-size'
            let values = ["xx-small", "x-small", "small", "medium", "large", "x-large", "xx-large", "larger", "smaller"]
        elseif prop == 'font-style'
            let values = ["normal", "italic", "oblique"]
        elseif prop == 'font-variant'
            let values = ["normal", "small-caps"]
        elseif prop == 'font-weight'
            let values = ["normal", "bold", "bolder", "lighter", "100", "200", "300", "400", "500", "600", "700", "800", "900"]
        elseif prop == 'font'
            let values = ["normal", "italic", "oblique", "small-caps", "bold", "bolder", "lighter", "100", "200", "300", "400", "500", "600", "700", "800", "900", "xx-small", "x-small", "small", "medium", "large", "x-large", "xx-large", "larger", "smaller", "sans-serif", "serif", "monospace", "cursive", "fantasy", "caption", "icon", "menu", "message-box", "small-caption", "status-bar"]
        elseif prop =~ '^\%(height\|width\)$'
            let values = ["auto"]
        elseif prop =~ '^\%(left\|rigth\)$'
            let values = ["auto"]
        elseif prop == 'letter-spacing'
            let values = ["normal"]
        elseif prop == 'line-height'
            let values = ["normal"]
        elseif prop == 'list-style-image'
            let values = ["url(", "none"]
        elseif prop == 'list-style-position'
            let values = ["inside", "outside"]
        elseif prop == 'list-style-type'
            let values = ["disc", "circle", "square", "decimal", "decimal-leading-zero", "lower-roman", "upper-roman", "lower-latin", "upper-latin", "none"]
        elseif prop == 'list-style'
            return []
        elseif prop == 'margin'
            let values = ["auto"]
        elseif prop =~ 'margin-\%(right\|left\|top\|bottom\)$'
            let values = ["auto"]
        elseif prop == 'max-height'
            let values = ["auto"]
        elseif prop == 'max-width'
            let values = ["none"]
        elseif prop == 'min-height'
            let values = ["none"]
        elseif prop == 'min-width'
            let values = ["none"]
        elseif prop == 'orphans'
            return []
        elseif prop == 'outline-color'
            let values = ["rgb(", "#"]
        elseif prop == 'outline-style'
            let values = ["none", "hidden", "dotted", "dashed", "solid", "double", "groove", "ridge", "inset", "outset"]
        elseif prop == 'outline-width'
            let values = ["thin", "thick", "medium"]
        elseif prop == 'outline'
            let vals = matchstr(line, '.*:\s*\zs.*')
            if vals =~ '^\%([a-zA-Z0-9,()#]\+\)\?$'
                let values = ["rgb(", "#"]
            elseif vals =~ '^[a-zA-Z0-9,()#]\+\s\+\%([a-zA-Z]\+\)\?$'
                let values = ["none", "hidden", "dotted", "dashed", "solid", "double", "groove", "ridge", "inset", "outset"]
            elseif vals =~ '^[a-zA-Z0-9,()#]\+\s\+[a-zA-Z]\+\s\+\%([a-zA-Z(]\+\)\?$'
                let values = ["thin", "thick", "medium"]
            else
                return []
            endif
        elseif prop == 'overflow'
            let values = ["visible", "hidden", "scroll", "auto"]
        elseif prop == 'padding'
            return []
        elseif prop =~ 'padding-\%(top\|right\|bottom\|left\)$'
            return []
        elseif prop =~ 'page-break-\%(after\|before\)$'
            let values = ["auto", "always", "avoid", "left", "right"]
        elseif prop == 'page-break-inside'
            let values = ["auto", "avoid"]
        elseif prop =~ 'pause-\%(after\|before\)$'
            return []
        elseif prop == 'pause'
            return []
        elseif prop == 'pitch-range'
            return []
        elseif prop == 'pitch'
            let values = ["x-low", "low", "medium", "high", "x-high"]
        elseif prop == 'play-during'
            let values = ["url(", "mix", "repeat", "auto", "none"]
        elseif prop == 'position'
            let values = ["static", "relative", "absolute", "fixed"]
        elseif prop == 'quotes'
            let values = ["none"]
        elseif prop == 'richness'
            return []
        elseif prop == 'speak-header'
            let values = ["once", "always"]
        elseif prop == 'speak-numeral'
            let values = ["digits", "continuous"]
        elseif prop == 'speak-punctuation'
            let values = ["code", "none"]
        elseif prop == 'speak'
            let values = ["normal", "none", "spell-out"]
        elseif prop == 'speech-rate'
            let values = ["x-slow", "slow", "medium", "fast", "x-fast", "faster", "slower"]
        elseif prop == 'stress'
            return []
        elseif prop == 'table-layout'
            let values = ["auto", "fixed"]
        elseif prop == 'text-align'
            let values = ["left", "right", "center", "justify"]
        elseif prop == 'text-decoration'
            let values = ["none", "underline", "overline", "line-through", "blink"]
        elseif prop == 'text-indent'
            return []
        elseif prop == 'text-transform'
            let values = ["capitalize", "uppercase", "lowercase", "none"]
        elseif prop == 'top'
            let values = ["auto"]
        elseif prop == 'unicode-bidi'
            let values = ["normal", "embed", "bidi-override"]
        elseif prop == 'vertical-align'
            let values = ["baseline", "sub", "super", "top", "text-top", "middle", "bottom", "text-bottom"]
        elseif prop == 'visibility'
            let values = ["visible", "hidden", "collapse"]
        elseif prop == 'voice-family'
            return []
        elseif prop == 'volume'
            let values = ["silent", "x-soft", "soft", "medium", "loud", "x-loud"]
        elseif prop == 'white-space'
            let values = ["normal", "pre", "nowrap", "pre-wrap", "pre-line"]
        elseif prop == 'widows'
            return []
        elseif prop == 'word-spacing'
            let values = ["normal"]
        elseif prop == 'word-wrap'
            let values = ["normal", 'break-word']
        elseif prop == 'z-index'
            let values = ["auto"]
        else
            " If no property match it is possible we are outside of {} and
            " trying to complete pseudo-(class|element)
            let element = tolower(matchstr(line, '\zs[a-zA-Z1-6]*\ze:\{1,2\}[^:[:space:]]\{-}$'))
            let tagNames = ',a,abbr,acronym,address,applet,area,article,aside,audio,b,base,basefont,bdo,big,blockquote,body,br,button,canvas,caption,center,cite,code,col,colgroup,command,datalist,dd,del,details,dfn,dir,div,dl,dt,em,embed,fieldset,font,form,figcaption,figure,footer,frame,frameset,h1,h2,h3,h4,h5,h6,head,header,hgroup,hr,html,img,i,iframe,img,input,ins,isindex,kbd,keygen,label,legend,li,link,map,mark,menu,meta,meter,nav,noframes,noscript,object,ol,optgroup,option,output,p,param,pre,progress,q,rp,rt,ruby,s,samp,script,section,select,small,span,strike,strong,style,sub,summary,sup,table,tbody,td,textarea,tfoot,th,thead,time,title,tr,tt,ul,u,var,variant,video,xmp,'
            if stridx(tagNames, ','.element.',') > -1
                let kw_pseudo_classes = 'active checked default disabled empty enbaled first-child first-of-type focus hover indeterminate invalid in-rang not nth-child nth-last-child nth-of-type nth-last-of-type lang last-child last-of-type link only-child only-of-type optional out-of-rang read-only read-write required root target valid visited'

                let kw_pseudo_elements = 'after before choices first-letter first-line repeat-item repeat-index selection value'
                let values = split(kw_pseudo_classes.' '.kw_pseudo_elements)
            else
                return []
            endif
        endif

        " Complete values
        let entered_value = matchstr(line, '.\{-}\zs[a-zA-Z0-9#,.(_-]*$')

        for m in values
            if m =~? '^'.entered_value
                call add(res, m)
            elseif m =~? entered_value
                call add(res2, m)
            endif
        endfor

        return res + res2

    elseif borders[max(keys(borders))] == 'closebrace'

        return []

    elseif borders[max(keys(borders))] == 'exclam'

        " Complete values
        let entered_imp = matchstr(line, '.\{-}!\s*\zs[a-zA-Z ]*$')

        let values = ["important"]

        for m in values
            if m =~? '^'.entered_imp
                call add(res, m)
            endif
        endfor

        return res

    elseif borders[max(keys(borders))] == 'atrule'

        let afterat = matchstr(line, '.*@\zs.*')

        if afterat =~ '\s'

            let atrulename = matchstr(line, '.*@\zs[a-zA-Z-]\+\ze')

            if atrulename == 'media'
                let values = ["screen", "tty", "tv", "projection", "handheld", "print", "braille", "aural", "all"]

                let entered_atruleafter = matchstr(line, '.*@media\s\+\zs.*$')

            elseif atrulename == 'import'
                let entered_atruleafter = matchstr(line, '.*@import\s\+\zs.*$')

                if entered_atruleafter =~ "^[\"']"
                    let filestart = matchstr(entered_atruleafter, '^.\zs.*')
                    let files = split(glob(filestart.'*'), '\n')
                    let values = map(copy(files), '"\"".v:val')

                elseif entered_atruleafter =~ "^url("
                    let filestart = matchstr(entered_atruleafter, "^url([\"']\\?\\zs.*")
                    let files = split(glob(filestart.'*'), '\n')
                    let values = map(copy(files), '"url(".v:val')

                else
                    let values = ['"', 'url(']

                endif

            else
                return []

            endif

            for m in values
                if m =~? '^'.entered_atruleafter
                    call add(res, m)
                elseif m =~? entered_atruleafter
                    call add(res2, m)
                endif
            endfor

            return res + res2

        endif

        let values = ["charset", "page", "media", "import", "font-face"]

        let entered_atrule = matchstr(line, '.*@\zs[a-zA-Z-]*$')

        for m in values
            if m =~? '^'.entered_atrule
                call add(res, m .' ')
            elseif m =~? entered_atrule
                call add(res2, m .' ')
            endif
        endfor

        return res + res2

    endif

    return []

endfunction
