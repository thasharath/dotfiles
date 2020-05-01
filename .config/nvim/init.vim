runtime! debian.vim

if has("syntax")
  syntax on
endif

syntax enable

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

colorscheme nord

filetype indent on      " load filetype-specific indent files
set wildmode=longest,list,full
set background=dark
set number
set relativenumber	" show line number
set showcmd             " show command in bottom bar
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase 		" Do smart case matching
set incsearch		" Incremental search
set mouse=a		" Enable mouse usage (all modes)
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set hlsearch            " highlight matches
" set guicursor=
set termguicolors
" setlocal spell spelllang=en_gb

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Autorun commands for specific files
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
autocmd BufWritePost /home/thasharath/Applications/st/* !sudo make install
autocmd BufWritePost /home/thasharath/Applications/dmenu/* !sudo make install

"Key-bindings
map <C-c> "+y 		"Copy to clipboard
map <C-p> "+P 		"Paste from clipboard
map <leader><ENTER> :Goyo<CR> 			" Toggle goyo
map <leader>s :setlocal spell! spelllang=en_gb<CR> 	" enable spell checking
map <C-n> :NERDTreeToggle<CR> 			" Toggle NERDTree
nnoremap <leader><space> :nohlsearch<CR>  	" Turn off search highlight
nnoremap S :%s//gIc<Left><Left><Left><Left>	"Alias replace all to S
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit! 	" Save file as sudo on files that require root permission

"""  Plugins
call plug#begin('/home/thasharath/.config/nvim/plugins/')

Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'

call plug#end()

" NERD tree
" autocmd vimenter * NERDTree 		"Autorun NERD tree while opening
" autocmd StdinReadPre * let s:std_in=1	"Open nerd tree on new document
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 	"Open nerd tree on new document
let NERDTreeShowHidden=1

"" Lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'component_function': {
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \ },
      \ }

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

"" Indent Line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"" Goyo settings

let g:goyo_width = 75

function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nocursorline
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set cursorline
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
