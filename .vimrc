" Base editor settings.
syn on
se et ai si ts=2 sts=2 sw=2 noexpandtab
se re=0
se modelines=5

" My abbreviations.
iab cc Copyright (c) 2021 Aaron Joseph Sutton. Licensed under the license.<ESC>2Bea

" Italic support for macOS terminal.
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Leader settings and double-leader hotkey.
let mapleader=","
nnoremap <leader><leader> :e# <cr>

" Directory mappings.
nnoremap <leader>d :cd %:p:h <cr>

" .vimrc edit mappings.
nnoremap <leader>ve :e $MYVIMRC <cr>
nnoremap <leader>vl :source $MYVIMRC <cr>

" Spelling mappings.
nnoremap <leader>s :set spell! <cr>

" Ale mappings.
nnoremap <leader>af :ALEFix <cr>
nnoremap <leader>ae :ALEGoToDefinition <cr>

" Colorscheme setttings.
set background=dark
color dim 
hi Comment cterm=italic
hi MatchParen ctermbg=NONE cterm=underline

" Split-related settings for macOS terminal.
hi VertSplit ctermbg=288
hi StatusLine ctermbg=none cterm=bold
hi Folded ctermbg=none
hi StatusLineNC ctermbg=none cterm=none
hi SignColumn ctermbg=none
se fcs=stl:─,stlnc:─,vert:│
hi Conceal ctermbg=none

" Custom filetypes
autocmd BufNewFile,BufRead *.md set filetype=markdown

filetype plugin on
filetype indent on

" ALE-specific settings.
hi ALEErrorSign ctermfg=red
hi ALEWarningSign ctermfg=yellow

hi Error cterm=underline cterm=bold
hi ALEError cterm=underline 
hi ALEWarning ctermbg=NONE
hi SpellBad ctermbg=none ctermfg=red cterm=underline

let g:ale_sign_error = "●"
let g:ale_sign_warning = "●"
let g:ale_completion_autoimport = 1

set exrc
set secure
