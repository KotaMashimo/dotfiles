set expandtab
set autoindent
set smartindent
set smarttab 
set tabstop=2
set shiftwidth=2
set laststatus=2
set nu "行数表示
set hlsearch "検索結果のハイライト
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
"NERDTree                 
NeoBundle 'scrooloose/nerdtree' 
call neobundle#end()
"vim-cpp-enhanced-highlight
NeoBundle 'octol/vim-cpp-enhanced-highlight'
let g:cpp_class_scope_highlight = 1
" quick-run
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config={'*': {'split': ''}} "実行結果を出す時、上下に分割
set splitbelow "実行結果を下側に出す
"==========================================
" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
syntax on
