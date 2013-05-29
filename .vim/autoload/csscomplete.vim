" Vim completion script
" Based on Mikolaj Machowski's csscomplete.vim
" Based on Chris Yip's experience version
"
" Language: CSS 3
" Maintainer: Christian Angermann
" Last Change: 26/05/13
"
function! csscomplete#backgroundPosition(line)
  let vertical =   split('top center bottom')
  let horizontal = split('left center right')
  let vals = matchstr(a:line, '.*:\s*\zs.*')
  if vals =~ '^\%([a-zA-Z]\+\)\?$'
    return horizontal
  elseif vals =~ '^[a-zA-Z]\+\s\+\%([a-zA-Z]\+\)\?$'
    return vertical
  else
    return []
  endif
endfunction

function! csscomplete#getMultiProperties(line, width, style, color_values)
  let vals = matchstr(a:line, '.*:\s*\zs.*')
  if vals =~ '^\%([a-zA-Z0-9.]\+\)\?$'
    return split(a:width)
  elseif vals =~ '^[a-zA-Z0-9.]\+\s\+\%([a-zA-Z]\+\)\?$'
    return split(a:style)
  elseif vals =~ '^[a-zA-Z0-9.]\+\s\+[a-zA-Z]\+\s\+\%([a-zA-Z(]\+\)\?$'
    return a:color_values
  else
    return []
  endif
endfunction

" ==============================================================================

function! csscomplete#border(prop, line, color_values)
  let style = 'none hidden dotted dashed solid double groove ridge inset outset'
  let width = 'thin thick medium'
  let collapse = 'collapse separate'

  let dimension_condition = '\%(top\|right\|bottom\|left\)'

  if a:prop == 'border-collapse'
    return split(collapse)
  elseif a:prop == 'border-color'
    return a:color_values
  elseif a:prop == 'border-style'
    return split(style)
  elseif a:prop =~ 'border-'.dimension_condition.'$'
    return csscomplete#getMultiProperties(a:line, width, style, a:color_values)
  elseif a:prop =~ 'border-'.dimension_condition.'-color'
    return a:color_values
  elseif a:prop =~ 'border-'.dimension_condition.'-style'
    return split(style)
  elseif a:prop =~ 'border-'.dimension_condition.'-width'
    return split(width)
  elseif a:prop == 'border-width'
    return split(width)
  elseif a:prop == 'border'
    return csscomplete#getMultiProperties(a:line, width, style, a:color_values)
  endif
endfunction


function! csscomplete#collectPropertyValues(property)
  let result = []
  let values = a:property.VALUES
  for key in keys(values)
    let result += values[key]
  endfor
  return result
endfunction

