"" Installs vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" Specify a directory for plugins
"" - For Neovim: ~/.local/share/nvim/plugged
"" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

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
Plug 'davidhalter/jedi-vim', {'for': ['python', 'python3']}
Plug 'psf/black', {'for': ['python', 'python3']}
Plug 'jmcantrell/vim-virtualenv', {'for': ['python', 'python3']}
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'tag': 'v1.19' }
Plug 'ymyzk/vim-copl'
Plug 'google/vim-maktaba'
Plug 'bazelbuild/vim-bazel'

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
