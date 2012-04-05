<<<<<<< HEAD
" Lucius vim color file
" Maintainer: Jonathan Filip <jfilip1024@gmail.com>
" Version: 7.1.0

=======
" Vim color file
" Maintainer:   Jonathan Filip <jfilip1024@gmail.com>
" Last Modified: Wed Oct 21, 2009  11:39AM
" Version: 3.1
"
" GUI / 256 color terminal
"
" I started out trying to combine my favorite parts of other schemes and ended
" up with this (oceandeep, moria, peaksea, wombat, zenburn).
"
" This file also tries to have descriptive comments for each higlighting group
" so it is easy to understand what each part does.


set background=dark
>>>>>>> 651dfa0fa0d44a3581cd767c123ff8aacd47d004
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="lucius"

<<<<<<< HEAD
" Summary:
" Color scheme with dark and light versions (GUI and 256 color terminal).
" 
" Description:
" This color scheme was originally created by combining my favorite parts of
" the following color schemes:
" 
" * oceandeep (vimscript #368)
" * peaksea (vimscript #760)
" * wombat (vimscript #1778)
" * moria (vimscript #1464)
" * zenburn (vimscript #415)
" 
" Version 7 has unified the 256 color terminal and GUI versions (the GUI
" version only uses colors available on the 256 color terminal). The overall
" colors were also toned down a little bit (light version is now a light gray
" instead of white and the dark version is slightly lighter) to make it easier
" on the eyes.
" 
" Version 6+ has been revamped a bit from the original color scheme. If you
" prefer the old style, or the 'blue' version, use the 5Final release. Version
" 6+ only has a light and dark version. The new version tries to unify some of
" the colors and also adds more contrast between text and interface.
" 
" The color scheme is dark, by default. You can change this by setting the
" g:lucius_style variable to "light", "dark", or "dark_dim". Once the color
" scheme is loaded, you can use the commands "LuciusLight", "LuciusDark", or
" "LuciusDarkDim" to change schemes quickly.
" 
" Screenshots of version 7:
" 
" * Dark: http://i.imgur.com/ktdFm.png
" * DarkDim: http://i.imgur.com/0bOCv.png
" * Light: http://i.imgur.com/ndd9A.png
" 
" Screenshots of version 6:
" 
" * Dark: http://i.imgur.com/IzYcB.png
" * Light: http://i.imgur.com/kfJcm.png
" 
" Screenshots of the version 5Final:
" 
" * Dark: http://i.imgur.com/z0bDr.png
" * Light: http://i.imgur.com/BXDiv.png
" * Blue: http://i.imgur.com/Ea1Gq.png
" 
" colorsupport.vim (vimscript #2682) is used to help with mapping the GUI
" settings to the 256 terminal colors.
" 
" This color scheme also has custom colors defined for the following plugins:
"
" * vimwiki (vimscript #2226)
" * tagbar (vimscript #3465)
"
" Installation:
" Copy the file to your vim colors directory and then do :colorscheme lucius.

set background=dark
if exists("g:lucius_style")
    if g:lucius_style == "light"
        set background=light
    endif
else
    let g:lucius_style = "dark"
endif

" set colorcolumn=21,37,53,68,86,100

