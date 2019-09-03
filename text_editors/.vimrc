"        .__
"  ___  _|__| ____________   ____
"  \  \/ /  |/     \_  __ \_/ ___\
"   \   /|  |  Y Y  \  | \/\  \___
"    \_/ |__|__|_|  /__|    \___  >
"                 \/            \/


" ----- Basic Vim Tweaks ----- "

" Set 'nocompatible' to ward off unexpected things that your distro might
" " have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches
set hlsearch

" Display cursor position on last line/status line
set ruler

" Set pastetoggle
set pastetoggle=<F11>

" Indentation settings
set shiftwidth=4   " Governs indentation with >>
set softtabstop=4  " Helps reach indents points in between tabs
set expandtab      " Turns tabs to spaces

" Rebind esc
inoremap jj <ESC>

" Let Vim adjust colors for dark background
set bg=dark

" Configure textwidth to 80 chars for wrapping
set textwidth=80

" Set marker on line 80
set colorcolumn=80

" Show line numbers
set number

" Show underline indicator on current line
set cursorline

" ----- Plugin Management ----- "


" Autodownload vim-plug if plug.vim is missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" --- Key vim-plug commands ---
" Reload .vimrc before running
" :PlugInstall - install plugins
" :PlugUpdate - install or update
" :PlugClean - remove unlisted plugins

" -- Plugin list begins here --

" Base 16 color scheme
Plug 'flazz/vim-colorschemes'

" New status bar
Plug 'itchyny/lightline.vim'

" -- Plugin list ends here --

" Initialize plugin system
call plug#end()


" ----- Plugin Dependent Settings ----- "


" Use base 16 color scheme
colorscheme badwolf " blazer also good

" Override colorscheme to highlight cursorline
" highlight CursorLine gui=underline cterm=underline

" Increase lines for status for lightline
set laststatus=2

" Get rid of insert status that's redundant with lightline
set noshowmode

" Unlock more terminal colors for lightline
if !has('gui_running')
  set t_Co=256
endif

" Modify lightline color scheme
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
