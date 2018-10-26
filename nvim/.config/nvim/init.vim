" Reload .vimrc if changed
autocmd! bufwritepost .vimrc source %

" Not compatible with VI
set nocompatible

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mkitt/tabline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'lifepillar/vim-solarized8'
Plug 'machakann/vim-sandwich'
Plug 'Valloric/YouCompleteMe'
Plug 'dart-lang/dart-vim-plugin'
call plug#end()

set termguicolors
set background=dark
colorscheme solarized8

" Remove this later https://github.com/lifepillar/vim-solarized8/issues/27
let g:solarized_termtrans=1

" Indentation 
set autoindent
set smartindent
set cindent

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" use intelligent file completion like in the bash
set wildmode=longest:full
set wildmenu

" Enable line numbers
set number

" Syntax highlighting
syntax on 

" Tab settings
set tabstop=2
set shiftwidth=2
set expandtab

" Timeout to Normal mode
set ttimeoutlen=50

" Remove the default mode indicator because we have airline!
set noshowmode

" Switch buffers without saving
set hidden

" Case insensitive search by default
set ignorecase

" Incremental Search
set incsearch

" Set smartcase search
set smartcase


" Powerline fonts for vim-airline 
" Remember to set encoding in xshell
let g:airline_powerline_fonts = 1

" Airline theme to match
"let g:airline_theme = "molokai"

" Airline tabs for open buffers -- Install tabline
let g:airline#extensions#tabline#enabled = 1

" Center while searching
nmap n nzz
nmap N Nzz

" Next and previous buffer
nmap <A-n> :bnext<CR>
nmap <A-m> :bprev<CR>

" Relative Line Numbers
set relativenumber

" Always show gutter so that YCM syntax
" error highlight doesnt move text L/R
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

" Autoclose the preview window after 
" leaving insert mode for YCM
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1

" Enable spell checking for certain file types
autocmd FileType latex,tex,md,markdown setlocal spell

" Terminal settings for neovim
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Options for notes
let g:notes_directories = ['~/Dropbox/notes']
let g:notes_suffix = '.txt'


" Settings for vimtex
let g:vimtex_view_method = 'mupdf'
