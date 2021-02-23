" 南玖" 南玖vim配置文件
" slink:https://www.ztongyang.cn
" repo:https://www.github.com/yang2210670


" 基本设置
set nu			"行号
set background=dark	"背景
syntax on		"高亮
set hlsearch		"高亮搜索

"----映射设置----"
"基本映射
let mapleader=','
inoremap <leader>w <Esc>:w<cr>
nnoremap <leader>w <Esc>:w<cr>
inoremap <leader>s <Esc>:source ~/.vimrc<cr>
nnoremap <leader>s <Esc>:source ~/.vimrc<cr>
inoremap <leader>i <Esc>:PlugInstall<cr>
nnoremap <leader>i <Esc>:PlugInstall<cr>
inoremap <C-d> <Esc>ddi
inoremap <S-d> <Esc>yypi
inoremap <C-z> <Esc>ui
inoremap jj <Esc>
nnoremap <space> viw
vnoremap <C-c> ci


"切换窗口快捷键
noremap <leader>w :w<cr>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"目录树
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"----vim插件----"
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify' 		"启动界面美化
Plug 'vim-airline/vim-airline' 		"状态栏
Plug 'vim-airline/vim-airline-themes' 	"状态栏
Plug 'yggdroot/indentline'		"缩进线  
Plug 'preservim/nerdtree'		"目录
Plug 'jiangmiao/auto-pairs'		"括号补全
Plug 'tpope/vim-commentary'		"代码注释
Plug 'rkulla/pydiction'			"python补全
Plug 'w0ng/vim-hybrid'			"hybrid主题  
Plug 'morhetz/gruvbox'			"gruvbox主题
call plug#end()

colorscheme gruvbox

filetype plugin on
let g:pydiction_location = '~/.vim/plugged/pydiction/complete-dict' 
let g:pydiction_menu_height = 3

