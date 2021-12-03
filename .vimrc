" Built up over many years
" Most recent inspiration from https://github.com/jez/vim-as-an-ide/blob/master/vimrc.vim

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
set showcmd

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Colours
Plugin 'chriskempson/tomorrow-theme'
Plugin 'fxn/vim-monochrome'
Plugin 'arcticicestudio/nord-vim'

" HTML5 support
Plugin 'othree/html5.vim'

" Improved PHP Support
Plugin 'StanAngeloff/php.vim'

" Better status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Directory browser
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs' 

" Syntax error highlighting
Plugin 'scrooloose/syntastic'

" Better gutter - git integration
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set t_Co=256

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

" Numbers
set number
set ruler

" Auto smart indent thing
set ai
set si

set backspace=indent,eol,start  " backspace over all kinds of things

" Show matching bracket 
set showmatch

colorscheme nord 

" Status bar
let g:airline_theme='nord'
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled=1

" Mousey mousey
set mouse=a

" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

" Syntastic settings
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColumn

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
