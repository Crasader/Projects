set nocompatible             " be iMproved, required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'bling/vim-airline'
Plugin 'SuperTab'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append ! to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append ! to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append ! to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"配置Supertab  
let g:SuperTabRetainCompletionType=2 "记住上次的补全方式,直到按Esc退出插入模式位置  
let g:SuperTabDefaultCompletionType="<c-x><c-o>"  "按下tab后默认补全方式为<c-p>,现在改为<c-x><c-o>  
"------------tagbar----------------
let g:tagbar_ctags_bin='ctags'           
let g:tagbar_width=30                  
map <F3> :Tagbar<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen() 
"------------- Ctags
map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"------------NERDTree------------------
"let NERDTreeWinPos='right'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
let NERDChristmasTree=1 "显示增强  
let NERDTreeAutoCenter=1 "自动调整焦点  
let NERDTreeShowFiles=1 "显示文件  
let NERDTreeShowLineNumbers=1 "显示行号  
let NERDTreeHightCursorline=1 "高亮当前文件  
let NERDTreeShowHidden=0 "显示隐藏文件  
let NERDTreeMinimalUI=0 "不显示'Bookmarks' label 'Press ? for help'  
let NERDTreeWinSize=31 "窗口宽度  
"------------MiniBufExplorer-----------
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

map <F11> :MBEbp<CR>
map <F12> :MBEbn<CR>
"---------vim-airline------------------
set laststatus=2
"---------mormal----------------------
set nu
set backspace=2 "能使用backspace回删  
syntax enable "语法高亮
syntax on "语法检测  
set ruler "显示最后一行的状态  
set bg=dark "背景色设置  
set tabstop=4 "设置TAB宽度  
set history=1000 "设置历史记录条数  
"去掉vi一致性
set nocompatible "设置不兼容  

"设置编码
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,ucs-bom,chinese
"设置配色方案
colorscheme  desert
"可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"高亮显示匹配的括号
set showmatch
"设置缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif
"打开文件类型自动检测功能
filetype on
