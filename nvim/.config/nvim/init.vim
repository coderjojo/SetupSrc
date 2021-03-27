call plug#begin() 
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree' 
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'mbbill/undotree'
Plug 'liuchengxu/vim-which-key'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'
"Plug 'dense-analysis/ale'
call plug#end()

" custom setting

syntax on
filetype plugin indent on
set t_ti= t_te=
set number
set rnu 
set mouse=a 
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

nnoremap <Leader>v :split<enter>
nnoremap <Leader>vv :vsplit<enter>


let g:lsc_auto_map = v:true

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <silent> <F5> : NERDTreeToggle<CR>
nnoremap <c-h> :UndotreeToggle<cr>
" setup for gruvbox
set t_Co=256
set background=dark
colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'soft'

" setup for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" setup for tagbar
nmap <F8> :TagbarToggle<CR>
let g:coc_disable_startup_warning = 1
inoremap {<CR> {<CR>}<ESC>O

:autocmd BufNewFile *.cpp 0r ~/.vim/templates/Cpp.cpp 

" Emmet 
let g:user_emmet_leader_key=','

" Auto pairs
let g:AutoPairsFlyMode = 0

let g:UltiSnipsExpandTrigger = "<nop>"

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
let b:ale_fixers = ['prettier', 'eslint']
let g:indentLine_setColors = 0

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Map leader to which_key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500

"
"ale
"let g:ale_fixers = {
"  \    'javascript': ['eslint'],
" \    'typescript': ['prettier', 'tslint'],
"  \    'vue': ['eslint'],
"  \    'scss': ['prettier'],
"  \    'html': ['prettier'],
"  \    'reason': ['refmt']
" \}
"let g:ale_fix_on_save = 1


" FORMATTERS
"au FileType javascript setlocal formatprg=prettier
"au FileType javascript.jsx setlocal formatprg=prettier
"au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
"au FileType html setlocal formatprg=js-beautify\ --type\ html
"au FileType scss setlocal formatprg=prettier\ --parser\ css
"au FileType css setlocal formatprg=prettier\ --parser\ css
"

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
