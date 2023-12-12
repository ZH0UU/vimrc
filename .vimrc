""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   __   __   __     __    __    
"  /\ \ / /  /\ \   /\ "-./  \   
"  \ \ \"/   \ \ \  \ \ \-./\ \  
"   \ \__|    \ \_\  \ \_\ \ \_\  
"    \/_/      \/_/   \/_/  \/_/   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "
" 使用 C 文件类型插件
filetype plugin on
filetype indent on
syntax enable

" 关闭备份和自动保存
set nobackup
set noswapfile
set autoread

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 设置编码为UTF-8
set encoding=utf-8

" 设置文件编码为UTF-8
set fileencoding=utf-8

" 设置行号和相对行号
set number
set relativenumber

" 设置 Tab 宽度为 4 个空格
set tabstop=4
set shiftwidth=4
set expandtab

" 设置 C 和 C++ 文件的缩进
autocmd FileType c,cpp setlocal cindent

" 映射 jj 为 <Esc>，方便退出插入模式
inoremap jj <Esc>

" 设置搜索时忽略大小写
set ignorecase
set smartcase
set incsearch

" 自动保存文件
autocmd BufLeave * silent! wall

" 在状态栏显示光标位置
set ruler

" 高亮显示搜索结果
set hlsearch

" 设置 C 和 C++ 的标识符高亮
autocmd FileType c,cpp let g:cpp_experimental_template_highlight = 1
autocmd FileType c,cpp let c_no_curly_error = 1
autocmd FileType c,cpp let c_no_if0_error = 1
autocmd FileType c,cpp let c_no_error = 1
autocmd FileType c,cpp let c_no_asm_error = 1

" 启用自动补全
set omnifunc=ccomplete#Complete#syntaxcoplete
set completeopt=longest,menu
set cpt+=kspell

" 设置自动补全的快捷键
inoremap <C-Space> <C-x><C-o>

" 编译并且运行当前文件
"map <F5> :w<CR>:!g++ % -o %< && ./%<<CR>
map <F5> :w<CR>:!make %:r && ./%:r<CR>
"括号补全
inoremap ( ()<Left>
inoremap {<CR> {<CR>}<C-o>k<C-o>A<CR>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" 在当前行下方和上方各高亮显示5行。
set scrolloff=5

"leader
nnoremap <Leader>sc :nohlsearch<CR>
nnoremap <Leader>cl :%s/\s\+$//e<CR> " 去除行尾空白
map <Leader>sp :set spell!<CR>
nnoremap <leader>m :!man <cword><CR>

"高亮显示当前行与列
set cursorline
set cursorcolumn
