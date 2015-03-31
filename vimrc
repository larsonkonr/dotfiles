set nocompatible
filetype plugin indent on
imap jk <Esc>
imap kj <Esc>
syntax on
set relativenumber
set softtabstop=2
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set backspace=indent,eol,start
set mouse=a
let mapleader = ","
set hidden
set history=1000
set visualbell
set autoread

" ---------------------------------------------------------
"		   EXTERNAL COPY / PASTE
" ---------------------------------------------------------
" Press F2 before and after pasting from an external Window
set pastetoggle=<F2>
map <C-v> "+gP<CR>
vmap <C-c> "+y

" ----------------------------------------------------------
"			Autocomplete
" ----------------------------------------------------------

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

augroup END

" ----------------------------------------------------------
"			  NERDTree
" ----------------------------------------------------------

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" ----------------------------------------------------------
"		      Movement Binding
" ----------------------------------------------------------

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" ----------------------------------------------------------
"			 Syntastic
" ----------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ----------------------------------------------------------
"			Color Scheme
" ----------------------------------------------------------

let g:solarized_termtrans = 1
colorscheme solarized
set background=dark

" ----------------------------------------------------------
"		    Turn Off Swap Files
" ----------------------------------------------------------
set noswapfile
set nobackup
set nowb
