" init.vim ---------- {{{
" vim-plug settings ---------- {{{
call plug#begin()
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-scripts/CSApprox'
Plug 'scrooloose/nerdtree'
Plug 'gcmt/taboo.vim'
Plug 'vim-scripts/vim-coffee-script'
Plug 'vim-scripts/jade.vim'
Plug 'ettaka/vim-apdl'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'frazrepo/vim-rainbow'
Plug 'Neomake/neomake'
Plug 'godlygeek/tabular'
call plug#end()

" }}}
" Vimscript file settings ---------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal tabstop=2
  autocmd FileType vim setlocal shiftwidth=2
  autocmd FileType vim nnoremap <buffer> <localleader>c 0i" <esc>
augroup END
" }}}
" basic mappigns ---------- {{{
inoremap jj <esc>
nnoremap <leader>ev :vsp ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
tnoremap jj <C-\><C-n> 

tnoremap <C-W><C-\><C-n><C-H><C-J> :res<CR>
tnoremap <C-W><C-\><C-n><C-H><C-K> :res<CR>
tnoremap <C-W><C-\><C-n><C-H><C-L> :res<CR>
tnoremap <C-W><C-\><C-n><C-H><C-H> :res<CR>

nnoremap <C-J> <C-W><C-J>:res<CR>
nnoremap <C-K> <C-W><C-K>:res<CR>
nnoremap <C-L> <C-W><C-L>:res<CR>
nnoremap <C-H> <C-W><C-H>:res<CR>

" }}}
" basic settings ---------- {{{
colorscheme carbonized-dark
let mapleader ="\\"
set number
syntax on
" }}}
" john's mappings and abbreviations ---------- {{{
inoremap öö <esc>:
nnoremap ö :
nnoremap ne :NERDTree<CR>
nnoremap <leader>1 :colorscheme carbonized-dark<CR>
nnoremap <leader>2 :colorscheme github<CR>
nnoremap <leader>3 :colorscheme 256_noir<CR>
nnoremap <leader>4 :colorscheme afterglow<CR>
nnoremap <leader>5 :colorscheme focuspoint<CR>
nnoremap <leader>6 :colorscheme murphy<CR>
nnoremap <leader>7 :colorscheme abstract<CR>
nnoremap <leader>8 :colorscheme happy_hacking<CR>
nnoremap <leader>9 :colorscheme elflord<CR>
nnoremap <leader>0 :colorscheme 
nnoremap t :vsp<CR>
inoremap hh ninja
nnoremap go :q<CR>
nnoremap gw :q!<CR>
tnoremap pp python 
augroup filetype_py
	iabbrev while while True:
	iabbrev for for i in range():
augroup END
inoremap vv var 
nnoremap ä oMade by John Tapani Takala
iabbrev @@ john.t.takala@gmail.com
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <left> <nop>
inoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <left> <nop>
nnoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <left> <nop>
vnoremap <Right> <nop>
" }}}
" }}}