function! csscomplete#getPropertiesValues(line)
  let props = { 'multiple_keywords': {} }
  let common_values = {
    \'timing-function': split('ease ease-in ease-out ease-in-out linear cubic-bezier( step-start step-stop steps('),
    \'color':           split('transparent # rgb( rgba( hsl('),
    \'url':             split('url( none')
  \}

  let props.animation = {
    \'KEYWORDS': 'animation animation-delay animation-direction animation-duration animation-fill-mode animation-iteration-count animation-name animation-play-state animation-timing-function',
    \'VALUES': {
      \'animation-direction':       split('bam lternate alternate-reverse normal reverse'),
      \'animation-iteration-count': split('infinite'),
      \'animation-name':            split('none'),
      \'animation-timing-function': common_values['timing-function']
    \}
  \}
  let props.animation.VALUES.animation = csscomplete#collectPropertyValues(props.animation)
  let props.multiple_keywords.ANIMATION = 'animation'

  let props.align = {
    \'KEYWORDS': 'align-items align-self',
    \'VALUES': {
       \'align-items': split('flex-start flex-end center baseline strech')
    \}
  \}
  let props.align.VALUES['align-self'] = ['auto'] + props.align.VALUES['align-items']
  let props.multiple_keywords.ALIGN = 'align'

  let props.transition = {
    \'KEYWORDS': 'transition transition-delay transition-duration transition-property transition-timing-function',
    \'VALUES': {
      \'transition-property':        split('all none color background-color'),
      \'transition-timing-function': common_values['timing-function']
    \}
  \}
  let props.transition.VALUES.transition = csscomplete#collectPropertyValues(props.transition)
  let props.multiple_keywords.TRANSITION = 'transition'

  let props.color = {
    \'KEYWORDS': 'color',
    \'VALUES': common_values['color']
  \}

  let props.background = {
    \'KEYWORDS': 'background background-attachment background-clip background-color background-image background-origin background-position background-repeat background-size',
    \'VALUES': {
      \'background-attachment': split('scroll fixed'),
      \'background-clip':       split('border-box content-box padding-box inherit'),
      \'background-color':      common_values['color'],
      \'background-image':      common_values['url'],
      \'background-origin':     split('border-box content-box padding-box inherit'),
      \'background-repeat':     split('repeat repeat-x repeat-y no-repeat'),
      \'background-size':       split('auto cover contain'),
      \'background-position':   csscomplete#backgroundPosition(a:line)
    \}
  \}
  let props.background.VALUES.background = csscomplete#collectPropertyValues(props.background)
  let props.multiple_keywords.BACKGROUND = 'background'

  let props.outline = {
    \'KEYWORDS': 'outline outline-color outline-offset outline-style outline-width',
    \'VALUES': {
       \'outline-style': split('none hidden dotted dashed solid double groove ridge inset outset'),
       \'outline-width': split('thin thick medium'),
       \'outline-color': common_values['color']
    \}
  \}
  let props.outline.VALUES.outline = csscomplete#collectPropertyValues(props.outline)
  let props.multiple_keywords.OUTLINE = 'outline'

  let props.font = {
    \'KEYWORDS': 'font font-face font-family font-size font-size-adjust font-stretch font-style font-variant font-weight',
    \'VALUES': {
      \'font-family':  ["sans-serif", "serif", "monospace", "cursive", "fantasy"],
      \'font-size':    ["xx-small", "x-small", "small", "medium", "large", "x-large", "xx-large", "larger", "smaller"],
      \'font-style':   ["normal", "italic", "oblique"],
      \'font-variant': ["normal", "small-caps"],
      \'font-weight':  ["normal", "bold", "bolder", "lighter", "100", "200", "300", "400", "500", "600", "700", "800", "900"]
    \}
  \}
  let props.font.VALUES.font = csscomplete#collectPropertyValues(props.font)
  let props.multiple_keywords.FONT = 'font'

  let props.text = {
    \'KEYWORDS': 'text-align text-decoration text-indent text-overflow text-rendering text-shadow text-transform',
    \'VALUES': {
      \'text-align':      ["left", "right", "center", "justify"],
      \'text-decoration': ["none", "underline", "overline", "line-through", "blink"],
      \'text-shadow':     common_values['color'],
      \'text-transform':  ["capitalize", "uppercase", "lowercase", "none"]
    \}
  \}
  let props.multiple_keywords.TEXT = 'text'

  let LIST_STYLE = 'list-style'
  let props[LIST_STYLE] = {
    \'KEYWORDS': 'list-style list-style-image list-style-position list-style-type',
    \'VALUES': {
      \'list-style-image':    common_values['url'],
      \'list-style-position': ["inside", "outside"],
      \'list-style-type':     ["disc", "circle", "square", "decimal", "decimal-leading-zero", "lower-roman", "upper-roman", "lower-latin", "upper-latin", "none"]
    \}
  \}
  let props[LIST_STYLE].VALUES[LIST_STYLE] = csscomplete#collectPropertyValues(props[LIST_STYLE])
  let props.multiple_keywords[LIST_STYLE] = LIST_STYLE

  let border_color =  'border-color border-top-color border-right-color border-bottom-color border-left-color'
  let border_radius = 'border-radius border-top-left-radius border-top-right-radius border-bottom-left-radius border-bottom-right-radius'
  let border_style =  'border-style border-top-style border-right-style border-bottom-style border-left-style'
  let border_width =  'border-width border-top-width border-right-width border-bottom-width border-left-width'
  let borders =       'border border-top border-right border-bottom border-left border-collapse border-spacing '.border_color.' '.border_radius.' '.border_style.' '.border_width

  let boxes = 'box-shadow box-sizing'
  let props.KEYWORDS = split('align-items '
        \.  props.animation.KEYWORDS
        \.' azimuth backface-visibility '
        \.  props.background.KEYWORDS.' '.borders.' bottom '.boxes.' caption-side clear clip clip-path'
        \.  props.color.KEYWORDS.' content counter-increment counter-reset cue cue-after cue-before cursor'
        \.' direction display elevation empty-cells filter float '
        \.  props.font.KEYWORDS.' height image-rendering'
        \.' ime-mode left letter-spacing line-height'
        \.  props[LIST_STYLE].KEYWORDS
        \.' list-style-type margin margin-top margin-right margin-bottom margin-left marker-offset marks'
        \.' mask max-height max-width min-height min-width opacity orient orphans'
        \.  props.outline.KEYWORDS.' overflow overflow-x overflow-y'
        \.' padding padding-top padding-right padding-bottom padding-left'
        \.' page-break-after page-break-before page-break-inside pause pause-after pause-before'
        \.' pitch pitch-range play-during pointer-events position quotes resize right richness'
        \.' speak speak-header speak-numeral speak-punctuation speech-rate stress table-layout '
        \.  props.text.KEYWORDS.' top transform transform-origin '
        \.  props.transition.KEYWORDS.' unicode-bidi vertical-align visibility voice-family volume white-space widows width word-spacing word-wrap z-index'
        \)

  return props
