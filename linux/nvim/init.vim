"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.config/nvim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
"call dein#add('Shougo/deoplete.nvim')
" call dein#add('neomake/neomake')
call dein#add('w0rp/ale')

call dein#add('editorconfig/editorconfig-vim')
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-surround')
call dein#add('easymotion/vim-easymotion')

" Vue.js
call dein#add('posva/vim-vue')

" Cpp
"call dein#add('critiqjo/lldb.nvim')
"call dein#add('zchee/deoplete-clang')

" toml syntax
call dein#add('cespare/vim-toml')

" Scala
call dein#add('derekwyatt/vim-scala')
call dein#add('ensime/ensime-vim')

" Colorscheme
call dein#add('arcticicestudio/nord-vim')

" Completion
call dein#add('zchee/deoplete-jedi')

" Python
call dein#add('Vimjas/vim-python-pep8-indent')
call dein#add('plytophogy/vim-virtualenv')

" You can specify revision/branch/tag.
" call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()
call dein#save_state()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


"*****************************************************************************"
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Encoding
set bomb
set binary
"set ttyfast

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

" session management
"let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" Set python interpreter for neovim
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" completion
"let g:neomake_python_enabled_makers = ['python', 'flake8', 'mypy']
"let g:neomake_python_enabled_makers = ['python', 'pep8', 'mypy']
"let g:neomake_python_flake8_maker = {
"			\ 'exe': $CONDA_PREFIX . '/bin/flake8'
"			\ }
"autocmd! BufEnter,BufWritePost * Neomake

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number

let no_buffers_menu=1

set mousemodel=popup
"set t_Co=256
set cursorline
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
endif

"if &term =~ '256color'
"  set t_ut=
"endif
"
"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

colorscheme nord

"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"*****************************************************************************
"" Others
"*****************************************************************************
" Check types for scala
autocmd BufWritePost *.scala silent :EnTypeCheck
nnoremap <localleader>t :EnType<CR>
au FileType scala nnoremap <localleader>df :EnDeclaration<CR>

