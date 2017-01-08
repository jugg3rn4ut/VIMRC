"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remeber 'n' lines in history
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Reload automatically changed files
set autoread

" Encoding
set encoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show current position
set ruler

" Highlight search results
set hlsearch

" Show matching brackets 
set showmatch
set mat=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
hi Normal ctermbg=Black ctermfg=White guifg=White guibg=Black
set background=dark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
set shiftwidth=4
set tabstop=4

set ai
set si
set wrap

" Break line at 500 characters
set lbr
set tw=500

" Delete trailing white space
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.rb :call DeleteTrailingWS()
