" ========= VUNDLE CONFIG ===========
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'


" PLUGINS
Plugin 'tpope/vim-sensible'
" Plugin 'tpope/vim-unimpaired'
Plugin 'dag/vim2hs'
Plugin 'Solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'derekwyatt/vim-scala'

Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'

Plugin 'Valloric/YouCompleteMe'
let g:EclimCompletionMethod = "omnifunc"
let g:ycm_show_diagnostics_ui = 0

Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_haskell_checkers = ['ghc_mod', 'hlint']
set shell=/bin/sh
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Plugin 'pbrisbin/vim-syntax-shakespeare'
let g:hamlet_highlight_trailing_space = 0

Plugin 'scrooloose/nerdtree'
" Open NERDTree with vim
" autocmd vimEnter * NERDTree
" autocmd VimEnter * wincmd p
" Close NERDTree with vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <silent> <F3> :call NERDTreeToggleInCurDir()<cr>
function! NERDTreeToggleInCurDir()
" If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    exe ":NERDTreeFind"
  endif
endfunction

call vundle#end()
filetype plugin indent on

" ========== GENERAL VIM SETTINGS ==========
set title

" Search options
set ignorecase smartcase hlsearch

" Enable line numbers
set relativenumber
set number

" Remove sounds
set noerrorbells
set novisualbell

" Use F11 to toggle between paste and nopaste
set pastetoggle=

" Tab specific option
set tabstop=2                   
set expandtab                 
set softtabstop=2
set shiftwidth=2
set shiftround

" Custom commands & alias
let mapleader = ','
cmap w!! w !sudo tee > /dev/null %

" Misc
set cmdheight=2
set guifont=Monospace\ 10

syntax enable
set background=dark
colorscheme solarized

highlight clear LineNr
highlight LineNr ctermfg=yellow