endfunction


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
  "   as 1.
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

  let propertiesValues = csscomplete#getPropertiesValues(line)
  let KEYWORDS = propertiesValues.KEYWORDS


  " Check last occurrence of sequence

  let openbrace =  strridx(line, '{')
  let closebrace = strridx(line, '}')
  let colon =      strridx(line, ':')
  let semicolon =  strridx(line, ';')
  let opencomm =   strridx(line, '/*')
  let closecomm =  strridx(line, '*/')
  let style =      strridx(line, 'style\s*=')
  let atrule =     strridx(line, '@')
  let exclam =     strridx(line, '!')

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

    for m in KEYWORDS
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

    let is_a_multiple_property = '^\%('. join( keys( propertiesValues.multiple_keywords ), '\|' ) .'\)'

    if prop == 'azimuth'
     let values = ["left-side", "far-left", "left", "center-left", "center", "center-right", "right", "far-right", "right-side", "behind", "leftwards", "rightwards"]
    elseif prop == 'backface-visibility'
      let values = ["hidden", "visible"]
   " animation, background, font, text, transition etc.
    elseif prop =~ is_a_multiple_property
      let values = propertiesValues[(split(prop, '-')[0])].VALUES[prop]
    elseif prop =~ '^border'
      let values = csscomplete#border(prop, line, propertiesValues.color.VALUES)
    elseif prop == 'bottom'
      let values = ["auto"]
    elseif prop == 'caption-side'
      let values = ["top", "bottom"]
    elseif prop == 'clear'
      let values = ["none", "left", "right", "both"]
    elseif prop == 'clip'
      let values = ["auto", "rect("]
    elseif prop == 'color'
      let values = propertiesValues.color.VALUES
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
    elseif prop == 'filter'
      let values = ["url(", "blur("]
    elseif prop == 'float'
      let values = ["left", "right", "none"]
    elseif prop =~ '^\%(height\|width\)$'
      let values = ["auto"]
    elseif prop =~ '^\%(left\|rigth\)$'
      let values = ["auto"]
    elseif prop == 'letter-spacing'
      let values = ["normal"]
    elseif prop == 'line-height'
      let values = ["normal"]
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
      let tag_names = ',a,abbr,acronym,address,applet,area,article,aside,audio,b,base,basefont,bdo,big,blockquote,body,br,button,canvas,caption,center,cite,code,col,colgroup,command,datalist,dd,del,details,dfn,dir,div,dl,dt,em,embed,fieldset,font,form,figcaption,figure,footer,frame,frameset,h1,h2,h3,h4,h5,h6,head,header,hgroup,hr,html,img,i,iframe,img,input,ins,isindex,kbd,keygen,label,legend,li,link,map,mark,menu,meta,meter,nav,noframes,noscript,object,ol,optgroup,option,output,p,param,pre,progress,q,rp,rt,ruby,s,samp,script,section,select,small,span,strike,strong,style,sub,summary,sup,table,tbody,td,textarea,tfoot,th,thead,time,title,tr,tt,ul,u,var,variant,video,xmp,'
      if stridx(tag_names, ','.element.',') > -1
        let pseudo_classes = 'active checked default disabled empty enbaled first-child first-of-type focus fullscreen hover indeterminate invalid in-rang lang last-child last-of-type link not nth-child nth-last-child nth-of-type nth-last-of-type only-child only-of-type optional out-of-rang read-only read-write required root target valid visited'
        let pseudo_elements = 'after before choices first-letter first-line repeat-item repeat-index selection value'
        let values = split(pseudo_classes.' '.pseudo_elements)
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
