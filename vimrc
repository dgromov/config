call pathogen#infect()

set background=dark " Dark term bg (but bg=dark is gross)
colorscheme ir_black
syntax on

set backspace=indent,eol,start " Allow backspacing over everything
set confirm            " Confirm various potentially dangerous actions
set gdefault           " use s///g by default - s///gg to reverse
set hidden             " Enable hidden buffers - :bn w/ changes!
set magic              " Allows extended regexes
set nocompatible       " Don't use Vi settings!
set noerrorbells       " No annoying beeping
set nojoinspaces       " Don't put extra spaces on joining sentences.
set nostartofline      " Don't move to start of line on buffer next

set display=lastline  " Display as much of the last line as possible, not @
set hlsearch          " Hilight /search results!
set incsearch         " do incremental searching
set list              " Display listchars (see below)
set listchars=tab:  ,trail:_ " display tabs as nbsps and trailing spaces as _
set matchtime=1       " 1/10 of a second for showmatch
set nomore            " No spacing through messages!
set number            " display line numbers on the side
set notitle           " Don't display name of file and stuff in term title

set laststatus=2
set nofoldenable " disables folding
" I don't give the intro message when starting Vim |:intro|.
set shortmess=I       " Skip intro message"
set showcmd           " display info on current selected visual field
set showmatch         " Hilight the other bracket
set wildchar=<TAB>    " Use tab as the tab key!
set wildmenu          " Display a tab-completion menu for most things
set wildignore+=*.pyc,*.zip,*.gz,*.tar,*.o,*.so " Don't open these files

set fillchars=vert:\|

set tabstop=4     " Tab characters = 4 spaces when displayed
set shiftwidth=4  " Use 4 spaces for each insertion of (auto)indent
set expandtab     " <tab> -> spaces in insert mode
set smarttab      " Smart tabbing!
set shiftround    " < and > will hit indent levels instead of +-4 always

au filetype python setl expandtab shiftwidth=4 softtabstop=4

set history=100 " keep 100 lines of command line history
set nobackup    " Don't back up stuff. (makes nasty files~)

" MAPPINGS

let mapleader=" "
map <F12> :set number!<CR>
nmap <F8> :TagbarToggle<CR>
nmap fb :silent NERDTreeToggle<CR>
nmap <leader>t :%s/\s\+$//e<CR>

filetype on
filetype plugin on
filetype plugin indent on

let NERDTreeIgnore = ['\.pyc$']

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" GO SETTINGS
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

nmap <F8> :TagbarToggle<CR>
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>e <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

set runtimepath^=~/.vim/bundle/ctrlp.vim
set clipboard=unnamed


