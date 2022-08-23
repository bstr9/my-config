set nocompatible              " be iproved, required
filetype plugin on                  " required
filetype plugin indent on
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'dense-analysis/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" 插件开始的位置
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  } 
Plug 'junegunn/fzf.vim' 

Plug 'buoto/gotests-vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" 可以快速对齐的插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/vim-easy-align'

" 用来提供一个导航目录的侧边栏
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" 可以使 nerdtree 的 tab 更加友好些
Plug 'jistr/vim-nerdtree-tabs'

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'  }

" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
Plug 'majutsushi/tagbar'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

" golang delve
Plug 'sebdah/vim-delve'

" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'vim-airline/vim-airline'

" 有道词典在线翻译
Plug 'ianva/vim-youdao-translater'

" 代码自动完成，安装完插件还需要额外配置才可以使用
" Plug 'Valloric/YouCompleteMe'

" 可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'

" 下面两个插件要配合使用，可以自动生成代码块
Plug 'honza/vim-snippets'

" 自动补全
" Plug 'exvim/ex-autocomplpop'

" neodark schema
Plug 'KeitaNakamura/neodark.vim'

" 配色方案
" colorscheme neodark
Plug 'KeitaNakamura/neodark.vim'
" colorscheme monokai
Plug 'crusoexia/vim-monokai'
" colorscheme github 
Plug 'acarapetis/vim-colors-github'
" colorscheme one 
Plug 'rakr/vim-one'
" colorscheme molokai
Plug 'tomasr/molokai'
" colorscheme tender
Plug 'jacoborus/tender.vim'
" colorscheme iceberg 
Plug 'cocopon/iceberg.vim'

" markdown 插件
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" CtrlSF 全局插件
Plug 'dyng/ctrlsf.vim'
Plug 'NLKNguyen/papercolor-theme'

" nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" 插件结束的位置，插件全部放在此行上面
call plug#end()

"==============================================================================
" 主题配色 
"==============================================================================

" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
" 配色方案, 可以从上面插件安装中的选择一个使用 
"
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme tender "主题

" tab settings
set tabstop=4 " 设置Tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
set autoindent " 继承前一行的缩进方式，适用于多行注释"
set autowrite

"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go']  }
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2
autocmd FileType go nmap <leader>b  <Plug>(go-build)

"==============================================================================
" NERDTree 插件
"==============================================================================

" 打开和关闭NERDTree快捷键
map <C-\> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFocusToggle<CR> 

" 显示行号
let NERDTreeShowLineNumbers=1
" 打开文件时是否显示目录
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
" let NERDTreeWinSize=31
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks=2

" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

"==============================================================================
"  majutsushi/tagbar 插件
"==============================================================================

" majutsushi/tagbar 插件打开关闭快捷键
nmap <F9> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"==============================================================================
"  nerdtree-git-plugin 插件
"==============================================================================
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "m",
    \ "Staged"    : "a",
    \ "Untracked" : "o",
    \ "Renamed"   : "->",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "-",
    \ "Dirty"     : "*",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '~',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1

"==============================================================================
"  其他插件配置
"==============================================================================

" markdwon 的快捷键
map <silent> <F5> <Plug>MarkdownPreview
map <silent> <F6> <Plug>StopMarkdownPreview

" tab 标签页切换快捷键
nnoremap <C-1> 1gt
nnoremap <C-2> 2gt
nnoremap <C-3> 3gt
nnoremap <C-4> 4gt
nnoremap <C-5> 5gt
nnoremap <C-6> 6gt
nnoremap <C-7> 7gt
nnoremap <C-8> 8gt
nnoremap <C-9> 9gt
nnoremap <C-0> :tablast<CR> 
":nn <Leader>2 2gt
":nn <Leader>3 3gt
":nn <Leader>4 4gt
":nn <Leader>5 5gt
":nn <Leader>6 6gt
":nn <Leader>7 7gt
":nn <Leader>8 8gt
":nn <Leader>9 8gt
":nn <Leader>0 :tablast<CR>

"==============================================================================
" GVim 的配置
"==============================================================================
" 如果不使用 GVim ，可以不用配置下面的配置
if has('gui_running')
        "colorscheme one
    " 设置启动时窗口的大小
    set lines=999 columns=999 linespace=4

    " 设置字体及大小
        set guifont=Roboto\ Mono\ 13

    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
            " 在 gvim 下不会和 terminal 的 alt+数字的快捷键冲突，
    " 所以将 tab 切换配置一份 alt+数字的快捷键
    :nn <M-1> 1gt
    :nn <M-2> 2gt
    :nn <M-3> 3gt
    :nn <M-4> 4gt
    :nn <M-5> 5gt
    :nn <M-6> 6gt
    :nn <M-7> 7gt
    :nn <M-8> 8gt
    :nn <M-9> 9gt
    :nn <M-0> :tablast<CR>
endif

"==============================================================================
" NerdTree Size 
"==============================================================================
let g:NERDTreeWinSize = 40

"==============================================================================
" CtrlSF key short 
"==============================================================================
let g:ctrlsf_ackprg = 'ag' 
nnoremap <C-f> :CtrlSF<Space>
set expandtab ts=4 ai
set number

"==============================================================================
" GoCode key short 
"==============================================================================
imap <Tab> <C-x><C-o>

"GOTAG

"Protobuf
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end

" fzf configuration
nnoremap <silent> <Leader>s :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>


" coc configuration {{{
let COC_COMPLETE_FILE_TYPES = [
      \ 'python',
      \ 'go',
      \ 'bash',
      \ 'json',
      \ 'vim',
      \ 'c',
      \ 'cpp',
      \ 'javascript',
      \ 'rust',
      \ ]

if has_key(g:plugs, 'coc.nvim')
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1] =~ '\s'
    endfunction

    augroup coc_option
      autocmd!
      " map gd to go to definition
      exec "au FileType " . join(COC_COMPLETE_FILE_TYPES, ",") . " nmap <silent> gd <Plug>(coc-definition)"
      " map <Tab> && <S-Tab> to manually trigger completion
      inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()
      inoremap <silent><expr> <S-Tab>
            \ pumvisible() ? "\<C-p>" :
            \ <SID>check_back_space() ? "\<S-Tab>" :
            \ coc#refresh()
    augroup END
endif

" airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" for python
let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=79
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99

"git gutter
let g:gitgutter_highlight_lines = 1

"line hint
nnoremap <silent> <s-n>    :set nu!<CR>

"go test
nnoremap <silent> <s-g>    :GoTest<CR>

" let g:python3_host_prog = '/Users/baojiwei/.pyenv/shims/python3'
" let g:python2_host_prog = '/usr/local/bin/python2'
set encoding=utf8
set ts=4

set wildignore+=versions/*,cache/*
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