if g:lucius_style == "dark"


    hi Normal       guifg=#d7d7d7   guibg=#303030   ctermfg=188    ctermbg=236       gui=none      cterm=none

    hi Comment      guifg=#808080   guibg=NONE      ctermfg=244    ctermbg=NONE      gui=none      cterm=none

    hi Constant     guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none
    hi BConstant    guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=bold      cterm=bold

    hi Identifier   guifg=#afd787   guibg=NONE      ctermfg=150    ctermbg=NONE      gui=none      cterm=none
    hi BIdentifier  guifg=#afd787   guibg=NONE      ctermfg=150    ctermbg=NONE      gui=bold      cterm=bold

    hi Statement    guifg=#87d7ff   guibg=NONE      ctermfg=117    ctermbg=NONE      gui=none      cterm=none
    hi BStatement   guifg=#87d7ff   guibg=NONE      ctermfg=117    ctermbg=NONE      gui=bold      cterm=bold

    hi PreProc      guifg=#87d7af   guibg=NONE      ctermfg=115    ctermbg=NONE      gui=none      cterm=none
    hi BPreProc     guifg=#87d7af   guibg=NONE      ctermfg=115    ctermbg=NONE      gui=bold      cterm=bold

    hi Type         guifg=#87d7d7   guibg=NONE      ctermfg=116    ctermbg=NONE      gui=none      cterm=none
    hi BType        guifg=#87d7d7   guibg=NONE      ctermfg=116    ctermbg=NONE      gui=bold      cterm=bold

    hi Special      guifg=#d7afd7   guibg=NONE      ctermfg=182    ctermbg=NONE      gui=none      cterm=none
    hi BSpecial     guifg=#d7afd7   guibg=NONE      ctermfg=182    ctermbg=NONE      gui=bold      cterm=bold

    " ## Text Markup ##
    hi Underlined   guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
    hi Error        guifg=#ff8787   guibg=#870000   ctermfg=210    ctermbg=88        gui=none      cterm=none
    hi Todo         guifg=#d7d75f   guibg=#5f5f00   ctermfg=185    ctermbg=58        gui=none      cterm=none
    hi MatchParen   guifg=bg        guibg=#afd75f   ctermfg=bg     ctermbg=149       gui=none      cterm=bold
    hi NonText      guifg=#5f5f87   guibg=NONE      ctermfg=60     ctermbg=NONE      gui=none      cterm=none
    hi SpecialKey   guifg=#5f875f   guibg=NONE      ctermfg=65     ctermbg=NONE      gui=none      cterm=none
    hi Title        guifg=#5fafd7   guibg=NONE      ctermfg=74     ctermbg=NONE      gui=bold      cterm=bold

    " ## Text Selection ##
    hi Cursor       guifg=bg        guibg=#87afd7   ctermfg=bg     ctermbg=110       gui=none      cterm=none
    hi CursorIM     guifg=bg        guibg=#87afd7   ctermfg=bg     ctermbg=110       gui=none      cterm=none
    hi CursorColumn guifg=NONE      guibg=#444444   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
    hi CursorLine   guifg=NONE      guibg=#444444   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
    hi Visual       guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
    hi VisualNOS    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
    hi IncSearch    guifg=bg        guibg=#57d7d7   ctermfg=bg     ctermbg=80        gui=none      cterm=none
    hi Search       guifg=bg        guibg=#d78700   ctermfg=bg     ctermbg=172       gui=none      cterm=none

    " == UI ==
    hi Pmenu        guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=none      cterm=none
    hi PmenuSel     guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi PmenuSbar    guifg=#b2b2b2   guibg=#d0d0d0   ctermfg=249    ctermbg=252       gui=none      cterm=none
    hi PmenuThumb   guifg=fg        guibg=#808080   ctermfg=fg     ctermbg=244       gui=none      cterm=none
    hi StatusLine   guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=bold      cterm=bold
    hi StatusLineNC guifg=#444444   guibg=#b2b2b2   ctermfg=238    ctermbg=249       gui=none      cterm=none
    hi TabLine      guifg=bg        guibg=#b2b2b2   ctermfg=bg     ctermbg=249       gui=none      cterm=none
    hi TabLineFill  guifg=#444444   guibg=#b2b2b2   ctermfg=238    ctermbg=249       gui=none      cterm=none
    hi TabLineSel   guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=bold      cterm=bold
    hi VertSplit    guifg=#626262   guibg=#b2b2b2   ctermfg=241    ctermbg=249       gui=none      cterm=none
    hi Folded       guifg=#bcbcbc   guibg=#4e4e4e   ctermfg=250    ctermbg=239       gui=bold      cterm=none
    hi FoldColumn   guifg=#bcbcbc   guibg=#4e4e4e   ctermfg=250    ctermbg=239       gui=bold      cterm=none

    " ## Spelling ##
    hi SpellBad     guisp=#d70000                   ctermfg=160    ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellCap     guisp=#00afd7                   ctermfg=38     ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellRare    guisp=#5faf00                   ctermfg=70     ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellLocal   guisp=#d7af00                   ctermfg=178    ctermbg=NONE      gui=undercurl cterm=underline

    " ## Diff ##
    hi DiffAdd      guifg=fg        guibg=#5f875f   ctermfg=fg     ctermbg=65        gui=none      cterm=none
    hi DiffChange   guifg=fg        guibg=#87875f   ctermfg=fg     ctermbg=101       gui=none      cterm=none
    hi DiffDelete   guifg=fg        guibg=#875f5f   ctermfg=fg     ctermbg=95        gui=none      cterm=none
    hi DiffText     guifg=#ffff87   guibg=#87875f   ctermfg=228    ctermbg=101       gui=none      cterm=none

    " ## Misc ##
    hi Directory    guifg=#afd7af   guibg=NONE      ctermfg=151    ctermbg=NONE      gui=none      cterm=none
    hi ErrorMsg     guifg=#ff5f5f   guibg=NONE      ctermfg=203    ctermbg=NONE      gui=none      cterm=none
    hi SignColumn   guifg=#b2b2b2   guibg=#4e4e4e   ctermfg=249    ctermbg=239       gui=none      cterm=none
    hi LineNr       guifg=#626262   guibg=#444444   ctermfg=241    ctermbg=238       gui=none      cterm=none
    hi MoreMsg      guifg=#5fd7d7   guibg=NONE      ctermfg=80     ctermbg=NONE      gui=none      cterm=none
    hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi WarningMsg   guifg=#d7875f   guibg=NONE      ctermfg=173    ctermbg=NONE      gui=none      cterm=none
    hi WildMenu     guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi ColorColumn  guifg=NONE      guibg=#87875f   ctermfg=NONE   ctermbg=101       gui=none      cterm=none
    hi Ignore       guifg=bg                        ctermfg=bg


