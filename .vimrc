" Show line numbers
set number

" Sync clipboard with OS
" (no need to schedule like in Lua)
" set clipboard=unnamedplus

" Case-insensitive search unless uppercase used
set ignorecase
set smartcase

" Remap Ctrl-j and Ctrl-k for scrolling
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" Use spaces instead of tabs
set expandtab
set shiftwidth=2
set tabstop=2

" Highlight current line
set cursorline

" Keep 5 lines above/below cursor
set scrolloff=5


set autoindent
set smartindent

setlocal foldmethod=manual

syntax on

