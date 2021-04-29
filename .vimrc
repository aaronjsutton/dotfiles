" Base editor settings.
syn on
se et ai si ts=2 sts=2 sw=2
se re=0

" My abbreviations.
ab author Aaron Sutton - aaron@aaronjsutton.com

" Italic support for macOS terminal.
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

set path+=**

" Custom mappings.
let mapleader=","
nnoremap <leader>. <C-z>
nnoremap <leader><leader> :e# <cr>
nnoremap <leader>ev :e $MYVIMRC <cr>
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
hi StatusLineNC ctermbg=none cterm=none
hi SignColumn ctermbg=none
se fcs=stl:─,stlnc:─,vert:│

filetype plugin on
filetype indent on

" ALE-specific settings.
hi ALEErrorSign ctermfg=red
hi ALEWarningSign ctermfg=yellow

hi Error ctermfg=red ctermbg=NONE cterm=bold
hi ALEError cterm=underline 
hi ALEWarning ctermbg=NONE

let g:ale_sign_error = "●"
let g:ale_sign_warning = "●"
