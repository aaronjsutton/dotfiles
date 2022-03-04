let b:ale_elixir_elixir_ls_release="/usr/local/bin/elixir-ls"

let b:ale_fixers=["mix_format"]
let b:ale_linters=["credo"]

let g:elixir_use_markdown_for_docs=0

set wildignore+=**/_build/**
set wildignore+=**/deps/**
set wildignore+=**/priv/**
