"" Specify a directory for plugins
"" - For Neovim: ~/.local/share/nvim/plugged
"" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-easy-align'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
Plug 'ap/vim-buftabline'
Plug 'toml-lang/toml'
Plug 'cespare/vim-toml'

"" Aesthetics
Plug 'arcticicestudio/nord-vim'

"" Language specific plugins
" Plug 'derekwyatt/vim-scala'
" Plug 'ensime/ensime-vim'
Plug 'davidhalter/jedi-vim', { 'for': ['python', 'python3'] }
Plug 'python/black', { 'for': ['python', 'python3'] }
Plug 'jmcantrell/vim-virtualenv', { 'for': ['python', 'python3'] }
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'tag': 'v1.19' }
Plug 'ymyzk/vim-copl'
Plug 'google/vim-maktaba'
Plug 'bazelbuild/vim-bazel'
Plug 'kristijanhusak/vim-carbon-now-sh'

"" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

"" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

"" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

"" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

"" Initialize plugin system
call plug#end()


""*****************************************************************************"
"" Basic Setup
""*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indent
set backspace=indent,eol,start

"" Use clipboard on macos
set clipboard=unnamed

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

"" Mouse
"" Using the mouse on a terminal.
if has('mouse')
  set mouse=a
  if !has('nvim')
    set ttymouse=xterm2
  endif
endif

"" Invisible chars
set list
set listchars=eol:¬,tab:▸-

"" session management
" let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

""*****************************************************************************
"" Visual Settings
""*****************************************************************************
colorscheme nord
syntax on
set ruler
set number

let no_buffers_menu=1

set mousemodel=popup
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

if &term =~ '256color'
  set t_ut=
endif

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


""*****************************************************************************
"" Completion
""*****************************************************************************
"" Don't use the first one
set completeopt=longest,menuone


""*****************************************************************************
"" Keymaps
""*****************************************************************************
"" omnicomplete
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
inoremap <leader>, <C-x><C-o>
:" Map Ctrl-A -> Start of line, Ctrl-E -> End of line
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>

"" supertab
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'


""*****************************************************************************
"" Abbreviations
""*****************************************************************************
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


""*****************************************************************************
"" Syntastic
""*****************************************************************************
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


""*****************************************************************************
"" Racer (rust)
""*****************************************************************************
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


""*****************************************************************************
"" Python
""*****************************************************************************
let g:pymode_rope = 0
let g:virtualenv_auto_activate = 1
