" Base editor settings.
syn on
se et ai si ts=2 sts=2 sw=2
se re=0
se modelines=5

" My abbreviations.
iab cc Copyright (c) 2021 Aaron Joseph Sutton. Licensed under the license.<ESC>2Bea

" Italic support for macOS terminal.
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

set path+=**

" Custom mappings.
let mapleader=","
nnoremap <leader>. <C-z>
nnoremap <leader><leader> :e# <cr>
nnoremap <leader>ev :e $MYVIMRC <cr>
nnoremap <leader>sp :set spell! <cr>
nnoremap <leader>sv :source $MYVIMRC <cr>
nnoremap <leader>cd :cd %:p:h <cr>
nnoremap <leader>' :vsp 
nnoremap <leader>" :sp 

" ALE custom mappings.
nnoremap <leader>aw :ALEFix <cr>
nnoremap <leader>an :ALENext <cr>
nnoremap <leader>aN :ALEPrevious <cr>
nnoremap <leader>af :ALEFix <cr>
nnoremap <leader>ae :ALEGoToDefinition <cr>
nnoremap <leader>asp :ALEGoToDefinitionInSplit <cr>
nnoremap <leader>avs  :ALEGoToDefinitionInVSplit <cr>

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

filetype plugin on
filetype indent on

" ALE-specific settings.
hi ALEErrorSign ctermfg=red
hi ALEWarningSign ctermfg=yellow

set omnifunc=ale#completion#OmniFunc
set completeopt=menu,menuone,popup,noselect,noinsert
let g:ale_completion_max_suggestions=12

hi Error ctermfg=red ctermbg=red cterm=bold
hi ALEError cterm=underline 
hi ALEWarning ctermbg=NONE
let g:ale_sign_error = "●"
let g:ale_sign_warning = "●"
let g:ale_completion_autoimport = 1
