
syntax  on
set noerrorbells
set nocompatible
set number
set rnu
set expandtab
set tabstop=2
set shiftwidth=2 
set softtabstop =2
set nowrap
set smartindent
set smartcase " case sensitive searching untill a capital letter exist in the query
set colorcolumn=80
set incsearch
set encoding=utf-8
set autochdir " set the cwd to whatever file is in view.
" Give more space for displaying messages.
set cmdheight=2

"Changing cursor shape in insert mode

" Splits open at bottom and right
set splitbelow splitright


" tabs highlighting
set list
set listchars=tab:>>

highlight ColorColumn ctermfg=1 ctermbg=0 guibg=lightgrey

" moving lines up and down 
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

"(find a better way it gives glitches)
" move a selected block up and down
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags' " for C++
Plug 'Valloric/YouCompleteMe'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'

" Color Scheme
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug '/home/mpaulson/personal/vim-be-good'
call plug#end()



if executable('rg')
    let g:rg_derive_root='true'
endif

colorscheme gruvbox
set background=dark

let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pt :NERDTreeToggle<Enter>
nnoremap <leader>pv :NERDTreeFind<CR>
"nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <C-p> :GFiles<CR> "file searching "
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

"YCM
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>  
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

"" Coc
"" GoTo code navigation.
"nmap <leader>gd <Plug>(coc-definition)
"nmap <leader>gy <Plug>(coc-type-definition)
"nmap <leader>gi <Plug>(coc-implementation)
"nmap <leader>gr <Plug>(coc-references)
"nmap <leader>rr <Plug>(coc-rename)
"nmap <leader>g[ <Plug>(coc-diagnostic-prev)
"nmap <leader>g] <Plug>(coc-diagnostic-next)
"nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
"nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
"nnoremap <leader>cr :CocRestart

" Supressing a warning from Coc 
"let g:coc_disable_startup_warning = 1
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25


let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
if executable('ag')
  " use ag over grep "
  set grepprg=ag\ --nogroup\ --nocolor\ --column

  " Use ag in CtrlP for listing files. "
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif





