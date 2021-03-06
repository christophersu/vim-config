call pathogen#infect() 

syntax enable
set backspace=2
set backspace=indent,eol,start
set ai " auto indent
set wrap " wrap lines
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

set autoread " auto read external changes
set ruler
set nu " show line numbers
" set list " show whitespace

set hlsearch
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

set incsearch
set lazyredraw " for performance
" set magic " for regex
set showmatch

set noerrorbells
set novisualbell
set t_vb=

" 80th column
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

" safe?
" set nobackup
" set nowb
" set noswapfile

set guifont=Source\ Code\ Pro:h16
set background=dark
colorscheme base16-ocean
" Favorites:
    " Light
        " solarized
    " Dark
        " base16-ocean

set wildignore+=*.o,*~,*.pyc,*/env/*,*/.git/*

" Mac OS X / Linux
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = 'find %s -type f'

" Windows
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" nerdtree
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinSize = 20

" keyboard shortcuts
silent! nmap <F2> :NERDTreeToggle<CR>
" find better keys for these: (F3 doesn't work on mac)
" silent! map <F3> :NERDTreeFind<CR>
" let g:NERDTreeMapActivateNode="<F3>"
" let g:NERDTreeMapPreview="<F4>"

" autocmd VimEnter * NERDTree | wincmd p " open nerdtree and switch to text pane

" new version (only opens nerdtree when mvim started without arguments
"function! StartUp()                                                                             
"    if 0 == argc()
"        NERDTree | wincmd p
"    end
"endfunction
"autocmd VimEnter * call StartUp()

" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" gundo
nnoremap <F5> :GundoToggle<CR>
