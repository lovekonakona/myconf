"  return OS type, eg: windows, or linux, mac, et.st..
function! MySys()
    if has("win16") || has("win32") || has("win64") || has("win95")
        return "windows"
    elseif has("unix")
        return "unux"
    endif
endfunction

set nocompatible            " 关闭 vi 兼容模式
syntax on                   " 自动语法高亮
set number                  " 显示行号
set cursorline              " 突出显示当前行
set ruler                   " 打开状态栏标尺
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4               " 设定 tab 长度为 4
set nobackup                " 覆盖文件时不备份
set nowb
set noswapfile              " 禁止使用交换文件
set autochdir               " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on   " 开启插件
set backupcopy=yes          " 设置备份时的行为为覆盖
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
" set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2             " 短暂跳转到匹配括号的时间
set magic                   " 设置魔术
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T           " 隐藏工具栏
" set guioptions-=m           " 隐藏菜单栏
set guioptions+=b           " 水平滚动条
"set smartindent             " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
"设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
set foldenable              " 开始折叠
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
"set foldclose=all           " 设置为自动关闭折叠                            
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
set history=500 " 设置历史记录数量
set showcmd " 显示窗口右下角的未完成命令
set autoindent " 回车时自动使用上一行的缩进
set nowrap " 禁止换行
set sidescroll=15 " 光标移动到窗口边缘每次滚动字符数
set whichwrap=b,s,<,>,[,] " 设置可多行移动光标
set cindent
set shiftwidth=4 
set softtabstop=4
set tabstop=4 " Tab键的宽度
set expandtab " 用空格代替Tab
"set showtabline=2 "标签栏的设置
"设置编码
set fileencodings=utf-8,gb2312,gbk,gb18030
set fileencoding=utf-8

" ESC 取消搜索高亮显示
map <unique> <ESC> :nohlsearch<CR>
imap <unique> <ESC> <Esc>:nohlsearch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置配色
colorscheme ir_black
"set lines=35
"set columns=120

" 设置字体
if MySys() == "windows"
    set guifont=Monaco:h10
else
    set guifont=Monaco:h14
endif

source $VIMRUNTIME/mswin.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <C-o>:NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ACP 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:acp_mappingDriven = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdCommenter 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <C-'> <leader>c<space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if MySys() == "windows" 
    let g:tagbar_ctags_bin = $VIM.'\vimfiles\ctags.exe'
else
    let g:tagbar_ctags_bin = '/usr/local/ctags/bin/ctags'
endif

let g:tagbar_autoshowtag = 1
let g:tagbar_width = 22
let g:tagbar_autofocus = 0

"设置快捷键
noremap <F3> :TagbarToggle<CR>
inoremap <F3> <C-o>:TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" zenCoding 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("mac")
    let g:user_zen_expandabbr_key = '<d-e>'
else
    let g:user_zen_expandabbr_key = '<c-e>'
endif
let g:use_zen_complete_tag = 1

" 缩进
noremap <S-Tab> <C-o><<
noremap <Tab> <C-o>>>
inoremap <S-Tab> <C-o><<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" tab切换
noremap <C-Tab> :tabnext<CR>
inoremap <C-Tab> <C-o>:tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>
inoremap <C-S-Tab> <C-o>:tabprev<CR>

" 插入模式快捷键
inoremap <C-b> <C-o>b
inoremap <C-w> <C-o>w

" 行首自动切换空白字符
fun! GoToHeadLine()
    let pos = getpos(".")
    let firstChar = match(getline("."), "\\S") + 1
    if pos[2] > firstChar
        let pos[2] = firstChar
    elseif pos[2] <= firstChar && pos[2] > 1
        let pos[2] = 1
    else
        let pos[2] = firstChar
    endif
    call setpos(".", pos)
endfun
    
if has("mac")
    let g:macvim_skip_cmd_opt_movement = 1

    no   <D-Left>       :call GoToHeadLine()<CR>
    ino  <D-Left>       <C-o>:call GoToHeadLine()<CR>

    no   <D-Right>      <End>
    no!  <D-Right>      <End>
    no   <M-Right>      <C-Right>
    no!  <M-Right>      <C-Right>

    no   <D-Up>         <C-Home>
    ino  <D-Up>         <C-Home>
    map  <M-Up>         {
    imap <M-Up>         <C-o>{

    no   <D-Down>       <C-End>
    ino  <D-Down>       <C-End>
    map  <M-Down>       }
    imap <M-Down>       <C-o>}

    no   <D-S-Left>     <S-Home>
    ino  <D-S-Left>     <S-home>

    no   <D-S-Right>    <S-End>
    ino  <D-S-Right>    <S-End>

    imap <D-BS>         <C-u>
else
    no   <Home>         :call GoToHeadLine()<CR>
    ino  <Home>         <C-o>:call GoToHeadLine()<CR>
endif

" 快捷键
if !has("mac")
    no   <C-w>          :close<CR>
    ino  <C-w>          <C-o>:close<CR>
    no   <C-t>          :tabnew<CR>
    ino  <C-t>          <C-o>:tabnew<CR>
endif