elseif g:lucius_style == "dark_dim"


    hi Normal       guifg=#bcbcbc   guibg=#303030   ctermfg=250    ctermbg=236       gui=none      cterm=none

    hi Comment      guifg=#6c6c6c   guibg=NONE      ctermfg=242    ctermbg=NONE      gui=none      cterm=none

    hi Constant     guifg=#afaf87   guibg=NONE      ctermfg=144    ctermbg=NONE      gui=none      cterm=none
    hi BConstant    guifg=#afaf87   guibg=NONE      ctermfg=144    ctermbg=NONE      gui=bold      cterm=bold

    hi Identifier   guifg=#87af5f   guibg=NONE      ctermfg=107    ctermbg=NONE      gui=none      cterm=none
    hi BIdentifier  guifg=#87af5f   guibg=NONE      ctermfg=107    ctermbg=NONE      gui=bold      cterm=bold

    hi Statement    guifg=#57afd7   guibg=NONE      ctermfg=74     ctermbg=NONE      gui=none      cterm=none
    hi BStatement   guifg=#57afd7   guibg=NONE      ctermfg=74     ctermbg=NONE      gui=bold      cterm=bold

    hi PreProc      guifg=#5faf87   guibg=NONE      ctermfg=72     ctermbg=NONE      gui=none      cterm=none
    hi BPreProc     guifg=#5faf87   guibg=NONE      ctermfg=72     ctermbg=NONE      gui=bold      cterm=bold

    hi Type         guifg=#5fafaf   guibg=NONE      ctermfg=73     ctermbg=NONE      gui=none      cterm=none
    hi BType        guifg=#5fafaf   guibg=NONE      ctermfg=73     ctermbg=NONE      gui=bold      cterm=bold

    hi Special      guifg=#af87af   guibg=NONE      ctermfg=139    ctermbg=NONE      gui=none      cterm=none
    hi BSpecial     guifg=#af87af   guibg=NONE      ctermfg=139    ctermbg=NONE      gui=bold      cterm=bold

    " ## Text Markup ##
    hi Underlined   guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
    hi Error        guifg=#d75f5f   guibg=#870000   ctermfg=167    ctermbg=88        gui=none      cterm=none
    hi Todo         guifg=#afaf00   guibg=#5f5f00   ctermfg=142    ctermbg=58        gui=none      cterm=none
    hi MatchParen   guifg=bg        guibg=#87af5f   ctermfg=bg     ctermbg=107       gui=none      cterm=bold
    hi NonText      guifg=#5f5f87   guibg=NONE      ctermfg=60     ctermbg=NONE      gui=none      cterm=none
    hi SpecialKey   guifg=#5f875f   guibg=NONE      ctermfg=65     ctermbg=NONE      gui=none      cterm=none
    hi Title        guifg=#00afd7   guibg=NONE      ctermfg=38     ctermbg=NONE      gui=bold      cterm=bold

    " ## Text Selection ##
    hi Cursor       guifg=bg        guibg=#5f87af   ctermfg=bg     ctermbg=67        gui=none      cterm=none
    hi CursorIM     guifg=bg        guibg=#5f87af   ctermfg=bg     ctermbg=67        gui=none      cterm=none
    hi CursorColumn guifg=NONE      guibg=#444444   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
    hi CursorLine   guifg=NONE      guibg=#444444   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
    hi Visual       guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
    hi VisualNOS    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
    hi IncSearch    guifg=bg        guibg=#00afaf   ctermfg=bg     ctermbg=37        gui=none      cterm=none
    hi Search       guifg=bg        guibg=#d78700   ctermfg=bg     ctermbg=172       gui=none      cterm=none

    " == UI ==
    hi Pmenu        guifg=bg        guibg=#8a8a8a   ctermfg=bg     ctermbg=245       gui=none      cterm=none
    hi PmenuSel     guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi PmenuSbar    guifg=#8a8a8a   guibg=#bcbcbc   ctermfg=245    ctermbg=250       gui=none      cterm=none
    hi PmenuThumb   guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none
    hi StatusLine   guifg=bg        guibg=#8a8a8a   ctermfg=bg     ctermbg=245       gui=bold      cterm=bold
    hi StatusLineNC guifg=#444444   guibg=#8a8a8a   ctermfg=238    ctermbg=245       gui=none      cterm=none
    hi TabLine      guifg=bg        guibg=#8a8a8a   ctermfg=bg     ctermbg=245       gui=none      cterm=none
    hi TabLineFill  guifg=#444444   guibg=#8a8a8a   ctermfg=238    ctermbg=245       gui=none      cterm=none
    hi TabLineSel   guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=bold      cterm=bold
    hi VertSplit    guifg=#626262   guibg=#8a8a8a   ctermfg=241    ctermbg=245       gui=none      cterm=none
    hi Folded       guifg=#a8a8a8   guibg=#4e4e4e   ctermfg=248    ctermbg=239       gui=bold      cterm=none
    hi FoldColumn   guifg=#a8a8a8   guibg=#4e4e4e   ctermfg=248    ctermbg=239       gui=bold      cterm=none

    " ## Spelling ##
    hi SpellBad     guisp=#d70000                   ctermfg=160    ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellCap     guisp=#00afd7                   ctermfg=38     ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellRare    guisp=#5faf00                   ctermfg=70     ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellLocal   guisp=#d7af00                   ctermfg=178    ctermbg=NONE      gui=undercurl cterm=underline

    " ## Diff ##
    hi DiffAdd      guifg=fg        guibg=#5f875f   ctermfg=fg     ctermbg=65        gui=none      cterm=none
    hi DiffChange   guifg=fg        guibg=#87875f   ctermfg=fg     ctermbg=101       gui=none      cterm=none
    hi DiffDelete   guifg=fg        guibg=#875f5f   ctermfg=fg     ctermbg=95        gui=none      cterm=none
    hi DiffText     guifg=#d7d75f   guibg=#87875f   ctermfg=185    ctermbg=101       gui=none      cterm=none

    " ## Misc ##
    hi Directory    guifg=#87af87   guibg=NONE      ctermfg=108    ctermbg=NONE      gui=none      cterm=none
    hi ErrorMsg     guifg=#d75f5f   guibg=NONE      ctermfg=167    ctermbg=NONE      gui=none      cterm=none
    hi SignColumn   guifg=#8a8a8a   guibg=#4e4e4e   ctermfg=245    ctermbg=239       gui=none      cterm=none
    hi LineNr       guifg=#626262   guibg=#444444   ctermfg=241    ctermbg=238       gui=none      cterm=none
    hi MoreMsg      guifg=#00afaf   guibg=NONE      ctermfg=37     ctermbg=NONE      gui=none      cterm=none
    hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi WarningMsg   guifg=#af875f   guibg=NONE      ctermfg=173    ctermbg=NONE      gui=none      cterm=none
    hi WildMenu     guifg=fg        guibg=#005f87   ctermfg=fg     ctermbg=24        gui=none      cterm=none
    hi ColorColumn  guifg=NONE      guibg=#87875f   ctermfg=NONE   ctermbg=101       gui=none      cterm=none
    hi Ignore       guifg=bg                        ctermfg=bg


