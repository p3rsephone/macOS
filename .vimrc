colorscheme dracula 
syntax enable
set tabstop=2
set softtabstop=2
set expandtab "tabs are spaces
set shiftwidth=2 "indent is one tab
set smarttab 
set number "number the lines
set cursorline
set wildmenu "autocomplete commands
set lazyredraw
set showmatch "show match for [({)}]
set hlsearch "highlight matches
set laststatus=2
set incsearch "search as characters are entered
let mapleader = ','  "leader is comma
let g:airline_theme='bubblegum'
nnoremap <leader><space> :nohlsearch<CR>
inoremap <leader><leader> <Esc>
execute pathogen#infect()
filetype plugin indent on
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown "md are now markdown
au BufNewFile,BufFilePre,BufRead *.MD set filetype=markdown "MD are now markdown too
set backspace=indent,eol,start
