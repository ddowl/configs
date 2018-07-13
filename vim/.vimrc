execute pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#helptags()
" Helptags
set encoding=utf-8
set nocompatible
set noswapfile
set incsearch
set ignorecase
set smartcase
set noeb vb t_vb=
set clipboard=unnamedplus
set tabstop=2
set shiftwidth=2
set expandtab
" set softtabstop=4
set backspace=indent,eol,start
set timeoutlen=1000 ttimeoutlen=10
set autoread
filetype plugin on
filetype indent on

" set leader to comma
let mapleader = ","

" automatically use system clipboard
set clipboard=unnamedplus

" spell check
set spelllang=en
set spellfile=~/.vim/spell/en.utf-8.add
imap <Leader>w <C-o>:setlocal spell! spelllang=en<CR>
nmap <Leader>w :setlocal spell! spelllang=en<CR>

au BufNewFile,BufRead *.json.jbuilder set ft=ruby
au BufNewFile,BufRead *.jbuilder set ft=ruby

" better tab movement
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Show whitespace
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/


" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=1
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

runtime macros/matchit.vim

" enable fzf
set rtp+=~/.fzf

set autoindent
set smartindent

set nu

set pastetoggle=<C-P>

"nnoremap <silent> <CR> nohlsearch<CR>
"remap increment number for screen/tmux friendlyness
nnoremap <C-z> <C-a>

"shortcut for stripping whitespace from files
nnoremap <C-w>w :%s/\s\+$//e<CR>

noremap <silent> <C-S>  :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>
imap jj <Esc>
nnoremap gj <C-w>j
nnoremap gk <C-w>k
nnoremap gh <C-w>h
nnoremap gl <C-w>l

map <C-n> :NERDTreeToggle<CR>

if &diff
    highlight! link DiffText MatchParen
endif

set exrc " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files
if has("mouse")
  set mouse=a
endif

syntax enable
set background=dark
let g:gruvbox_italic=1
" set termguicolors
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme gruvbox

nnoremap <F2> :set nonumber!<CR>
nnoremap <F3> :set hls!<CR>

set wildchar=<Tab> wildmenu wildmode=full
set wildignore+=node_modules
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>
map <Leader>f :b<Return>
map <Leader><Leader> :bprev<Return>


" fugitive.vim shortcuts
nnoremap g* :Ggrep <cword><cr><cr>:copen<cr>
nnoremap ggr :Ggrep<space>

" MRU.vim shortcuts
nnoremap <Leader>m :MRU<cr>

" Other shortcuts
nnoremap td :tabe %<cr>

nnoremap <Leader>r :exe "!clear && script/zeus test " . expand("%p") .  ":" . line(".") . " -fd"<cr>

" shell shortcuts

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>



"" Show the buffer number in the status line.
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

" " airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

let MRU_EXCLUDE_FILES = '^git-.*)'

" Highlighting whitespaces at end of line (without cursor)
highlight WhitespaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\s\+\%#\@!$/

" rails-specific mappings
map <Leader>c   :e app/controllers/
map <Leader>l   :e lib/
map <Leader>m   :e app/models/
map <Leader>mv  :e app/views/manage/
map <Leader>mc  :e app/controllers/manage/
map <Leader>v   :e app/views/
map <Leader>tc  :tabe app/controllers/
map <Leader>tl  :tabe lib/
map <Leader>tm  :tabe app/models/
map <Leader>tmv :tabe app/views/manage/
map <Leader>tmc :tabe app/controllers/manage/
map <Leader>tv  :tabe app/views/


" SYNTASTIC
"let g:syntastic_debug=1

set statusline+=%#warningmsg#
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = '--rulesdir ~/co/manage/js_infra/eslint_rules/'
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩 '

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
