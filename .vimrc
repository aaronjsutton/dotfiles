" Base editor settings.
syn on
set number
se et ai si ts=2 sts=2 sw=2 noexpandtab
se re=0
se modelines=5

" My abbreviations.
iab cc Copyright © 2022. All rights reserved.<ESC>F©3f2a
iab sim SimpL Fit, Inc<ESC>
iab sbc Sutton Brothers & Company

" Italic support for macOS terminal.
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Leader settings and double-leader hotkey.
let mapleader=","
nnoremap <leader><leader> :e# <cr>
nnoremap <leader>. :w <cr> :Files <cr>
nnoremap <leader>ev :e $MYVIMRC <cr>
nnoremap <leader>sp :set spell! <cr>

nnoremap <leader>0 :set conceallevel=0 <cr>
nnoremap <leader>1 :set conceallevel=1 <cr>
nnoremap <leader>2 :set conceallevel=2 <cr>

nnoremap <leader>sv :source $MYVIMRC <cr>
nnoremap <leader>cd :cd %:p:h <cr>
nnoremap <leader>' :vsp 
nnoremap <leader>" :sp 

" ALE custom mappings.
nnoremap <leader>an :ALENext <cr>
nnoremap <leader>aN :ALEPrevious <cr>
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
hi ALEError ctermbg=none
hi ALEWarning ctermbg=NONE
hi SpellBad ctermbg=none ctermfg=red cterm=underline

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_completion_autoimport = 1

set rtp+=/usr/local/opt/fzf

set exrc
set secure
