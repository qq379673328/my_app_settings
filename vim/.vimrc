let mapleader = ','

filetype off
call pathogen#infect()
call pathogen#helptags()
colorscheme torte "设置主题
set nocompatible " 关闭 vi 兼容模式
syntax enable
"set list "显示制表符
syntax on " 自动语法高亮
colorscheme desert
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set autoindent " same level indent
set smartindent " next level indent
set nobackup " 覆盖文件时不备份
set nowritebackup
"set noswapfile
set autochdir " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on " 开启插件
"set encoding=cp936
set fileencodings=utf-8,gbk,ucs-bom,cp936
set termencoding=gbk
"set backupcopy=yes " 设置备份时的行为为覆盖
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
"set nowrapscan " 禁止在搜索到文件两端时重新搜索
"set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
" set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T " 隐藏工具栏
set guioptions-=m " 隐藏菜单栏
set smartindent " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%l,%v][%p%%]\ %{strftime(\"%m/%d\-\%H:%M\")}
" 设置在状态行显示的信息
"set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
set scrolloff=3 "设置光标所处位置
" set foldclose=all " 设置为自动关闭折叠 
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠

" 设置字体 以及中文支持
if has("win32")
set guifont=Monaco:h12:cANSI
endif

 "taglist{
    let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
    let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
    let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
    let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
    let Tlist_Ctags_Cmd='D:\lizy_work_util\ctags58\ctags58\ctags.exe'  "设置ctags命令的位置
    "nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
		set tags=tags;
    "}
	"
"
"minibuf plugin
"
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1


"自定义leader快捷键>>>>>>>>>>>>>
map <silent> <leader>t <Esc>:NERDTreeToggle<CR>
map <silent> <leader>o <Esc>:TlistToggle<CR>
map <silent> <leader>b <Esc>:BufExplorer<CR>
"新建标签
map <silent> <leader>n <Esc>:tabnew<CR>
"关闭当前缓冲区
map <silent> <leader>w <Esc>:close<CR>
"<<<<<<<<<<<<<<<<<<其他快捷键
"全选
"map <C-a> <Esc>:ggVG
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

"屏蔽上下左右箭头键
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"""""""""""""""""
"-----------------------------------------------------------------------------
" lookupfile.vim 插件设置
"-----------------------------------------------------------------------------
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
let g:LookupFile_SortMethod = ""                "关闭对搜索结果的字母排序

"javacomplete
setlocal omnifunc=javacomplete#Complete 
autocmd Filetype java set omnifunc=javacomplete#Complete
autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P>
setlocal completefunc=javacomplete#CompleteParamsInfo
"let g:java_classpath="C:\Users\sinosoft\.m2\repository\**"
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P> 
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  A  A<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  B  B<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  C  C<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  D  D<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  E  E<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  F  F<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  G  G<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  H  H<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  I  I<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  J  J<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  K  K<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  L  L<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  M  M<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  N  N<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  O  O<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  P  P<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Q  Q<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  R  R<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  S  S<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  T  T<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  U  U<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  V  V<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  W  W<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  X  X<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Y  Y<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Z  Z<C-N><C-P>

