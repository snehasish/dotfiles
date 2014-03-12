" Installed scripts
" 1. Pathogen
" 2. LatexBox
" 3. Colorscheme - molokai

" Pathogen runtimepath management
execute pathogen#infect()

" Enable line numbers
set number

" Syntax highlighting
syntax on 

" Basic settings 
filetype plugin indent on

" Theme settings
colorscheme molokai
set t_Co=256
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
