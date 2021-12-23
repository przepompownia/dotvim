scriptencoding utf-8

let g:initialVimDirectory = expand('<sfile>:p:h')
let &runtimepath = g:initialVimDirectory.','.&runtimepath.','.g:initialVimDirectory.'/after'
let &packpath = &runtimepath

let g:vimrc_init_per_host = g:initialVimDirectory . '/' . 'vimrc_init_per_host'
if filereadable(expand(g:vimrc_init_per_host))
  execute 'source ' . expand(g:vimrc_init_per_host)
endif

packadd! ale
packadd! fugitive
packadd! FixCursorHold.nvim
packadd! fern.vim
packadd! fzf
packadd! fzf.vim
if has('nvim')
  packadd! nvim-bqf
  packadd! nvim-treesitter
  packadd! nvim-cmp
  packadd! nvim-lspconfig
  packadd! nvim-ts-context-commentstring
  packadd! cmp-nvim-lsp
  packadd! cmp-nvim-ultisnips
  packadd! nvim-autopairs
  packadd! symbols-outline
  packadd! lsp_signature
  packadd! nvim-treesitter-context
  packadd! nvim-echo-diagnostics
  packadd! nvim-treesitter-refactor
  packadd! nvim-ts-rainbow
  packadd! nvim-revJ
  packadd! colorscheme-modus
endif
packadd! vim-textobj-user
packadd! vim-textobj-parameter
packadd! phpactor
packadd! surround
packadd! vim-commentary
packadd! vim-dispatch
packadd! vim-gitgutter
packadd! vim-move
packadd! vim-pasta
" packadd! vim-project
packadd! vim-repeat
packadd! vim-rhubarb
packadd! vim-spacejam
packadd! vim-test
packadd! vim-twig
packadd! vim-unimpaired
packadd! vim-dadbod
packadd! vim-dadbod-ui
packadd! ultisnips
packadd! arctgx
packadd! lightline.vim

let s:vimrc_per_host = g:initialVimDirectory . '/' . 'vimrc_per_host'
if filereadable(expand(s:vimrc_per_host))
  execute 'source ' . expand(s:vimrc_per_host)
endif

set secure
set exrc
