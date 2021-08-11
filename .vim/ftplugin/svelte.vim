" Fix files with prettier, and then ESLint.

let b:ale_fixers = ['prettier']

let g:svelte_preprocessor_tags = [
  \ { 'name': 'ts', 'tag': 'script', 'as': 'typescript' }
  \ ]
let g:svelte_preprocessors = ['ts']

nnoremap <leader>fc :fin .svelte<CR>
