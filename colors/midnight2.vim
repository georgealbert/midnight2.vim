" Vim color file
" Maintainer:   Michael Brailsford <brailsmt@yahoo.com>
" Date:			$Date: 2002/04/11 03:29:51 $
" Version: 		$Revision: 1.4 $
" Inspiration:	This colorscheme was inspired by midnight.vim.  It is a darker
" 				version of it.  With some colors tweaked.
" Thanks:		Thanks go to Hans Fugal for creating the colorscheme template.
"				Without it I would have been lost creating the original midnight.vim
" Note: 		If you do not like the dark look of the colorscheme, you can
" 				easily lighten things up with the following line:
" 				:%s/\(\w\)3/\12/g
"				It is easily pasteable into the command line.  you can also
"				change "\12" to "\11", "\1" or "\14" (if you want things even
"				darker).  If you do use the "\14" replacement, then it looks
"				like your monitor in a fog bank.  :)

" your pick:
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="midnight2"

hi Normal guifg=slategray3 guibg=#000029 ctermfg=14

"Toggle semicolon matching at the end of lines
nmap <silent> <leader>; :call ToggleSemicolonHighlighting()<cr>
"{{{
function! ToggleSemicolonHighlighting()
	if exists("b:semicolon")
		unlet b:semicolon
		hi semicolon guifg=NONE gui=NONE ctermfg=NONE
	else
		syn match semicolon #;$#
		hi semicolon guifg=red3 gui=bold ctermfg=1
		let b:semicolon = 1
	endif
endfunction
"}}}

"
" Cursor的颜色不是太好看，在查找时，不太容易找到，换之
"
"hi Cursor guifg=bg guibg=fg ctermfg=0 ctermbg=11
hi Cursor guibg=khaki guifg=slategrey

"hi CursorIM
hi Directory gui=bold
hi DiffAdd guifg=yellow3 guibg=darkgreen ctermbg=0
"hi DiffChange
"hi DiffDelete
"hi DiffText
hi ErrorMsg	guibg=red3 ctermfg=1
"hi VertSplit
hi Folded guibg=#00001a ctermbg=4 guifg=yellow3 ctermfg=11 gui=NONE
hi FoldColumn guibg=steelblue3 ctermbg=14 guifg=navyblue ctermfg=11 gui=bold
"hi IncSearch
hi LineNr guifg=yellow3 ctermfg=11
hi ModeMsg guifg=yellow3 gui=bold
"hi MoreMsg
"hi NonText
"hi Question

"
" i don't like search color.
"
"hi Search guibg=yellow3 guifg=bg
hi Search guibg=peru guifg=wheat
"
" End of Modified
"
"hi SpecialKey
hi StatusLine guifg=steelblue3
hi StatusLineNC guifg=steelblue4
"hi Title
hi Visual guifg=fg guibg=bg
"hi VisualNOS
"hi WarningMsg
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment guifg=chartreuse3 ctermfg=10
hi Constant	guifg=plum3 gui=bold ctermfg=13
hi String guifg=indianred3 ctermfg=5
hi Character guifg=mediumpurple3 ctermfg=5
hi Number guifg=turquoise3 ctermfg=5
"hi Identifier
hi Statement guifg=khaki3 gui=bold ctermfg=15 cterm=underline

"
" Modified by Albert @2004.01.04
" italic style looks urgly.
"
"hi PreProc guifg=firebrick3 gui=italic ctermfg=9
hi PreProc guifg=firebrick3 gui=bold ctermfg=9
hi Type	guifg=gold3 gui=bold ctermfg=3
"hi Special
"hi Underlined
"hi Ignore
"hi Error
hi Todo guifg=yellow3 guibg=blue3 gui=bold

"
" By albert 2006.04.24
" for Vim7.0d
"
hi Visual	gui=none guifg=khaki guibg=olivedrab

" For neovim terminal mode, display terminal cursor.
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC guifg=#002b36 guibg=#657b83 guisp=NONE gui=NONE cterm=NONE
endif
