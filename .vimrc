set nocompatible " be iMproved, required
filetype off " required

set backup
set backupdir=~/.backup
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
set history=200

" Match and search
set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with
set smartcase	  " be sensitive when there's a capital letter
set incsearch

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jQuery'

" Colours
Plugin 'flazz/vim-colorschemes'

" HTML5 support
Plugin 'othree/html5.vim'

" Improved PHP Support
Plugin 'StanAngeloff/php.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set t_Co=256
colorscheme hybrid 

" Syntax highlighting
syntax on

" Auto-identify file type
filetype plugin indent on    " required

" No error bells!
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Space tab space tab
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

" No Numbers
set nonumber
set ruler

" Auto smart indent thing
set ai
set si

set backspace=indent,eol,start  " backspace over all kinds of things

" A little space on the left
set foldcolumn=1

" Show matching bracket 
set showmatch

" PHP Specific confiugration
" PHP Comment highlithgin improvements
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
