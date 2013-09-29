"" Must be first
set nocompatible

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

execute pathogen#infect()
filetype plugin indent on
syntax on
set modelines=0

" Open Yankring-menu
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

" Open tag list
nnoremap <silent> <F4> :TlistToggle<cr><C-w>h
inoremap <silent> <F4> <ESC>:TlistToggle<cr><C-w>h

" Open undo tree
nnoremap <F5> :GundoToggle<CR>

" Tag command
nnoremap æ <C-]>
nnoremap ø <C-t>

set tags+=tags;$HOME