elseif g:lucius_style == "light"


    hi Normal       guifg=#3a3a3a   guibg=#eeeeee   ctermfg=237    ctermbg=255       gui=none      cterm=none

    hi Comment      guifg=#808080   guibg=NONE      ctermfg=244    ctermbg=NONE      gui=none      cterm=none

    hi Constant     guifg=#af5f00   guibg=NONE      ctermfg=130    ctermbg=NONE      gui=none      cterm=none
    hi BConstant    guifg=#af5f00   guibg=NONE      ctermfg=130    ctermbg=NONE      gui=bold      cterm=bold

    hi Identifier   guifg=#008700   guibg=NONE      ctermfg=28     ctermbg=NONE      gui=none      cterm=none
    hi BIdentifier  guifg=#008700   guibg=NONE      ctermfg=28     ctermbg=NONE      gui=bold      cterm=bold

    hi Statement    guifg=#005faf   guibg=NONE      ctermfg=25     ctermbg=NONE      gui=none      cterm=none
    hi BStatement   guifg=#005faf   guibg=NONE      ctermfg=25     ctermbg=NONE      gui=bold      cterm=bold

    hi PreProc      guifg=#008787   guibg=NONE      ctermfg=30     ctermbg=NONE      gui=none      cterm=none
    hi BPreProc     guifg=#008787   guibg=NONE      ctermfg=30     ctermbg=NONE      gui=bold      cterm=bold

    hi Type         guifg=#005f87   guibg=NONE      ctermfg=24     ctermbg=NONE      gui=none      cterm=none
    hi BType        guifg=#005f87   guibg=NONE      ctermfg=24     ctermbg=NONE      gui=bold      cterm=bold

    hi Special      guifg=#870087   guibg=NONE      ctermfg=90     ctermbg=NONE      gui=none      cterm=none
    hi BSpecial     guifg=#870087   guibg=NONE      ctermfg=90     ctermbg=NONE      gui=bold      cterm=bold

    " ## Text Markup ##
    hi Underlined   guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
    hi Error        guifg=#af0000   guibg=#ffafaf   ctermfg=124    ctermbg=217       gui=none      cterm=none
    hi Todo         guifg=#875f00   guibg=#ffff87   ctermfg=94     ctermbg=228       gui=none      cterm=none
    hi MatchParen   guifg=NONE      guibg=#5fd7d7   ctermfg=NONE   ctermbg=80        gui=none      cterm=none
    hi NonText      guifg=#afafd7   guibg=NONE      ctermfg=146    ctermbg=NONE      gui=none      cterm=none
    hi SpecialKey   guifg=#afd7af   guibg=NONE      ctermfg=151    ctermbg=NONE      gui=none      cterm=none
    hi Title        guifg=#005faf   guibg=NONE      ctermfg=25     ctermbg=NONE      gui=bold      cterm=bold

    " ## Text Selection ##
    hi Cursor       guifg=bg        guibg=#5f87af   ctermfg=bg     ctermbg=67        gui=none      cterm=none
    hi CursorIM     guifg=bg        guibg=#5f87af   ctermfg=bg     ctermbg=67        gui=none      cterm=none
    hi CursorColumn guifg=NONE      guibg=#dadada   ctermfg=NONE   ctermbg=253       gui=none      cterm=none
    hi CursorLine   guifg=NONE      guibg=#dadada   ctermfg=NONE   ctermbg=253       gui=none      cterm=none
    hi Visual       guifg=NONE      guibg=#afd7ff   ctermfg=NONE   ctermbg=153       gui=none      cterm=none
    hi VisualNOS    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
    hi IncSearch    guifg=fg        guibg=#57d7d7   ctermfg=fg     ctermbg=80        gui=none      cterm=none
    hi Search       guifg=fg        guibg=#ffaf00   ctermfg=fg     ctermbg=214       gui=none      cterm=none

    " ## UI ##
    hi Pmenu        guifg=bg        guibg=#808080   ctermfg=bg     ctermbg=244       gui=none      cterm=none
    hi PmenuSel     guifg=fg        guibg=#afd7ff   ctermfg=fg     ctermbg=153       gui=none      cterm=none
    hi PmenuSbar    guifg=#808080   guibg=#444444   ctermfg=244    ctermbg=238       gui=none      cterm=none
    hi PmenuThumb   guifg=fg        guibg=#9e9e9e   ctermfg=fg     ctermbg=247       gui=none      cterm=none
    hi StatusLine   guifg=bg        guibg=#808080   ctermfg=bg     ctermbg=244       gui=bold      cterm=bold
    hi StatusLineNC guifg=#e4e4e4   guibg=#808080   ctermfg=254    ctermbg=244       gui=none      cterm=none
    hi TabLine      guifg=bg        guibg=#808080   ctermfg=bg     ctermbg=244       gui=none      cterm=none
    hi TabLineFill  guifg=#b2b2b2   guibg=#808080   ctermfg=249    ctermbg=244       gui=none      cterm=none
    hi TabLineSel   guifg=fg        guibg=#afd7ff   ctermfg=fg     ctermbg=153       gui=none      cterm=none
    hi VertSplit    guifg=#e4e4e4   guibg=#808080   ctermfg=254    ctermbg=244       gui=none      cterm=none
    hi Folded       guifg=#626262   guibg=#bcbcbc   ctermfg=241    ctermbg=250       gui=bold      cterm=none
    hi FoldColumn   guifg=#626262   guibg=#bcbcbc   ctermfg=241    ctermbg=250       gui=bold      cterm=none

    " ## Spelling ##
    hi SpellBad     guisp=#d70000                   ctermfg=160    ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellCap     guisp=#00afd7                   ctermfg=38     ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellRare    guisp=#5faf00                   ctermfg=70     ctermbg=NONE      gui=undercurl cterm=underline
    hi SpellLocal   guisp=#d7af00                   ctermfg=178    ctermbg=NONE      gui=undercurl cterm=underline

    " ## Diff ##
    hi DiffAdd      guifg=fg        guibg=#afd7af   ctermfg=fg     ctermbg=151       gui=none      cterm=none
    hi DiffChange   guifg=fg        guibg=#d7d7af   ctermfg=fg     ctermbg=187       gui=none      cterm=none
    hi DiffDelete   guifg=fg        guibg=#d7afaf   ctermfg=fg     ctermbg=181       gui=none      cterm=none
    hi DiffText     guifg=#d75f00   guibg=#d7d7af   ctermfg=166    ctermbg=187       gui=bold      cterm=bold

    " ## Misc ##
    hi Directory    guifg=#00875f   guibg=NONE      ctermfg=29     ctermbg=NONE      gui=none      cterm=none
    hi ErrorMsg     guifg=#af0000   guibg=NONE      ctermfg=124    ctermbg=NONE      gui=none      cterm=none
    hi SignColumn   guifg=#626262   guibg=#d0d0d0   ctermfg=241    ctermbg=252       gui=none      cterm=none
    hi LineNr       guifg=#9e9e9e   guibg=#dadada   ctermfg=247    ctermbg=253       gui=none      cterm=none
    hi MoreMsg      guifg=#005fd7   guibg=NONE      ctermfg=26     ctermbg=NONE      gui=none      cterm=none
    hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
    hi WarningMsg   guifg=#af5700   guibg=NONE      ctermfg=130    ctermbg=NONE      gui=none      cterm=none
    hi WildMenu     guifg=fg        guibg=#afd7ff   ctermfg=fg     ctermbg=153       gui=none      cterm=none
    hi ColorColumn  guifg=NONE      guibg=#d7d7af   ctermfg=NONE   ctermbg=187       gui=none      cterm=none
    hi Ignore       guifg=bg                        ctermfg=bg


