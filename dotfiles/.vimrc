set nocp
set t_Co=256
syntax on
filetype plugin on
filetype indent on
set noswapfile
set nowritebackup
set pastetoggle=<F1>
set showmode

set wildmenu
set wildmode=longest,list
set wildignore+=node_modules
set wildignore+=dist/

set backspace=2

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set smarttab

set iskeyword-=_

set ff=unix

set number
set nuw=4

set ignorecase
set smartcase

set list listchars=tab:>-,trail:-
set list

" Set timeout length
set timeoutlen=300

" Disable bells
set vb t_vb=

" Cut/Copy/Paste
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-p> :read !pbpaste

" Previous buffer
map <C-h> :b#<CR>

execute pathogen#infect()

" NERDTree
nnoremap <silent> <F6> :NERDTreeFind<CR>
let g:NERDTreeMapPreview = "<F12>"
let g:NERDTreeMapActivateNode = "l"
let g:NERDTreeWinSize = 40

" Format
command FixWhitespace retab | %s/\s\+$

" Capital letters
command W w
command Q q
command Wq wq

" eslint
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_checkers = []
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0



set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
