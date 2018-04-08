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
set shiftwidth=4
set softtabstop=4
set expandtab

" Rebind esc
inoremap jj <ESC>

" Let Vim adjust colors for dark background
set bg=dark

" Configure textwidth to 80 chars for wrapping
set textwidth=80