endif


" ## Vimwiki Colors ##
hi link VimwikiHeader1 BIdentifier
hi link VimwikiHeader2 BPreProc
hi link VimwikiHeader3 BStatement
hi link VimwikiHeader4 BSpecial
hi link VimwikiHeader5 BConstant
hi link VimwikiHeader6 BType

" ## Tagbar Colors ##
hi link TagbarAccessPublic Constant
hi link TagbarAccessProtected Type
hi link TagbarAccessPrivate PreProc

" ## Commands ##
command! LuciusLight let g:lucius_style = "light" | colorscheme lucius
command! LuciusDark let g:lucius_style = "dark" | colorscheme lucius
command! LuciusDarkDim let g:lucius_style = "dark_dim" | colorscheme lucius


=======
" Some other colors to save
" blue: 3eb8e5
" green: 92d400
" c green: d5f876, cae682
" new blue: 002D62
" new gray: CCCCCC


" Base color
" ----------
hi Normal           guifg=#e0e0e0           guibg=#202020
hi Normal           ctermfg=253             ctermbg=235


" Comment Group
" -------------
" any comment
hi Comment          guifg=#606060                                   gui=none
hi Comment          ctermfg=240                                     cterm=none


" Constant Group
" --------------
" any constant
hi Constant         guifg=#8cd0d3                                   gui=none
hi Constant         ctermfg=116                                     cterm=none
" strings
hi String           guifg=#80c0d9                                   gui=none
hi String           ctermfg=110                                     cterm=none
" character constant
hi Character        guifg=#80c0d9                                   gui=none
hi Character        ctermfg=110                                     cterm=none
" numbers decimal/hex
hi Number           guifg=#8cd0d3                                   gui=none
hi Number           ctermfg=116                                     cterm=none
" true, false
hi Boolean          guifg=#8cd0d3                                   gui=none
hi Boolean          ctermfg=116                                     cterm=none
" float
hi Float            guifg=#8cd0d3                                   gui=none
hi Float            ctermfg=116                                     cterm=none


