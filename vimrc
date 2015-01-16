filetype plugin indent on
imap jk <Esc>
imap kj <Esc>
syntax on
set background=dark
set number
set softtabstop=2
let g:solarized_termtrans = 1
colorscheme solarized
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd vimenter * NERDTree
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-m> :NERDTreeToggle<CR>
