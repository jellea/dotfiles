set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'snoe/nvim-parinfer.js'
Plugin 'neovim/node-host'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim.git'
Plugin 'mileszs/ack.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'

call vundle#end() 

map <Space> <Leader>

" Cross session undo
set undofile
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

set colorcolumn=80

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :aq<CR>

" Tabs
noremap <Leader>j :tabNext <CR>
noremap <Leader>k :tabprevious <CR>

" Configure CtrlP
nnoremap <Leader>p :CtrlP<Cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/target/*,*/compiled/*,*.log
" add files of .gitignore to CtrlP blacklist
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
