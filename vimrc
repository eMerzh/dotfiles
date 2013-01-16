" Disable vi compat
set nocompatible
set background=dark
" Add syntax color
syntax on

" Add line Nr on the right
set ruler


" Enable filetype plugins
"filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch


" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2


" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Always show the status line
set laststatus=2

" Format the status line
set statusline=\%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
