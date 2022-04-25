set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')



" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' "vim Plugin manager
Plugin 'preservim/nerdtree' "vim file tree
Plugin 'itchyny/lightline.vim' "colorscheme
Plugin 'dense-analysis/ale' "??
Plugin 'vim-python/python-syntax' "vim python syntax
Plugin 'https://github.com/nvie/vim-flake8' "vim plugin for flake8
Plugin 'majutsushi/tagbar' "function definition

" YouCompleteMe must be compiled

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" colo everforest

if has ('termguicolors')
	set termguicolors
endif
set background=dark
colorscheme everforest

set laststatus=2
if has("syntax")
	syntax on
endif

set autoindent "자동 indentation
set cindent
set nu
set ts=4
set shiftwidth=4
set autowrite "다른 파일러 넘어갈 때 자동 저장
set autoread "작업 중인 파일 외부에서 변경됐을 경우 자동으로 불러옴
set showmatch
set mouse=a
set hlsearch
set wildmode=longest,list
set ruler "현재 커서 위치 표시
set title


let g:python_highlight_all=1
let NERDTreeShowHidden=1

nmap <F9> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>