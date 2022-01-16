set autoread
au CursorHold * checktime

set encoding=utf-8
set hlsearch
set nu
set autoindent
set cindent
set ts=2
set sts=2
set shiftwidth=2
set showmatch
set smartcase
set smarttab
set smartindent
set ruler
set wmnu
set clipboard=unnamedplus
set laststatus=2

call plug#begin('~/.vim/plugged')
Plug 'haishanh/night-owl.vim'
Plug 'junegunn/fzf' "fuzzy finder
Plug 'scrooloose/nerdtree' " source tree

" code navigator
"Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vi status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter' " git diff markers
Plug 'blueyed/vim-diminactive' " reduce brigthness of inactive area

" check bracket
"Plug 'matchparenpp'
" auto close bracket
"Plug 'townk/vim-autoclose'
call plug#end()

" night-owl
if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme night-owl


"" python autocomplete
"filetype off
"filetype plugin indent on
"
"" YouCompleteMe
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_python_binary_path='/anaconda3/envs/ns3-gym/bin/python'

" Enhanced C and C++ syntax highlighting optioanl features
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 1

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

" for vim-airline
let g:airline_theme = 'night_owl'
"let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline#extensions#tabline#fnamemod= ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'

" useful commands
" :term  "open the terminal in vi
tnoremap <Esc> <C-\><C-n>

" switch between header/source with F4
map <F4> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

" goto definition with F12
map <F12> <C-]>

" nerdtree
nmap nerd :NERDTreeToggle<CR>

" toggleBar
nmap tag :TagbarToggle<CR>

" fzf
nmap <C-p> :FZF<CR>

"============CoC setting======================
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" auto text correction
ab fucntion function
ab calss class
ab functio function
ab dunction function
ab functuin function
ab dunction function
ab functuin function
ab functopn function
ab fumction function
ab vlass class
ab xlass class
ab classs class
ab forarch foreach
ab inser insert
ab insertt insert
ab quewrty query
ab ovject object
ab objectr object
ab evho echo
ab printr print_r
ab prit print
ab fales false
ab treu true
ab teur true
ab ture true
ab nulll null
ab nuii null
ab retrun return
ab retunr return
ab htis this
ab erturn return
