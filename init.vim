" init.vim ---------- {{{
" vim-plug settings ---------- {{{
call plug#begin()
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc'
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
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jttaka/nvim-colorscheme-switcher', {'branch': 'main'}
Plug 'ettaka/nvim-lua-plugin-test'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
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
nnoremap <leader>ev :sp ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>ss :so %<cr>
tnoremap <esc> <C-\><C-n> 

tnoremap <C-W><C-\><C-n><C-H><C-J> :res<CR>
tnoremap <C-W><C-\><C-n><C-H><C-K> :res<CR>
tnoremap <C-W><C-\><C-n><C-H><C-L> :res<CR>
tnoremap <C-W><C-\><C-n><C-H><C-H> :res<CR>

nnoremap <C-J> <C-W><C-J>:res<CR>
nnoremap <C-K> <C-W><C-K>:res<CR>
nnoremap <C-L> <C-W><C-L>:res<CR>
nnoremap <C-H> <C-W><C-H>:res<CR>
nnoremap <leader>c 

" }}}
" basic settings ---------- {{{
" colour scheme things ---------- {{{
colorscheme carbonized-dark
let g:colourschemes=["carbonized-dark","github","256_noir","afterglow","focuspoint","murphy","abstract","happy_hacking","elflord"]
"let g:colourschemes=["github","carbonized-dark","256_noir","afterglow","focuspoint","murphy","abstract","happy_hacking","elflord"]
" }}}
let mapleader ="\\"
set number
syntax on
" }}}
" john's mappings and abbreviations ---------- {{{
" terminal mappings ---------- {{{
tnoremap pp python 
tnoremap sudo sudo apt-get 
tnoremap sud sudo
" }}}
" autogroups ---------- {{{
augroup filetype_py
  autocmd!
	autocmd FileType python iabbrev while while True:<CR>
	autocmd FileType python iabbrev for for i in range():
augroup END
augroup filetype_html
  autocmd!
 	iabbrev ! <!DOCTYPE html><CR><html lang="en"><CR><head><CR><meta charset="UTF-8"><CR><meta name="viewport" content="width=device-width, initial-scale=1.0"><CR><title>website</title><CR></head><CR><body><CR><script><CR><CR></script><CR></body><CR></html><esc>kkki<esc>ddki<tab>
nnoremap <leader>g o<p></p><esc>hhhi
augroup END
" }}}
"normal mode mappings ---------- {{{
"python ---------- {{{
nnoremap <leader>fx :sp ~/fx_points.py<cr>
nnoremap <C-F5> :w<CR>:execute("!python ".@%)<CR>
"microbit ---------- {{{
nnoremap ö :w<CR>:!py2hex %<CR><CR>
nnoremap <leader>i import * from microbit
nnoremap <leader>m i<space>import<space>*<space>from<esc>0xA
nnoremap <leader>h :!py2hex %<CR><CR>
" }}}
" }}}
"javascript---------- {{{
nnoremap <leader>bob :sp ~/share/the_adventures_of_tim/the_adventures_of_tim.html<cr>
" }}}
"nvim---------- {{{
nnoremap ä oMade by John Tapani Takala<esc>
nnoremap <leader>T :TestPlugin()
nnoremap gw :q!<CR>
nnoremap <space> <nop>
nnoremap go :q<CR>
nnoremap t :sp<CR>
nnoremap <leader>a <esc>:w<CR>:q<CR>:q<CR>:sp<CR>:NERDTree<CR>
" }}}
" }}}
" abbeviations ---------- {{{
iabbrev @@ john.t.takala@gmail.com
" }}}
" insert mode mappings ---------- {{{
" python ---------- {{{
inoremap <C-F5> :w<CR>:execute("!python ".@%)<CR>
" microbit ---------- {{{
inoremap <leader>ds display.show(
inoremap <leader>dd display.scroll(
inoremap <leader>da display.set_pixel(
" }}}
" }}}
" javascript ---------- {{{
inoremap vv var 
" }}}
" nvim ---------- {{{
inoremap öö <esc>:w
inoremap <leader>< <esc>yypli/<esc>ko
inoremap <esc> <esc>:w<CR>
inoremap <leader>> <esc>yypli/<esc>hi<Backspace>
" }}}

" }}}
"arrow key mappings ----------{{{
inoremap hh ninja
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
" Completion stuff -------------------------{{{
:lua << EOF
  local nvim_lsp = require('lspconfig')
	nvim_lsp.pyls.setup{on_attach=require'completion'.on_attach}
	nvim_lsp.html.setup{}
EOF
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <down>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <up> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
" }}}
" Telescope mappings -------------------------{{{
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" }}}
" }}}
" }}}
