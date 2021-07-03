set nocompatible
call plug#begin() 
"Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'mbbill/undotree'
Plug 'liuchengxu/vim-which-key'
Plug 'sheerun/vim-polyglot'
"Plug 'dense-analysis/ale'
Plug 'honza/vim-snippets'

"Vim telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" custom setting

syntax on
filetype plugin indent on
set t_ti= t_te=
set number
set rnu set mouse=a 
set colorcolumn=80
let mapleader = " "
set encoding=utf-8
set backspace=indent,eol,start
set undodir=~/.vim/undodir
set undofile
set incsearch
set guioptions=
syntax on

" indent for global
set expandtab
set shiftwidth=4 tabstop=4
set softtabstop=4
set smartindent
"
" Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase

"Text Rendering Options

set nowrap
set linebreak

set noswapfile 

"To work outside vim
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

nnoremap <CR> :noh<CR><CR>
imap jj <Esc>
noremap \t :botright vertical terminal


nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>h :wincmd h<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

nnoremap <Leader>vs :split<enter>
nnoremap <Leader>vv :vsplit<enter>

nnoremap H gT
nnoremap L gt

" let g:lsc_auto_map = v:true

nnoremap <c-h> :UndotreeToggle<cr>
" setup for gruvbox
set t_Co=256
set background=dark
colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'soft'

inoremap {<CR> {<CR>}<ESC>O

"auto pair fly mode
let g:AutoPairsShortcutFastWrap='<C-e>'

" Emmet 
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

"vim indent
let g:indentLine_setColors = 0

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-eslint', 'coc-prettier']
set updatetime=300

" Map leader to which_key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
