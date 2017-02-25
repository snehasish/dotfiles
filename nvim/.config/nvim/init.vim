" Reload .vimrc if changed
autocmd! bufwritepost .vimrc source %

" Not compatible with VI
set nocompatible

" Loadup Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mkitt/tabline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'derekwyatt/vim-scala'

call vundle#end()    
filetype plugin indent on  

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
set tabstop=4
set shiftwidth=4
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


" Theme settings
colorscheme molokai
set t_Co=256
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

" Powerline fonts for vim-airline 
" Remember to set encoding in xshell
let g:airline_powerline_fonts = 1

" Airline theme to match
let g:airline_theme = "molokai"

" Airline tabs for open buffers -- Install tabline
let g:airline#extensions#tabline#enabled = 1

" Reindent the entire file
map <F7> mzgg=G`z<CR>

" Center line in Normal mode
nmap <space> zz

" Center while searching
nmap n nzz
nmap N Nzz

" Open empty files in insert mode
" autocmd VimEnter * if empty(expand("%")) | startinsert | endif

" You complete me

" Vim markdown folding disabled
let g:vim_markdown_folding_disabled=1

" No Arrowkeys
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>

" Next and previous buffer
nmap <C-n> :bnext<CR>
nmap <C-m> :bprev<CR>

" Split file, 2 columns with scroll bind
noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

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
