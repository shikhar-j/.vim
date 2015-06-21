source ~/.vim/.plugins.vimrc
source ~/.vim/.functions.vimrc

syntax on
set tabstop=2
set shiftwidth=2
set shiftround

set cursorline
set number

set smartcase
set backspace=indent,eol,start
set autoindent
set copyindent

set showmatch "show matching bracket
set ignorecase "ignore case when searching
set smartcase "smart casing when searching
set hlsearch "highlight search
set incsearch "search as I type

set expandtab "insert spaces in place of tabs
set smarttab "autoindent

set history=1000
set undolevels=1000
set title

set splitright
set hidden

set foldmethod=syntax "code folding

filetype plugin indent on
colorscheme railscasts

set pastetoggle=<F2>

"status line
set laststatus=2
set statusline=%#error# "change colour to error from current color scheme
set statusline=%t\  "filename tail
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=\ %{&ff}] "file format
set statusline+=%#todo# "change color to todo color from current color scheme
set statusline+=%m "modified flag
set statusline+=%#error# "change colour to error from current color scheme
set statusline+=%r "read only flag
set statusline+=%* "change color back to default
set statusline+=%= "right align
set statusline+=\ %y "filetype
set statusline+=\ %c "cursor column
set statusline+=\ %l/%L "cursor line / total line
set statusline+=\ %P "percentage through file

" ruby path when using rvm
let g:ruby_path = system('rvm current')

" ctrlp settings
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

"custom filetypes
au BufNewFile,BufRead *.ejs set filetype=html

" airline
let g:airline#extensions#tabline#enabled = 1

"custom maps
noremap j gj
noremap k gk
noremap <space> viw

vnoremap <space> iw

inoremap <c-j> <esc>gj
inoremap <c-j> <esc>gk
inoremap <c-h> <esc>h
inoremap <c-l> <esc>l
inoremap <c-x> <esc>xi
inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>ui
inoremap <c-r> <esc>ri

"buffer maps
noremap bn :bnext<CR>
noremap bp :bprev<CR>

"update source file
command! UpdateSource :source ~/.vimrc

" open all folds when file is opened
autocmd BufWinEnter * silent! :%foldopen!
autocmd BufNewFile * :write
