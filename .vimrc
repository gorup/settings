" Tab and shift-tab for left/right on buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Strip trailing whitespace on save :D
autocmd BufWritePre * :%s/\s\+$//e

" Theme related
colorscheme flattown
set background=dark

" Vim airline
let g:airline_theme='murmur'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

" Ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"Rust Raceer
set hidden
let g:racer_cmd = "/Users/gorup/.cargo/bin/racer"
let g:racer_experimental_completer = 1


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Generic settings
set ignorecase
set smartcase
set nu
set hlsearch
syntax enable
set clipboard=unnamed
set nocompatible
set backspace=2
set expandtab
set tabstop=4
set colorcolumn=120

" Let yanking go to clipboard
set clipboard=unnamedplus,unnamed,autoselect

" Disallow up down lef and right
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Tab and shift-tab for left/right on buffers
nnoremap <Tab> :bnext<CR>
noremap <S-Tab> :bprevious<CR>

" Plugins!!
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'ajh17/VimCompletesMe'
Plug 'fatih/vim-go'
Plug 'racer-rust/vim-racer'

call plug#end()
