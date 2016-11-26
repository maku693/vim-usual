set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="usual"

" Vim UI
hi Cursor        guifg=#ffffff ctermfg=15 guibg=#0060c0 ctermbg=4 
hi Cursorline    guifg=NONE ctermfg=NONE guibg=#c0c0c0 ctermbg=7 gui=NONE cterm=NONE 
hi MatchParen    guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi Pmenu         guifg=#ffffff ctermfg=15 guibg=#606060 ctermbg=8 
hi PmenuThumb    guibg=#c0c0c0 ctermbg=7 
hi PmenuSBar     guibg=#606060 ctermbg=8 
hi PmenuSel      guifg=#ffffff ctermfg=15 guibg=#0060c0 ctermbg=4 
hi ColorColumn   guibg=#c0c0c0 ctermbg=7 
hi SpellBad      guifg=#c00000 ctermfg=1 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi SpellCap      guifg=#008000 ctermfg=2 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi SpellRare     guifg=#c06000 ctermfg=3 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi SpellLocal    guifg=#a000a0 ctermfg=5 guibg=NONE ctermbg=NONE gui=underline cterm=underline 
hi NonText       guifg=#c0c0c0 ctermfg=7 
hi LineNr        guifg=#606060 ctermfg=8 guibg=NONE ctermbg=NONE 
hi CursorLineNr  guifg=#0060c0 ctermfg=4 guibg=NONE ctermbg=NONE 
hi ModeMsg       guifg=#c06000 ctermfg=3 guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi Visual        guifg=NONE ctermfg=NONE guibg=#c0c0c0 ctermbg=7 
hi IncSearch     guifg=#ffffff ctermfg=15 guibg=#c06000 ctermbg=3 gui=NONE cterm=NONE 
hi Search        guifg=#ffffff ctermfg=15 guibg=#c06000 ctermbg=3 
hi StatusLine    guifg=#ffffff ctermfg=15 guibg=#0060c0 ctermbg=4 gui=bold cterm=bold 
hi StatusLineNC  guifg=#ffffff ctermfg=15 guibg=#606060 ctermbg=8 gui=bold cterm=bold 
hi VertSplit     guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE 
hi TabLine       guifg=#ffffff ctermfg=15 guibg=#c0c0c0 ctermbg=7 gui=NONE cterm=NONE 
hi TabLineSel    guifg=#ffffff ctermfg=15 guibg=#606060 ctermbg=8 
hi TabLineFill   guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE 
hi Folded        guifg=#606060 ctermfg=8 guibg=NONE ctermbg=NONE 
hi Directory     guifg=#008080 ctermfg=6 
hi Title         guifg=NONE ctermfg=NONE 
hi ErrorMsg      guifg=#ffffff ctermfg=15 guibg=#c00000 ctermbg=1 
hi WarningMsg    guifg=#ffffff ctermfg=15 guibg=#c06000 ctermbg=3 
hi DiffAdd       guifg=#ffffff ctermfg=15 guibg=#008000 ctermbg=2 
hi DiffChange    guifg=#ffffff ctermfg=15 guibg=#c06000 ctermbg=3 
hi DiffDelete    guifg=#ffffff ctermfg=15 guibg=#c00000 ctermbg=1 
hi DiffText      guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=bold cterm=bold 
hi WildMenu      guifg=#ffffff ctermfg=15 guibg=#606060 ctermbg=8 gui=bold cterm=bold 

hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link FoldColumn    SignColumn
hi! link MoreMsg       ModeMsg
hi! link Question      ModeMsg
hi! link SpecialKey    NonText

" Generic syntax
hi Comment     guifg=#606060 ctermfg=8 
hi Constant    guifg=#c06000 ctermfg=3 
hi String      guifg=#c00000 ctermfg=1 
hi Character   guifg=#0060c0 ctermfg=4 
hi Number      guifg=#0060c0 ctermfg=4 
hi Boolean     guifg=#a000a0 ctermfg=5 
hi Float       guifg=#0060c0 ctermfg=4 
hi Identifier  guifg=#0060c0 ctermfg=4 
hi Statement   guifg=#a000a0 ctermfg=5 gui=NONE cterm=NONE 
hi PreProc     guifg=#c06000 ctermfg=3 
hi Type        guifg=#a000a0 ctermfg=5 gui=NONE cterm=NONE 
hi Special     guifg=#c06000 ctermfg=3 
hi Delimiter   guifg=NONE ctermfg=NONE 
hi Underlined  guifg=#0060c0 ctermfg=4 gui=underline cterm=underline 
hi Ignore      guifg=#c0c0c0 ctermfg=7 
hi Error       guifg=#ffffff ctermfg=15 guibg=#c00000 ctermbg=1 
hi Todo        guifg=#c06000 ctermfg=3 guibg=NONE ctermbg=NONE 

