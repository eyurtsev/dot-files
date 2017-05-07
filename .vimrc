set nocompatible              " required
set number
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required


au BufNewFile,BufRead !silent *.py
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set textwidth=79
  set expandtab
  set autoindent
  set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
