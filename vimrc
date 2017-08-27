" Vundle magick and plugin management
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'drmingdrmer/xptemplate'

call vundle#end()
filetype plugin indent on

"Store personal xpt-templates in .vim
set runtimepath+=~/.vim/xpt-personal
"let g:xptemplate_lib_filter = '/xpt-personal/'

" Pretty default stuff
filetype on
filetype plugin on
filetype indent on

" Disabling arrows because its antipattern
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Spaces!
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" No wrapping allowed!
set nowrap

" Show whitespace symbols and wrapping
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" Hack for pasting to vim
set pastetoggle=<F2>

" Line numbers
set number
