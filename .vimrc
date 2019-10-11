call plug#begin('~/.vim/plugged')


Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'terryma/vim-multiple-cursors'


Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'


"Plug 'Chiel92/vim-autoformat'
Plug 'rhysd/vim-clang-format'

call plug#end()

set autoindent

let g:airline_theme = 'dracula'
let g:airline#extensions#tabline#enabled = 1
set number
set relativenumber
set paste
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"


let g:clang_format#auto_format = 1
let g:clang_format#auto_format_on_insert_leave = 1

autocmd FileType c ClangFormatAutoEnable

" map to <Leader>cf in C++ code

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>

autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>

" if you install vim-operator-user

autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)

" Toggle auto formatting:

nmap <Leader>C :ClangFormatAutoToggle<CR>
