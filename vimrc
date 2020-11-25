" 其他设置
set showcmd " 显示当前键入的指令
set number
set wrap " 文字换行
set encoding=UTF-8
set backspace=2 "解决插入模式下 delete/backspace 建失效


" 缩进
set autoindent "按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致。
set tabstop=4 "按下 Tab 键时，Vim 显示的空格数。
set shiftwidth=4 "设置自动缩进长度为4空格
set autoindent " 继承前一行的缩进方式， 适用于多行注释


" 高亮
syntax on "语法高亮
set cursorline "高亮显示光标所在行
set ruler "标尺功能， 显示当前光标所在的行列号
set showmatch "高亮显示匹配的括号
set hlsearch "高亮被搜索的句子


" 搜索
set ignorecase "在搜索的时候忽略大小写
set incsearch " 开启实时搜索


" 配色方案
set background=dark
colorscheme gruvbox 


"按键映射
map <F2> :NERDTreeToggle<CR>
nmap fi :YcmCompleter FixIt<CR>
nmap gt :YcmCompleter GoTo<CR>
nmap gd :YcmCompleter GoToDefinition<CR>
nmap gh :YcmCompleter GoToDeclaration<CR>
let mapleader = "\<space>"








call plug#begin('~/.vim/plugged')

"vim 启动界面
Plug 'mhinz/vim-startify'

" vim 状态栏美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 文件 icon
Plug 'ryanoasis/vim-devicons'

" 主题
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'


" 目录
Plug 'scrooloose/nerdtree'

" vim 括号自动补全	
Plug 'jiangmiao/auto-pairs'

" vim git插件
Plug 'tpope/vim-fugitive'

" 代码提示
Plug 'ycm-core/YouCompleteMe'

" 模糊查找插件
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension'  }

Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
call plug#end()




" vim-airline 美化
let g:airline_extensions = ['tabline']
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr                   = ''
let g:airline_symbols.maxlinenr                = ' '
let w:airline_skip_empty_sections              = 1
let g:airline_section_b                        = '%{fugitive#head()}'
let g:airline_section_c                        = ''
let g:airline_section_x                        = '%{&filetype}'
let g:airline_section_warning                  = ''
let g:airline#extensions#tabline#fnamemod = ':p:t' " 只显示文件名，不显示路径内容。
let g:airline#extensions#tabline#enabled       = 1
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline_extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#branch#enabled              = 1
let g:airline#extensions#branch#displayed_head_limit = 10




" Ycm 设置
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }


let g:Lf_ShortcutF = '<C-P>'
