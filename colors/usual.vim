set background=light
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name='usual'

let s:colors = {
      \   'BLACK': {
      \     'cterm': '0',
      \     'gui': '#000000'
      \   },
      \   'DARK_GRAY': {
      \     'cterm': '8',
      \     'gui': '#606060'
      \   },
      \   'LIGHT_GRAY': {
      \     'cterm': '7',
      \     'gui': '#c0c0c0'
      \   },
      \   'WHITE': {
      \     'cterm': '15',
      \     'gui': '#ffffff'
      \   },
      \   'RED': {
      \     'cterm': '1',
      \     'gui': '#c00000'
      \   },
      \   'GREEN': {
      \     'cterm': '2',
      \     'gui': '#008000'
      \   },
      \   'YELLOW': {
      \     'cterm': '3',
      \     'gui': '#c06000'
      \   },
      \   'BLUE': {
      \     'cterm': '4',
      \     'gui': '#0060c0'
      \   },
      \   'PURPLE': {
      \     'cterm': '5',
      \     'gui': '#a000a0'
      \   },
      \   'CYAN': {
      \     'cterm': '6',
      \     'gui': '#008080'
      \   },
      \   'NONE': {
      \     'cterm': 'NONE',
      \     'gui': 'NONE'
      \   }
      \ }

let s:decorations = {
      \   'BOLD': {
      \     'cterm': 'bold',
      \     'gui': 'bold'
      \   },
      \   'UNDERLINE': {
      \     'cterm': 'underline',
      \     'gui': 'underline'
      \   },
      \   'NONE': {
      \     'cterm': 'NONE',
      \     'gui': 'NONE'
      \   }
      \ }

function! s:define_accessor(dict, type) abort
  execute
        \ 'function! '.a:dict.'.'.a:type.'(name) abort'."\n".
        \ '  return self[a:name]["'.a:type.'"]'."\n".
        \ 'endfunction'."\n"
endfunction

function! s:define_accessors(dict) abort
  for l:type in ['cterm', 'gui']
    call s:define_accessor(a:dict, l:type)
  endfor
endfunction

call s:define_accessors('s:colors')
call s:define_accessors('s:decorations')

function! s:highlight(group, options) abort
  let l:fg = get(a:options, 'fg', '')
  let l:bg = get(a:options, 'bg', '')
  let l:decoration = get(a:options, 'decoration', '')

  let l:command = ['highlight '.a:group]
  if strlen(l:fg)
    let l:gui = s:colors.gui(l:fg)
    let l:cterm = s:colors.cterm(l:fg)
    call extend(l:command, ['guifg='.l:gui, 'ctermfg='.l:cterm])
  endif
  if strlen(l:bg)
    let l:gui = s:colors.gui(l:bg)
    let l:cterm = s:colors.cterm(l:bg)
    call extend(l:command, ['guibg='.l:gui, 'ctermbg='.l:cterm])
  endif
  if strlen(l:decoration)
    let l:gui = s:decorations.gui(l:decoration)
    let l:cterm = s:decorations.cterm(l:decoration)
    call extend(l:command, ['gui='.l:gui, 'cterm='.l:cterm])
  endif

  execute join(l:command, ' ')
endfunction

" Vim UI
call s:highlight('Cursor', {
      \ 'fg': 'WHITE',
      \ 'bg': 'BLUE'
      \ })
call s:highlight('CursorLine', {
      \ 'fg': 'NONE',
      \ 'bg': 'LIGHT_GRAY',
      \ 'decoration': 'NONE'
      \ })
call s:highlight('MatchParen', {
      \ 'fg': 'NONE',
      \ 'bg': 'NONE',
      \ 'decoration': 'UNDERLINE'
      \ })
call s:highlight('Pmenu', {
      \ 'fg': 'WHITE',
      \ 'bg': 'DARK_GRAY'
      \ })
call s:highlight('PmenuThumb', {
      \ 'bg': 'LIGHT_GRAY'
      \ })
call s:highlight('PmenuSBar', {
      \ 'bg': 'DARK_GRAY'
      \ })
call s:highlight('PmenuSel', {
      \ 'fg': 'WHITE',
      \ 'bg': 'BLUE'
      \ })
call s:highlight('ColorColumn', {
      \ 'bg': 'LIGHT_GRAY'
      \ })
call s:highlight('SpellBad', {
      \ 'fg': 'RED',
      \ 'bg': 'NONE',
      \ 'decoration': 'UNDERLINE'
      \ })
call s:highlight('SpellCap', {
      \ 'fg': 'GREEN',
      \ 'bg': 'NONE',
      \ 'decoration': 'UNDERLINE'
      \ })
call s:highlight('SpellRare', {
      \ 'fg': 'YELLOW',
      \ 'bg': 'NONE',
      \ 'decoration': 'UNDERLINE'
      \ })
call s:highlight('SpellLocal', {
      \ 'fg': 'PURPLE',
      \ 'bg': 'NONE',
      \ 'decoration': 'UNDERLINE'
      \ })
call s:highlight('NonText', {
      \ 'fg': 'LIGHT_GRAY'
      \ })
call s:highlight('LineNr', {
      \ 'fg': 'DARK_GRAY',
      \ 'bg': 'NONE'
      \ })
call s:highlight('CursorLineNr', {
      \ 'fg': 'BLUE',
      \ 'bg': 'NONE'
      \ })
call s:highlight('ModeMsg', {
      \ 'fg': 'YELLOW',
      \ 'bg': 'NONE',
      \ 'decoration': 'BOLD'
      \ })
