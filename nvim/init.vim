call plug#begin('~/.config/nvim/plugged')
" Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
call plug#end()

" Fundamental settings
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
filetype on
filetype plugin on
filetype plugin indent on
syntax on

" Some useful settings
set smartindent
set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent
set foldenable
set foldmethod=indent "folding by indent
set ignorecase        "ignore the case when search texts
set smartcase         "if searching text contains uppercase case will not be ignored

" Lookings
set number           "line number
set cursorline       "hilight the line that the cursor exists in
set cursorcolumn     "hilight the column that the cursor exists in
set nowrap           "no line wrapping
set textwidth=80              " Maximum line text width
set visualbell                    " No sounds

"colorscheme solarized "use the theme gruvbox
set t_Co=256
set background=dark "use the light version of gruvbox
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" change the color of chars over the width of 80 into blue (uncomment to enable this)
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Plugin setting
" airline
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#buffer_idx_mode = 1

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
