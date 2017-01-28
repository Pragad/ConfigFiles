set nocompatible    "http://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
filetype off " required

colorscheme desert
set ignorecase          " Ignore case when searching
set smartcase           " When 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase letter, it is case sensitive, otherwise, it is not
set hlsearch            " Also switch on highlighting the last used search pattern.
set incsearch           " Make search act like search in modern browsers
set nu                  " Set Line numbers
set bs=2                " Allow backspacing over everything in insert mode
set ruler               " Show the line and column number of the cursor position
"set foldminlines=150
set history=15          " Keep 15 lines of command line history
"set viminfo='20,\"50   " Read/write a .viminfo file, don't store more than 50 lines of registers
set viminfo='25         " Limits number of files to 25
set autoindent          " Always set autoindenting on
set cindent             "Automatically inserts indentation but stricter and more customisable
set nobackup
" set backupdir=~/.vim/backup
" set directory=~/.vim/tmp
set showcmd             " Little useful bits about actual state of keyboard input in normal are displayed.
set showmode            " Display the current editing mode in the lower right corner of the editing screen.
set splitright          " cscope results window on right on a vertical split
syntax on               " Enable syntax highlighting
set laststatus=2        " Always display the status bar line, even if only one window is displayed
set clipboard=unnamed   " http://stackoverflow.com/questions/606224/copying-text-from-vim-to-windows

" Set working directory to the current file
" set vim to chdir for each file
if exists('+autochdir')
    set autochdir
else
    autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

" Search for ctags till it hits home director
" http://stackoverflow.com/questions/11975316/vim-ctags-tag-not-found
set tags=./tags,tags;$HOME

" Copy current filename to buffer
" http://stackoverflow.com/questions/916875/yank-file-name-path-of-current-buffer-in-vim
" http://vim.wikia.com/wiki/Copy_filename_to_clipboard
" Convert slashes to backslashes for Windows.
if has('win32')
  nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
else
  nmap ,cs :let @*=expand("%")<CR>
  nmap ,cl :let @*=expand("%:p")<CR>
endif
" ,cs copies just the filename.
" ,cl copies the filename including it's full path. 

" Vim Buffers
nnoremap <Tab> :bnext<cr>
:nnoremap <S-Tab> :bprevious<cr>

" Insert newline without entering insert mode
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>

" Easier way to save and quit. don't have to hold Shift everytime
nnoremap ; :

" But ; is useful to quick navigate to a specific position after using f,F,t,T
nnoremap ' ;

" Paste yanked test multiple times
" Either use http://stackoverflow.com/questions/290465/vim-how-to-paste-over-without-overwriting-register 
" or remap p as follows.
" 'p' to paste, 'gv' to re-select the newly pasted content. 'y' to copy it again
xnoremap p pgvy
xnoremap P Pgvy

" https://medium.com/@mozhuuuuu/vimmers-you-dont-need-nerdtree-18f627b561c3
let g:netrw_liststyle=3

"These are to cancel the default behavior of d, D, c, C
"  to put the text they delete in the default register.
"  Note that this means e.g. "ad won't copy the text into
"  register a anymore.  You have to explicitly yank it.
" nnoremap d "_d
" vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
nnoremap x "_x
vnoremap x "_x

" Disabling arrow keys
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

map bo :browse old<cr>

" Easy window navigation when using split windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" clearing highlighted searches
nmap <silent> ,/ :nohlsearch<CR>

" https://medium.com/@mozhuuuuu/vimmers-you-dont-need-nerdtree-18f627b561c3
let g:netrw_liststyle=3

" http://usevim.com/2012/07/20/vim101-leader/
let mapleader=","
" https://medium.com/@mozhuuuuu/vimmers-you-dont-need-nerdtree-18f627b561c3
map <leader>n :E<cr>

if has("autocmd")
    augroup cprog
        " Remove all cprog autocommands
        au!
        
        " When starting to edit a file:
        "   For C and C++ files set formatting of comments and set C-indenting on.
        autocmd FileType *      set formatoptions=tcql nocindent comments&
        autocmd FileType cc,h,c,cpp,java,wiki,x  set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,://
    augroup END

    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

" Disabled stuff
" In text files, always limit the width of text to 90 characters
" autocmd BufRead *.txt set tw=90
set tabstop=4
set shiftwidth=4
set expandtab
let g:tab_mode = 4

