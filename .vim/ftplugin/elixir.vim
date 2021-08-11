let b:ale_fixers=["mix_format"]
let g:ale_linters.elixir=["elixir-ls"]
let g:ale_elixir_elixir_ls_release="/usr/local/bin/elixir-ls/"
let g:elixir_use_markdown_for_docs=0
set wildignore+=**/_build/**
set wildignore+=**/deps/**
set wildignore+=**/priv/**
