set backspace=indent,eol,start
set expandtab
set autoindent
set smartindent
set smarttab 
set tabstop=2
set shiftwidth=2
set laststatus=2
set splitright
set splitbelow
set nu "行数表示

" 検索結果のハイライト
set hlsearch
" C-C でハイライト消し
nnoremap <silent> <C-C> :nohl<CR>

" underline(color terminal)
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE 

" tab
"" new
nmap T :tabnew<CR>
nmap < gT
nmap > gt

syntax on