" Identifier Group
" ----------------
" any variable name
hi Identifier       guifg=#efaf7f                                   gui=none
hi Identifier       ctermfg=216                                     cterm=none
" function, method, class
hi Function         guifg=#efaf7f                                   gui=none
hi Function         ctermfg=216                                     cterm=none


" Statement Group
" ---------------
" any statement
hi Statement        guifg=#b3d38c                                   gui=none
hi Statement        ctermfg=150                                     cterm=none
" if, then, else
hi Conditional      guifg=#b3d38c                                   gui=none
hi Conditional      ctermfg=150                                     cterm=none
" try, catch, throw, raise
hi Exception        guifg=#b3d38c                                   gui=none
hi Exception        ctermfg=150                                     cterm=none
" for, while, do
hi Repeat           guifg=#b3d38c                                   gui=none
hi Repeat           ctermfg=150                                     cterm=none
" case, default
hi Label            guifg=#b3d38c                                   gui=none
hi Label            ctermfg=150                                     cterm=none
" sizeof, +, *
hi Operator         guifg=#b3d38c                                   gui=none
hi Operator         ctermfg=150                                     cterm=none
" any other keyword
hi Keyword          guifg=#b3d38c                                   gui=none
hi Keyword          ctermfg=150                                     cterm=none


" Preprocessor Group
" ------------------
" generic preprocessor
hi PreProc          guifg=#f0dfaf                                   gui=none
hi PreProc          ctermfg=223                                     cterm=none
" #include
hi Include          guifg=#f0dfaf                                   gui=none
hi Include          ctermfg=223                                     cterm=none
" #define
hi Define           guifg=#f0dfaf                                   gui=none
hi Define           ctermfg=223                                     cterm=none
" same as define
hi Macro            guifg=#f0dfaf                                   gui=none
hi Macro            ctermfg=223                                     cterm=none
" #if, #else, #endif
hi PreCondit        guifg=#f0dfaf                                   gui=none
hi PreCondit        ctermfg=223                                     cterm=none


