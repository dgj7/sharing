" don't include vi compatibility
set nocompatible

" show trailing whitespace
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" ruler on
set ruler

" line numbers on; reverse with 'set nonumber'
set number

" stfu
set visualbell
set noerrorbells

" automagically reload files changed on disk
set autoread

" status line
set laststatus=2

" enable file type detection
filetype on

" enable plugins and load p lugin for the detected file type
filetype plugin on

" load an indent file for the detected file type
filetype indent on

" turn syntax highlighting on
syntax on

" highlight cursor line underneath the cursor horizontally
set cursorline

" highlight cursor line underneath the cursor vertically
set cursorcolumn

" set shift width and tab width to 4 spaces
set shiftwidth=4
set tabstop=4

" use spaces instead of tabs
set expandtab

" do not save backup files
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" stop automatically making the next line a comment line of the previous line was a comment line
set formatoptions-=cro

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

call plug#end()


" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.
colorscheme molokai

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
