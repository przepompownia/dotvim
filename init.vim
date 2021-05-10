scriptencoding utf-8

let g:initialVimDirectory = expand('<sfile>:p:h')
let &runtimepath = g:initialVimDirectory.','.&runtimepath.','.g:initialVimDirectory.'/after'
let &packpath = &runtimepath

let g:vimrc_init_per_host = g:initialVimDirectory . '/' . 'vimrc_init_per_host'
if filereadable(expand(g:vimrc_init_per_host))
  execute 'source ' . expand(g:vimrc_init_per_host)
endif

packadd! ale
" packadd! auto.pairs
packadd! coc.nvim
packadd! fugitive
packadd! FixCursorHold.nvim
packadd! fern.vim
packadd! fzf
packadd! fzf.vim
packadd! jsonc.vim
packadd! neopairs.vim
packadd! nginx.vim
if has('nvim')
  packadd! nvim-bqf
  packadd! nvim-treesitter
endif
packadd! phpactor
packadd! PHP-Indenting-for-VIm
packadd! surround
packadd! tmux.vim
packadd! tcomment_vim
packadd! vim-dispatch
packadd! vim-javascript
packadd! vim-lucius
packadd! vim-markdown
packadd! vim-markdown-folding
packadd! vim-move
packadd! vim-pasta
" packadd! vim-project
packadd! vim-repeat
packadd! vim-rhubarb
packadd! vim-spacejam
packadd! vim-test
packadd! vim-toml
packadd! vim-twig
packadd! vim-unimpaired
packadd! vim-dadbod
packadd! vim-dadbod-ui
packadd! arctgx
packadd! lightline.vim

let s:vimrc_per_host = g:initialVimDirectory . '/' . 'vimrc_per_host'
if filereadable(expand(s:vimrc_per_host))
  execute 'source ' . expand(s:vimrc_per_host)
endif

set secure
set exrc
