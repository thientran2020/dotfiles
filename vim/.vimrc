call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

set rnu
set nocompatible

map <C-n> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


filetype plugin on
syntax on
