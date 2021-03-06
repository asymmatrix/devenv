" =====================================================
"  Vundle
" =====================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdTree'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'derekwyatt/vim-scala'
Plugin 'motus/pig.vim'
Plugin 'elzr/vim-json'
Plugin 'junegunn/fzf'

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

" =====================================================
"   Settings
" =====================================================
"
"  UI
"
set laststatus=2  " always show statusline.
syntax on         " enable syntax processing
set number        " show line numbers
set cursorline    " highlight current line
set lazyredraw    " redraw only when we need to
set showmatch     " highlight matching [{()}]
colorscheme jellybeans

"
"  Show fancy font for vim-airline
"
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:airline_powerline_fonts = 1

"
"  Tabs
"
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=2    " when indenting with '>', use 4 spaces width

"
" Searching
"
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"   Toggle search hight lights
let hlstate=0
map <C-h>  :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<CR>

"
" Folding
"
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

"
"  Shortcuts
"
map <C-\> :NERDTreeToggle<CR>
map <C-l> :set invnumber<CR>

"
" vim working directory
" Run this command in bash to create the directories
"   mkdir -p ~/.vim/working/{backup_files,swap_files,undo_files}
"
set backupdir=~/.vim/working/backup_files//
set directory=~/.vim/working/swap_files//
if version >= 703
  set undodir=~/.vim/working/undo_files//
endif