call s:highlight('Visual', {
      \ 'fg': 'NONE',
      \ 'bg': 'LIGHT_GRAY'
      \ })
call s:highlight('IncSearch', {
      \ 'fg': 'WHITE',
      \ 'bg': 'YELLOW',
      \ 'decoration': 'NONE'
      \ })
call s:highlight('Search', {
      \ 'fg': 'WHITE',
      \ 'bg': 'YELLOW'
      \ })
call s:highlight('StatusLine', {
      \ 'fg': 'WHITE',
      \ 'bg': 'BLUE',
      \ 'decoration': 'BOLD'
      \ })
call s:highlight('StatusLineNC', {
      \ 'fg': 'WHITE',
      \ 'bg': 'DARK_GRAY',
      \ 'decoration': 'BOLD'
      \ })
call s:highlight('VertSplit', {
      \ 'fg': 'NONE',
      \ 'bg': 'NONE',
      \ 'decoration': 'NONE'
      \ })
call s:highlight('TabLine', {
      \ 'fg': 'WHITE',
      \ 'bg': 'LIGHT_GRAY',
      \ 'decoration': 'NONE'
      \ })
call s:highlight('TabLineSel', {
      \ 'fg': 'WHITE',
      \ 'bg': 'DARK_GRAY'
      \ })
call s:highlight('TabLineFill', {
      \ 'fg': 'NONE',
      \ 'bg': 'NONE',
      \ 'decoration': 'NONE'
      \ })
call s:highlight('Folded', {
      \ 'fg': 'DARK_GRAY',
      \ 'bg': 'NONE'
      \ })
call s:highlight('Directory', {
      \ 'fg': 'CYAN'
      \ })
call s:highlight('Title', {
      \ 'fg': 'NONE'
      \ })
call s:highlight('ErrorMsg', {
      \ 'fg': 'WHITE',
      \ 'bg': 'RED'
      \ })
call s:highlight('WarningMsg', {
      \ 'fg': 'WHITE',
      \ 'bg': 'YELLOW'
      \ })
call s:highlight('DiffAdd', {
      \ 'fg': 'WHITE',
      \ 'bg': 'GREEN'
      \ })
call s:highlight('DiffChange', {
      \ 'fg': 'WHITE',
      \ 'bg': 'YELLOW'
      \ })
call s:highlight('DiffDelete', {
      \ 'fg': 'WHITE',
      \ 'bg': 'RED'
      \ })
call s:highlight('DiffText', {
      \ 'fg': 'NONE',
      \ 'bg': 'NONE',
      \ 'decoration': 'BOLD'
      \ })
call s:highlight('WildMenu', {
      \ 'fg': 'WHITE',
      \ 'bg': 'DARK_GRAY',
      \ 'decoration': 'BOLD'
      \ })

hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link FoldColumn    SignColumn
hi! link MoreMsg       ModeMsg
hi! link Question      ModeMsg
hi! link SpecialKey    NonText

" Generic syntax
call s:highlight('Comment', {
      \ 'fg': 'DARK_GRAY'
      \ })
call s:highlight('Constant', {
      \ 'fg': 'YELLOW'
      \ })
call s:highlight('String', {
      \ 'fg': 'RED'
      \ })
call s:highlight('Character', {
      \ 'fg': 'BLUE'
      \ })
call s:highlight('Number', {
      \ 'fg': 'BLUE'
      \ })
call s:highlight('Boolean', {
      \ 'fg': 'PURPLE'
      \ })
call s:highlight('Float', {
      \ 'fg': 'BLUE'
      \ })
call s:highlight('Identifier', {
      \ 'fg': 'BLUE'
      \ })
call s:highlight('Statement', {
      \ 'fg': 'PURPLE',
      \ 'decoration': 'NONE'
      \ })
call s:highlight('PreProc', {
      \ 'fg': 'YELLOW'
      \ })
call s:highlight('Type', {
      \ 'fg': 'PURPLE',
      \ 'decoration': 'NONE'
      \ })
call s:highlight('Special', {
      \ 'fg': 'YELLOW'
      \ })
call s:highlight('Delimiter', {
      \ 'fg': 'NONE'
      \ })
call s:highlight('Underlined', {
      \ 'fg': 'BLUE',
      \ 'decoration': 'UNDERLINE'
      \ })
call s:highlight('Ignore', {
      \ 'fg': 'LIGHT_GRAY'
      \ })
call s:highlight('Error', {
      \ 'fg': 'WHITE',
      \ 'bg': 'RED'
      \ })
call s:highlight('Todo', {
      \ 'fg': 'YELLOW',
      \ 'bg': 'NONE'
      \ })

let g:terminal_ansi_colors = [
      \ s:colors.gui('BLACK'),
      \ s:colors.gui('RED'),
      \ s:colors.gui('GREEN'),
      \ s:colors.gui('YELLOW'),
      \ s:colors.gui('BLUE'),
      \ s:colors.gui('PURPLE'),
      \ s:colors.gui('CYAN'),
      \ s:colors.gui('LIGHT_GRAY'),
      \ s:colors.gui('DARK_GRAY'),
      \ s:colors.gui('RED'),
      \ s:colors.gui('GREEN'),
      \ s:colors.gui('YELLOW'),
      \ s:colors.gui('BLUE'),
      \ s:colors.gui('PURPLE'),
      \ s:colors.gui('CYAN'),
      \ s:colors.gui('WHITE')
      \ ]
