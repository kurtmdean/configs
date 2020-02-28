set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'git@github.com:kien/ctrlp.vim.git' " file search
Plugin 'git@github.com:rking/ag.vim.git' " text search
Plugin 'morhetz/gruvbox' "color scheme
Plugin 'git@github.com:Valloric/YouCompleteMe.git' " autocomplete
Plugin 'belluzj/fantasque-sans' " font

" auto formatting
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
call glaive#Install()
filetype plugin indent on    " required

set termguicolors
" colorscheme options
colorscheme gruvbox
set background=dark

" more auto formatting
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END

" DEBUG STUFFS
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_warning_symbol = '.'
let g:ycm_error_symbol = '..'
let g:ycm_server_use_vim_stdout = 1
" DEBUG STUFFS
" show exiting tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
