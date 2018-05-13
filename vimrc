execute pathogen#infect()
filetype plugin indent on
filetype plugin on

syntax enable 		  " enable syntax processing
set tabstop=2 	  	" number of visual spaces per TAB
set softtabstop=2  	" number of spaces in TAB when editing
set shiftwidth=2
set expandtab			  " tabs are spaces
set number          " show line numbers
set showcmd         " show command in bottom bar
" set cursorline      " underline current line
filetype indent on  " load file-type specific indent files
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to (e.g. not during macros)
"set showmatch       " highlight matching ( [ { } ] )

""""""""""""""""""""
" FOLDING
""""""""""""""""""""
set foldenable          " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10    " 10 nested folds max
set foldmethod=indent " fold based on indent level

""""""""""""""""""""
" BINDINGS
""""""""""""""""""""
let mapleader = ','

" reset beginning and end of line
nnoremap B 0
" nnoremap E $
" nnoremap ^ <nop>
" nnoremap $ <nop>

" jk is escape
" inoremap jk <esc>

" toggle gundo (gundo.vim--shows graphical undo tree)
" nnoremap <leader>u :GundoToggle<CR>

" open ag.vim
" nnoremap <leader>a :Ag

" CtrlP settings (fuzzy search)
" let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"""""""""""""""""""""
" SEARCH
"""""""""""""""""""""
set incsearch       " search as characters are enetered
set hlsearch        " highlight matches

" `, + <space>` to turn off highlighting 
nnoremap <leader><space> :nohlsearch<CR> " 

"""""""""""""""""""""
" Backups 
"""""""""""""""""""""
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"""""""""""""""""""""
" Autocommands 
"""""""""""""""""""""
" :au FocusLost * :wa
set updatetime=200
au CursorHold * silent! update

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" if executable('ag')
  " Use Ag over Grep
 "  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag --literal --files-with-matches --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0
" 
"   if !exists(":Ag")
"     command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
"     nnoremap \ :Ag<SPACE>
"   endif
" endif

"""""""""""""""""""""
" References
"""""""""""""""""""""
" https://dougblack.io/words/a-good-vimrc.html
