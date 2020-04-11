" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

syntax enable

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set smartcase		" Do smart case matching
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

colorscheme dracula

filetype indent on      " load filetype-specific indent files
set wildmode=longest,list,full
set bg=dark
set number
set relativenumber	" show line number
set showcmd             " show command in bottom bar
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
set mouse=a		" Enable mouse usage (all modes)
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set hlsearch            " highlight matches
set termguicolors
set spelllang=en_gb spell

nnoremap <leader><space> :nohlsearch<CR>  " turn off search highlight

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Autorun commands for specific files
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
autocmd BufWritePost /home/thasharath/Applications/st-master/* !sudo make install
autocmd BufWritePost /home/thasharath/Applications/dmenu-4.9/* !sudo make install

"Copy to clipboard
map <C-c> "+y
map <C-p> "+P
"""  Plugins
call plug#begin('~/.vim/plugins')

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-commentary'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf'
Plug 'unblevable/quick-scope'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

"Hexokinas colour preview
let g:Hexokinase_highlighters = [ 'backgroundfull' ]
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" NERD tree
" autocmd vimenter * NERDTree 		"Autorun NERD tree while opening
" autocmd StdinReadPre * let s:std_in=1	"Open nerd tree on new document
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 	"Open nerd tree on new document
let NERDTreeShowHidden=1

"YouCompleteMe
let g:ycm_confirm_extra_conf = 0	"Ask for confirmation
let g:ycm_disable_for_files_larger_than_kb = 0

""Quick Scope
"highlight QuickScopePrimary guifg='#3cff07' gui=underline ctermfg=155 cterm=underline
"highlight QuickScopeSecondary guifg='#00ffb7' gui=underline ctermfg=81 cterm=underline

"Lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'dracula',
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
