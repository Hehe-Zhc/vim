" Note: Skip initialization for vim-tiny or vim-small.
" if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'Valloric/YouCompleteMe'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"设置行号
set nonu
"
""自动缩进
set autoindent
"设置历史命令条数
set history=50
"
""总在 Vim 窗口的右下角显示当前光标位置
set ruler
"tab长度
set ts=4
set sw=4
set expandtab "开启Tab转空格的操作
set tabstop=4 "Tab表示成4个空格
"高亮行
set cursorline
"去掉左右边的滚动条
set guioptions-=L
set guioptions-=r
set showtabline=0
"实时搜索
set incsearch
set list lcs=tab:\|\ 
" .vimrc 自动编辑完载入
autocmd! bufwritepost .{,g}vimrc source % " 自动刷新
" 取消自动换行
set nowrap
" 自动保存相关设置
au FocusLost * silent! up " vim 窗口失去焦点时保存
au BufLeave * silent! up " vim buffer 切换时自动保存
set scrolloff=5 "光标碰到第五行、倒数第五行时就上下卷屏
set autoread "如果正在编辑的文件在打开后又有其他程序更新，则自动加载



"【插件】airline 配置
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
" let g:airline_theme = "molokai"
set encoding=utf-8
set laststatus=2
set encoding=utf-8

"【插件】YouCompleteMe 配置
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
