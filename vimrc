"" Must be first
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'QuickBuf'
Plugin 'taglist.vim'
Plugin 'undotree.vim'
Plugin 'L9'
Plugin 'gnu-c'
Plugin 'YankRing.vim'
"Plugin 'AutoComplPop'
Plugin 'a.vim'
" scripts not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
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
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

"" In Makefiles DO NOT use spaces instead of tabs
autocmd FileType make setlocal noexpandtab

set number " Show line numbers
set cursorline " Highlight current line
set autoindent " Better indentation
set showmode " Show VISUAL and INSERT mode at bottom
set showcmd " Show command being input (like cw)
set hidden " Hide abandoned files instead of unloading
set wildmenu " Shows autocomplete alternatives
set wildmode=list:longest " Complete until first different character
set visualbell " No sound alarm
set ttyfast " Smoother drawing for fast terminals
set ruler " Show line number and column in bottom line
set backspace=indent,eol,start " Make backspace behave normally
set laststatus=2 " Always show status line
set ignorecase
set smartcase " Works with the above to make search case smart
set hlsearch " Highlight searched phrases
set incsearch " Highlight while searching
set showmatch " Briefly jump to matching bracket
set gdefault " Make search global by default
set linebreak " wordwrap

"" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


"Remove search highlight
nnoremap <leader><space> :noh<cr>

"Mark text that was just pasted
nnoremap <leader>v V`]

"Open new vertical window and switch to it
nnoremap <leader>w <C-w>v<C-w>l

"Easier window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"Make up and down work for real lines
nnoremap j gj
nnoremap k gk

syntax on
set modelines=0

" Open Yankring-menu
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

" Open NERDTree
nnoremap <silent> <F7> :NERDTreeToggle<cr>
inoremap <silent> <F7> <ESC>:NERDTreeToggle<cr>

" Open tag list
nnoremap <silent> <F8> :TlistToggle<cr><C-w>h
inoremap <silent> <F8> <ESC>:TlistToggle<cr><C-w>h

nnoremap <silent> <F9> :TagbarToggle<cr><C-w>l
inoremap <silent> <F9> <ESC>:TagbarToggle<cr><C-w>l
"nmap <F9> :TagbarToggle<CR>

" Open undo tree
nnoremap <F5> :UndotreeToggle<CR><cr><C-w>h

" Trigger configuration. Do not use <tab> if you use YouCompleteMe
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-tab>"
nnoremap <leader>u :call UltiSnips#ListSnippets() <cr>
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:ycm_key_list_select_completion = ['<S-space>']
let g:ycm_key_list_previous_completion = ['<C-S-space>']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDir="~/.vim/bundle/vim-snippets/UltiSnips/"

let g:tex_flavor="tex"

let g:yankring_history_dir="~/.vim/"

" Tag command
nnoremap æ <C-]>
nnoremap ø <C-t>

set tags=./tags;$HOME
let g:easytags_dynamic_files = 1
"set tags+=~/tagtest/lib/tags
