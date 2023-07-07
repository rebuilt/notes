syntax on
filetype plugin indent on
set relativenumber
set clipboard+=unnamedplus
set wildmenu

" Change tabs to 2 spaces
set expandtab
set tabstop=2
retab
set shiftwidth=2
" end tab settings

"remap jj to also be escape key
imap jj <Esc>

"remap leader to space
nnoremap <SPACE> <Nop>
let mapleader=" "


" ===============================
" Plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'cohama/lexima.vim' "auto close parenthesis
Plug 'alvan/vim-closetag', {'for': ['html','erb']} "closes html brackets
Plug 'danilo-augusto/vim-afterglow'  "load the afterglow theme
Plug 'tpope/vim-surround'  "ysat: you surround all text
Plug 'tpope/vim-repeat'    "plugin commands are repeatable
Plug 'tpope/vim-commentary'  "easy commenting
Plug 'tpope/vim-rails'  "easy commenting
Plug 'tpope/vim-fugitive'  "easy commenting
Plug 'tpope/vim-vinegar'  " file browser
Plug 'kien/ctrlp.vim'  "fuzzy finding search file
Plug 'vim-ruby/vim-ruby'  " ruby support including gf : goto file
Plug 'ervandew/ag'  " searching within documents for keywords
Plug 'w0rp/ale' " syntax checking/ linter support<Paste>
" Plug 'ap/vim-css-color', {'for': ['css', 'scss']} "colors hex values in their corresponding color
Plug 'norcalli/nvim-colorizer.lua' "colorizer
Plug 'pangloss/vim-javascript', {'for': 'javascript'}    " JavaScript support
Plug 'leafgarland/typescript-vim', {'for': 'typescript'} " TypeScript syntax
Plug 'mattn/emmet-vim', {'for': [ 'html', 'erb']} " provides html snippets
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" ===============================
" Colorizer setup
set termguicolors
" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
lua require'colorizer'.setup()

colorscheme afterglow

" ===============================
" ALE configuration
let g:ale_sign_column_always = 1
let g:ale_fixers = {
      \ '*':          ['remove_trailing_lines', 'trim_whitespace'],
      \ 'erb':        ['erblint'],
      \ 'ruby':       ['rubocop'],
      \ 'html':       ['prettier'],
      \ 'css':        ['prettier'],
      \ 'sass':       ['prettier'],
      \ 'scss':       ['prettier'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \ 'markdown':   ['prettier'],
      \ 'rust':       ['rustfmt']}
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_echo_msg_format = '%linter% says %s'
let g:ale_completion_autoimport = 1
let g:ale_echo_msg_format = '%linter% says %s'
" set omnifunc=ale#completion#OmniFunc
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
call deoplete#custom#source('ale', 'dup', v:true)
" call deoplete#custom#source('ale', 'rank', 999)

"Airline configuration
let g:airline#extensions#ale#enabled = 1

" ===============================
" Deoplete config
let g:deoplete#enable_at_startup = 1

" ===============================
" Closetage config
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.html.erb'
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" ===============================
" Fuction key shortcuts
map <F7> :set relativenumber!<CR>:set number<CR>
map <F8> :Ag
map <Leader-F8> :copen<CR>
map <Leader><Right> :cnext<CR>
map <Leader><Left> :cprev<CR>

" ===============================
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
