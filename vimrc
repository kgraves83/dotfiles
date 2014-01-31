" Setup Vundle
" --------------------

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles.
Bundle 'gmarik/vundle'
Bundle 'chriskempson/base16-vim'
Bundle 'johnhamelink/blade.vim'
Bundle 'groenewege/vim-less'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'mattn/emmet-vim'
Bundle 'joonty/vdebug.git'

" Note: Requires Vim with ruby support.
" You must build the extension after installing/updating.
"
" cd ~/.vim/bundle/command-t/ruby/command-t
" ruby extconf.rb
" make
Bundle 'wincent/Command-T'

" Note: Requires Vim with Lua enabled.
Bundle 'Shougo/neocomplete'

filetype plugin indent on

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.


" General Settings
" --------------------

" Set tab widths.
set tabstop=4
set shiftwidth=4
set softtabstop=4

set expandtab               " Turn tabs into spaces.
set autoindent              " Auto indent tabs.
set ignorecase              " Ignore case when searching.
set smartcase               " Include case if uppercase is used in search string.
set spell spelllang=en_us   " Enable spell checking.
set list                    " Show whitespace.
set listchars=tab:⋅⋅,eol:¬  " Show tabs and end of line.
let mapleader = ","         " Set leader key.

" Theme Settings
" --------------------

set background=dark
colorscheme base16-tomorrow

set number              " Show line numbers
syntax on               " Turn on syntax highlighting
set laststatus=2        " Always show status line

" Custom status line
:set statusline=%n      " Buffer number
:set statusline+=:      " Separator
:set statusline+=%f     " Path to file
:set statusline+=%m     " Modified flag
:set statusline+=%r     " Read only flag
:set statusline+=%=     " Switch to right side
:set statusline+=%c     " Column number
:set statusline+=:      " Separator
:set statusline+=%l     " Current line number
:set statusline+=/      " Separator
:set statusline+=%L     " Total number of lines
:set statusline+=%y     " Filetype


" Command aliases
" --------------------

" Escape insert mode.
imap jj <Esc>

" Faster window switching.
nmap <leader>w <C-w>

" Diff/merge shortcuts.
nmap <leader>g1 :diffget<Space>1<CR>:diffupdate<CR>
nmap <leader>g3 :diffget<Space>3<CR>:diffupdate<CR>

" Toggle whitespace.
nmap <leader>s :set<Space>list!<Space>list?<CR>

" Vertically resize a window.
nmap <leader>w, :vertical resize -10<CR>
nmap <leader>w. :vertical resize +10<CR>

" Use j & k to move in popup menus.
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Use Shift with f & b to page up and down.
nmap <S-f> <C-f>
nmap <S-b> <C-b>


" Command-T
" --------------------

" Open in horizontal split view.
let g:CommandTAcceptSelectionSplitMap = '<C-h>'

" Show 15 results at a time.
let g:CommandTMaxHeight = 15

" Use Tab to select next item in menu.
let g:CommandTToggleFocusMap = ''
let g:CommandTSelectNextMap = ['<Tab>', '<C-n>', '<C-j>', '<Down>']


" NERDTree
" --------------------

" Toggle NERDTree with <leader>d.
nmap <leader>d :NERDTreeToggle<CR>

" Open in horizontal split view.
let g:NERDTreeMapOpenSplit = 'h'

" Open in vertical split view.
let g:NERDTreeMapOpenVSplit = 'v'


" Neocomplete
" --------------------

" Enable at startup.
let g:neocomplete#enable_at_startup = 1


" Neosnippet
" --------------------

" Use <leader>e to expand snippets.
imap <leader>e <Plug>(neosnippet_expand)
smap <leader>e <Plug>(neosnippet_expand)

" Use Tab to select next item in menu
" or jump to next spot in a snippet.
imap <expr><Tab> neosnippet#jumpable() ?
    \ "\<Plug>(neosnippet_jump)" :
    \ pumvisible() ? "\<C-n>" : "\<Tab>"

smap <expr><Tab> neosnippet#jumpable() ?
    \ "\<Plug>(neosnippet_jump)" : "\<Tab>"


" Emmet
" --------------------

" Leader key.
let g:user_emmet_leader_key = "<leader>z"


" Vdebug
" --------------------

let g:vdebug_keymap = {
    \ "run" : "<leader>vs",
    \ "run_to_cursor" : "<leader>vc",
    \ "step_over" : "<leader>vo",
    \ "step_into" : "<leader>vi",
    \ "step_out" : "<leader>vt",
    \ "close" : "<leader>vx",
    \ "set_breakpoint" : "<leader>vb",
    \ "eval_under_cursor" : "<leader>ve"
\}
nmap <leader>vr :BreakpointRemove<Space>*<CR>
