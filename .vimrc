set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'snoe/nvim-parinfer.js'
Plugin 'neovim/node-host'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim.git'
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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'qsys/vim-clojure-lambda'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/goyo.vim'

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
noremap <Leader>j gT
noremap <Leader>k gt
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" Configure CtrlP
nnoremap <Leader>p :CtrlP<Cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/target/*,*/compiled/*,*.log
" add files of .gitignore to CtrlP blacklist
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Configure Ack.vim to use Ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" Language specific things:
"
" Pixie
au BufNewFile,BufRead *.pxi set filetype=clojure
au BufNewFile,BufRead *.boot set filetype=clojure
