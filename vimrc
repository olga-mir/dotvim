call pathogen#infect()
call pathogen#helptags()

syntax on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set scrolloff=10
set relativenumber
set number
set foldcolumn=6
set foldlevel=20
set foldmethod=syntax

" this is needed to preserve color scheme inside tmux
" and prevent font from getting bold.
" https://github.com/tmux/tmux/issues/699
set background=dark
set t_Co=256

" --- Search ---
" smart case = case sensitive if search term contains capital letters
set smartcase
set ignorecase
set incsearch
set imsearch=0
set nohlsearch

" Should prevent copying line numbers when copying text from vim
" However it brakes copying completely
" set mouse=a

function! AirlineInit()
  let g:airline_section_y = airline#section#create_right(['ffenc', '%{strftime("%H:%M")}'])
  let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
endfunction
autocmd VimEnter * call AirlineInit()
let g:airline_theme='cool'

let g:go_version_warning = 0

" Keep text selected after indentation.
vnoremap < <gv
vnoremap > >gv

" Better navigation for beginning and end of line
" Note that these replace the jump to top (H) and bottom (L) visible lines
" (https://twitter.com/_supermarin/status/687016530769383425)
nnoremap H ^
nnoremap L $

" Type-based indentation
" See http://stackoverflow.com/questions/8536711/how-to-autoindent-ruby-source-code-in-vim
set smartindent
set autoindent

"""""
""""" Plugins config

"" CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_regexp = 1
let g:ctrlp_show_hidden = 1


"" tmux
" git@github.com:christoomey/vim-tmux-navigator.git
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
