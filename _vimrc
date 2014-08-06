"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
""""""""""""""""""""""""""""""""
" Vundle begins here 
""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.

"""""""""""""""""""""""""" Pwoerline
Plugin 'Lokaltog/vim-powerline'

set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'
let Powerline_symbols='compatible'
"set encoding=utf8

"""""""""""""""""""""""" taglist
Plugin 'vim-scripts/taglist.vim'
let Tlist_Show_One_File = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <F12> :TlistToggle<CR>
"map <silent><leader>tl :TlistToggle<CR>


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
""""""""""""""""""""""""""""""""""""""""""
" Vundle ends here
"""""""""""""""""""""""""""""""""""""""""


""""""""""""""
" vim configuration
"

set nu				"显示行号
syntax on			"打开语法高亮
set autoindent		"自动缩进
set cindent			"C缩进
set tabstop=4		"Tab键的宽度
set shiftwidth=4
set mouse=a			"打开鼠标
:colorscheme desert "颜色设置
if(has("gui_running"))
"	set guifont=Courier\ 10\ Pitch\ 11 "字体设置
	set guifont=DejaVu\ Sans\ mono\ 11 
"	set guifontwide=STHeiti\ 14
endif
set mousemodel=popup 






"""""""""""""""""""""""""""""""""""""""
" tags
"
"
"

set tags=tags;
set tags+=~/nginx-1.7.4/tags;