" Type Group
" ----------
" int, long, char
hi Type             guifg=#93d6a9                                   gui=none
hi Type             ctermfg=115                                     cterm=none
" static, register, volative
hi StorageClass     guifg=#93d6a9                                   gui=none
hi StorageClass     ctermfg=115                                     cterm=none
" struct, union, enum
hi Structure        guifg=#93d6a9                                   gui=none
hi Structure        ctermfg=115                                     cterm=none
" typedef
hi Typedef          guifg=#93d6a9                                   gui=none
hi Typedef          ctermfg=115                                     cterm=none


" Special Group
" -------------
" any special symbol
hi Special          guifg=#cca3b3                                   gui=none
hi Special          ctermfg=181                                     cterm=none
" special character in a constant
hi SpecialChar      guifg=#cca3b3                                   gui=none
hi SpecialChar      ctermfg=181                                     cterm=none
" things you can CTRL-]
hi Tag              guifg=#cca3b3                                   gui=none
hi Tag              ctermfg=181                                     cterm=none
" character that needs attention
hi Delimiter        guifg=#cca3b3                                   gui=none
hi Delimiter        ctermfg=181                                     cterm=none
" special things inside a comment
hi SpecialComment   guifg=#cca3b3                                   gui=none
hi SpecialComment   ctermfg=181                                     cterm=none
" debugging statements
hi Debug            guifg=#cca3b3           guibg=NONE              gui=none
hi Debug            ctermfg=181             ctermbg=NONE            cterm=none


" Underlined Group
" ----------------
" text that stands out, html links
hi Underlined       guifg=fg                                        gui=underline
hi Underlined       ctermfg=fg                                      cterm=underline


" Ignore Group
" ------------
" left blank, hidden
hi Ignore           guifg=bg
hi Ignore           ctermfg=bg


" Error Group
" -----------
" any erroneous construct
hi Error            guifg=#e37170           guibg=#432323           gui=none
hi Error            ctermfg=167             ctermbg=52            cterm=none


" Todo Group
" ----------
" todo, fixme, note, xxx
hi Todo             guifg=#efef8f           guibg=NONE              gui=underline
hi Todo             ctermfg=228             ctermbg=NONE            cterm=underline


" Spelling
" --------
" word not recognized
hi SpellBad         guisp=#ee0000                                   gui=undercurl
hi SpellBad                                 ctermbg=9               cterm=undercurl
" word not capitalized
hi SpellCap         guisp=#eeee00                                   gui=undercurl
hi SpellCap                                 ctermbg=12              cterm=undercurl
" rare word
hi SpellRare        guisp=#ffa500                                   gui=undercurl
hi SpellRare                                ctermbg=13              cterm=undercurl
" wrong spelling for selected region
hi SpellLocal       guisp=#ffa500                                   gui=undercurl
hi SpellLocal                               ctermbg=14              cterm=undercurl


" Cursor
" ------
" character under the cursor
hi Cursor           guifg=bg                guibg=#a3e3ed
hi Cursor           ctermfg=bg              ctermbg=153
" like cursor, but used when in IME mode
hi CursorIM         guifg=bg                guibg=#96cdcd
hi CursorIM         ctermfg=bg              ctermbg=116
" cursor column
hi CursorColumn     guifg=NONE              guibg=#202438           gui=none
hi CursorColumn     ctermfg=NONE            ctermbg=236             cterm=none
" cursor line/row
hi CursorLine       gui=NONE                guibg=#202438           gui=none
hi CursorLine       cterm=NONE              ctermbg=236             cterm=none


" Misc
" ----
" directory names and other special names in listings
hi Directory        guifg=#c0e0b0                                   gui=none
hi Directory        ctermfg=151                                     cterm=none
" error messages on the command line
hi ErrorMsg         guifg=#ee0000           guibg=NONE              gui=none
hi ErrorMsg         ctermfg=196             ctermbg=NONE            cterm=none
" column separating vertically split windows
hi VertSplit        guifg=#777777           guibg=#363946           gui=none
hi VertSplit        ctermfg=242             ctermbg=237             cterm=none
" columns where signs are displayed (used in IDEs)
hi SignColumn       guifg=#9fafaf           guibg=#181818           gui=none
hi SignColumn       ctermfg=145             ctermbg=233             cterm=none
" line numbers
hi LineNr           guifg=#818698           guibg=#363946
hi LineNr           ctermfg=102             ctermbg=237
" match parenthesis, brackets
hi MatchParen       guifg=#00ff00           guibg=NONE              gui=bold
hi MatchParen       ctermfg=46              ctermbg=NONE            cterm=bold
" the 'more' prompt when output takes more than one line
hi MoreMsg          guifg=#2e8b57                                   gui=none
hi MoreMsg          ctermfg=29                                      cterm=none
" text showing what mode you are in
hi ModeMsg          guifg=#76d5f8           guibg=NONE              gui=none
hi ModeMsg          ctermfg=117             ctermbg=NONE            cterm=none
" the '~' and '@' and showbreak, '>' double wide char doesn't fit on line
hi NonText          guifg=#404040                                   gui=none
hi NonText          ctermfg=235                                     cterm=none
" the hit-enter prompt (show more output) and yes/no questions
hi Question         guifg=fg                                        gui=none
hi Question         ctermfg=fg                                      cterm=none
" meta and special keys used with map, unprintable characters
hi SpecialKey       guifg=#404040
hi SpecialKey       ctermfg=237
" titles for output from :set all, :autocmd, etc
hi Title            guifg=#62bdde                                   gui=none
hi Title            ctermfg=74                                      cterm=none
"hi Title            guifg=#5ec8e5                                   gui=none
" warning messages
hi WarningMsg       guifg=#e5786d                                   gui=none
hi WarningMsg       ctermfg=173                                     cterm=none
" current match in the wildmenu completion
hi WildMenu         guifg=#cae682           guibg=#363946           gui=bold,underline
hi WildMenu         ctermfg=16              ctermbg=186             cterm=bold


