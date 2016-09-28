set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

colorscheme molokai
set guifont=Monaco:h11
set fenc=utf-8
set encoding=utf-8
set fencs=utf-8,gbk,gbk2312,cp936,latin-1
set fileformat=unix
set fileformats=unix,mac,dos
set nu              "开启显示行号
set relativenumber      "开启显示相对行号
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8


set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进


set nobackup        "不生成备份文件
set noswapfile      "不生成交换文件
set noundofile      "不生成未完成文件

"设置通用缩进格式
set shiftwidth=4    "设置>缩进时4个空格        
set tabstop=4       "设置tab缩进时4个空格

set autoindent      "设置自动对齐
set ruler           "右下角显示光标位置的状态行
set laststatus=2    "开启状态栏信息
set autoread        "当文件在外部被修改时自动更新该文件
set list            " 显示特殊字符，其中Tab使用高亮~代替，尾部空白使用高亮点号代替
set listchars=tab:\~\ ,trail:.

syntax enable       "打开语法高亮
syntax on           "打开文件类型检测

set expandtab       "将Tab自动转化为空格

" ====================设置标签自动匹配=====================
:inoremap ( ()<esc>i
:inoremap { {}<esc><esc>i
:inoremap " ""<esc>i
:inoremap ' ''<esc>i
:inoremap [ []<esc>i
:inoremap kj  <esc>

"加载插件管理器
execute pathogen#infect()

" ================== 设置快捷键 ===========================
let mapleader="/"
let g:mapleader="/"
"'rc命令打开配置文件
nmap <leader>rc <esc>:e $MYVIMRC<cr>
"'tb打开tagbar
nmap <leader>tb :TagbarToggle<cr>
let g:tagbar_width=25

"nerdtree插件显示隐藏文件
let g:NERDTreeShowHidden = 1
"启用NERDTree插件
nmap <leader>nt :NERDTree<cr>

