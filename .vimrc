set backspace=indent,eol,start
set expandtab
set autoindent
set smartindent
set smarttab 
set tabstop=2
set shiftwidth=2
set laststatus=2
set nu "行数表示
set hlsearch "検索結果のハイライト
"nnoremap <silent> <C-L> :noh<C-L><CR>
" ESC 2回でハイライト消し
nmap <Esc><Esc> :nohl<CR>
" underline(color terminal)
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE 

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

"==============plugins=====================
"
"NERDTree                 
NeoBundle 'scrooloose/nerdtree'
"vim-cpp-enhanced-highlight
NeoBundle 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
" lightline
NeoBundle 'itchyny/lightline.vim'
" quick-run
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config={'*': {'split': ''}} "実行結果を出す時、上下に分割
set splitbelow "実行結果を下側に出す
" vimproc
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
"" neocomplete
"NeoBundle 'Shougo/neocomplete.vim'
"" neosnippets
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'

call neobundle#end()
"==========================================
" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
        \ 'depends' : 'Shougo/vimproc',
        \ 'autoload' : { 'insert' : 1,}
        \ }
endif

" neocomplete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" " }}}
"-------------------------
" End Neobundle Settings.
"-------------------------
syntax on
