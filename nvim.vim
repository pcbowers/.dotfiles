"remove all existing autocmds
autocmd!

" install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline' "status bar
Plug 'vim-airline/vim-airline-themes' "status bar themes
Plug 'preservim/nerdtree' "file system explorer
Plug 'tpope/vim-fugitive' "git support
Plug 'tpope/vim-commentary' "add commenting with gc
Plug 'slim-template/vim-slim' "add basic syntax highlighting
Plug 'tpope/vim-surround' " allow easy surrounding in pairs (quotes, brackets etc.)
Plug 'joshdick/onedark.vim' "color theme
Plug 'airblade/vim-gitgutter' "show git-gutter

Plug 'dag/vim-fish' "syntax highlighting for fish
Plug 'leafgarland/typescript-vim' "syntax highlighting for typescript

" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall | q
endif

call plug#end()

set encoding=utf-8
set shortmess+=c "don't pass messages to |ins-completion-menu|

set nocompatible "Don't make efforts to make Vim VI-compatible

:filetype on "Turn on filetype detection
filetype plugin indent on "load indent files for auto indenting

set autoread "auto reload without asking

set updatetime=300 "shortens updatetime from 4000 ms

syntax on "add syntax highlighting

silent! colorscheme onedark "set the overall colorscheme silently if not installed
let g:airline_theme='deus' "set the status bar theme
let g:airline_powerline_fonts=1 "allow special icons
let g:airline#extensions#tabline#enabled = 1 "display open tabs/buffers

"Ctrl b for nerdtree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
"ctrl h for prev buffer
nnoremap <silent> <C-h> :bprev<CR>
"ctrl l for next buffer
nnoremap <silent> <C-l> :bnext<CR>
"allow pressing escape to clear search results
nnoremap <silent> <leader><esc> :nohlsearch<cr>

set hidden

set history=10000 "increase c mmand/search hist ry

set expandtab "tabs are spaces
set tabstop=2 "tab size (visual)
set softtabstop=2 "actual tab size
set shiftwidth=2 "how much to shift when pressing tab
set autoindent "auto indent

set wrap "visual wrapping
set textwidth=120 "wrap at 120 characters

set hlsearch "turn on highlighting for searching

set showmatch "highlight matching bracket

set number relativenumber "show line numbers relative to the one you're on
set showcmd "show the command
set cursorline "show a line under the cursor

set incsearch "search as entered
set hlsearch "highlight matches

set noswapfile "no swap files
set nobackup "no backups

set ignorecase smartcase "make search case sensitive unless contains upper case chars
