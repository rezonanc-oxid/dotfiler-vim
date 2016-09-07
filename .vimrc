set rtp+=$HOME/homebrew/opt/fzf

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'junegunn/fzf.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'bkad/CamelCaseMotion'
"    Plug 'altercation/vim-colors-solarized'
    Plug 'easymotion/vim-easymotion'
    Plug 'morhetz/gruvbox'
    Plug 'bling/vim-airline'
"    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'majutsushi/tagbar'
    Plug 'xolox/vim-session'
    Plug 'xolox/vim-misc'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'davidhalter/jedi-vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/vim-pseudocl'
    Plug 'junegunn/vim-oblique'
    Plug 'junegunn/vim-github-dashboard'
    Plug 'junegunn/vim-fnr'
"    Plug 'MattesGroeger/vim-bookmarks'
call plug#end()

" Configuration for snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
syntax on

" leader key
let mapleader=","

" Numbering of lines
set relativenumber
set number

" More visuals
set cursorline

" Spacing
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start

" Switch next/previous buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Whitespace
set list
set listchars=trail:•,tab:>-,extends:>,precedes:<

" Spelling
map <F5> :setlocal spell! spelllang=en_us<CR>

" Save
map <F10> :w<CR>

" Wrap
map <leader>ww :set wrap linebreak nolist<CR>

" Custom maps
" Remap ; to act as :
noremap ; :

map <F1> :NERDTreeToggle<CR>
map <F2> :bp<CR>
map <F3> :bn<CR>
map <F4> :bd<CR>

map <leader>fb :Buffers<CR>
map <leader>fw :Windows<CR>
map <leader>ff :Files<CR>
map <leader>fF :Files 
map <leader>fl :BLines<CR>
map <leader>fL :Lines<CR>
map <leader>fc :Commands<CR>
map <leader>fs :Snippets<CR>
map <leader>ft :Tags<CR>
map <leader>fm :Marks<CR>
map <leader>fM :Maps<CR>

map <leader>cc <Plug>NERDCommenterToggle

map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>

map <leader>n :set number!<CR>:set relativenumber!<CR>

" Map paste
map <F12> :set paste!<CR>

" Searching
set hlsearch
set incsearch

" graphical
set t_Co=256
set bg=dark
colorscheme gruvbox

" tabs
cabbrev tsp tab split
cabbrev nt tab new

" annoying
cabbrev W w

" powerline
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set ttimeoutlen=0
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END

" Vim session
let g:session_autosave = 'no'

" Buffers
set hidden

" For git gutter
set updatetime=250

" Jedi
let g:jedi#popup_on_dot = 0

" Limelight
let g:limelight_conceal_ctermfg = 'gray'

" Set backup directory
set backupdir=$HOME/.backup//
set directory=$HOME/.backup//

" File type related changes
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
