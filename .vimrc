" For lots of advanced VIM features
set nocompatible
filetype off " Required for Vundle

" Show current commands in satus bar
set showcmd

" Allow backspacing over anything
set backspace=indent,eol,start

" Folding
set foldmethod=syntax
set foldnestmax=5

" Syntax highlighting
filetype on
filetype plugin on
filetype plugin indent on
syntax on

" Highlight search results
set hlsearch

" Indentation
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" Tab completion in status bar
set wildmenu
set wildmode=longest:full,full

" Line numbers
set number

" Show cursor position
set ruler

" Fold with space
nnoremap <space> za

" Use jj or jk in insert mode to esc
inoremap jj <Esc>
inoremap jk <Esc>

" We like out terminals dark
set background=dark
" Use 256 colors
set t_Co=256

" Custom colors
highlight IncSearch term=reverse cterm=reverse ctermfg=NONE ctermbg=NONE
highlight Search term=reverse cterm=reverse ctermfg=3 ctermbg=NONE
highlight Folded ctermfg=Black ctermbg=5
highlight Folded ctermfg=240 ctermbg=235
highlight MatchParen ctermfg=Black ctermbg=Cyan
highlight Visual cterm=reverse
highlight SpellBad cterm=reverse ctermfg=1 ctermbg=NONE

" Use Blocky cursor (specific to mintty)
"let &t_ti.="\e[1 q"
"let &t_SI.="\e[5 q"
"let &t_EI.="\e[1 q"
"let &t_te.="\e[0 q"
"let &t_ti.=
"let &t_SI.=
"let &t_EI.=
"let &t_te.=


" Use decent encryption
set cm=blowfish2

