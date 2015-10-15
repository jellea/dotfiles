set nocompatible

" Enable plugins
execute pathogen#infect()
execute pathogen#helptags()

" Cross session undo
set undodir=~/.vim/undo
set undofile

" Tabs
noremap <C-n> :tabNext <CR>
noremap <C-p> :tabprevious <CR>

" Elm
nnoremap <leader>el :ElmEvalLine<CR>
vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
nnoremap <leader>em :ElmMakeCurrentFile<CR>