" Diff
" ----
" added line
hi DiffAdd          guifg=#80a090           guibg=#313c36           gui=none
hi DiffAdd          ctermfg=108             ctermbg=22              cterm=none
" changed line
hi DiffChange       guifg=NONE              guibg=#4a343a           gui=none
hi DiffChange       ctermfg=fg              ctermbg=52              cterm=none
" deleted line
hi DiffDelete       guifg=#6c6661           guibg=#3c3631           gui=none
hi DiffDelete       ctermfg=59              ctermbg=58              cterm=none
" changed text within line
hi DiffText         guifg=#f05060           guibg=#4a343a           gui=bold
hi DiffText         ctermfg=203             ctermbg=52             cterm=bold


" Folds
" -----
" line used for closed folds
hi Folded           guifg=#91d6f8           guibg=#363946           gui=none
hi Folded           ctermfg=117             ctermbg=238             cterm=none
" column on side used to indicated open and closed folds
hi FoldColumn       guifg=#91d6f8           guibg=#363946           gui=none
hi FoldColumn       ctermfg=117             ctermbg=238             cterm=none


" Search
" ------
" highlight incremental search text; also highlight text replaced with :s///c
hi IncSearch        guifg=#66ffff                                   gui=reverse
hi IncSearch        ctermfg=87                                      cterm=reverse
" hlsearch (last search pattern), also used for quickfix
hi Search                                    guibg=#ffaa33          gui=none
hi Search                                    ctermbg=214            cterm=none


" Popup Menu
" ----------
" normal item in popup
hi Pmenu            guifg=#e0e0e0           guibg=#303840           gui=none
hi Pmenu            ctermfg=253             ctermbg=233             cterm=none
" selected item in popup
hi PmenuSel         guifg=#cae682           guibg=#505860           gui=none
hi PmenuSel         ctermfg=186             ctermbg=237             cterm=none
" scrollbar in popup
hi PMenuSbar                                guibg=#505860           gui=none
hi PMenuSbar                                ctermbg=59              cterm=none
" thumb of the scrollbar in the popup
hi PMenuThumb                               guibg=#808890           gui=none
hi PMenuThumb                               ctermbg=102             cterm=none


" Status Line
" -----------
" status line for current window
hi StatusLine       guifg=#e0e0e0           guibg=#363946           gui=bold
hi StatusLine       ctermfg=254             ctermbg=237             cterm=bold
" status line for non-current windows
hi StatusLineNC     guifg=#767986           guibg=#363946           gui=none
hi StatusLineNC     ctermfg=244             ctermbg=237             cterm=none


" Tab Lines
" ---------
" tab pages line, not active tab page label
hi TabLine          guifg=#b6bf98           guibg=#363946           gui=none
hi TabLine          ctermfg=244             ctermbg=236             cterm=none
" tab pages line, where there are no labels
hi TabLineFill      guifg=#cfcfaf           guibg=#363946           gui=none
hi TabLineFill      ctermfg=187             ctermbg=236             cterm=none
" tab pages line, active tab page label
hi TabLineSel       guifg=#efefef           guibg=#414658           gui=bold
hi TabLineSel       ctermfg=254             ctermbg=236             cterm=bold


" Visual
" ------
" visual mode selection
hi Visual           guifg=NONE              guibg=#364458
hi Visual           ctermfg=NONE            ctermbg=24
" visual mode selection when vim is not owning the selection (x11 only)
hi VisualNOS        guifg=fg                                        gui=underline
hi VisualNOS        ctermfg=fg                                      cterm=underline
>>>>>>> 651dfa0fa0d44a3581cd767c123ff8aacd47d004
