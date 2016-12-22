set nocompatible              " be iMproved, required
call pathogen#infect()
call pathogen#helptags()

filetype off                  " required
autocmd BufEnter * silent! lcd %:p:h

syntax on
set background=dark
colorscheme solarized

" http://stackoverflow.com/questions/24812865/vim-a-shortcut-for-site-wide-search
command -nargs=+ Se execute 'vimgrep /' . [<f-args>][0] . '/ **/*.' . [<f-args>][1] | :copen

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


""" GENERAL
filetype plugin indent on    " required
if has("gui_running")
  set bs=2
  set ruler
  set guifont=Source\ Code\ Pro:h12
  set shell=/bin/bash
endif

set laststatus=2
set statusline+=%F " display full file path on Ctrl-g
set cursorline " hightlight col and line
set hidden "in order to switch between buffers with unsaved change
let mapleader= ","


set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set noimdisable
set iminsert=0
set imsearch=0
set noswapfile
set mouse=a
set nu


function! AirlineInit()
  let g:airline_section_y = airline#section#create_right(['ffenc', '%{strftime("%H:%M")}'])
  let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
endfunction
autocmd VimEnter * call AirlineInit()


map <silent><F8> :NERDTreeToggle<CR>
map <tab> :tabn<CR>
let g:user_zen_settings = {
      \  'indentation' : '  '
      \}
let g:indent_guides_guide_size = 1



""" CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_regexp = 1
noremap <C-P> <Esc>:CtrlP ~/Developer/iflix<CR>


" original repos on github
map <c-t> :FufCoverageFile!<CR>
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|vendor)'
let g:fuf_enumeratingLimit = 50
let g:fuf_coveragefile_prompt = '=>'


function MakeDvorak()
  " these remap the hjkl arrow keys. Home row cursor movement is
  " too good to part with.
"
  noremap d h
  noremap h gj
  noremap t gk
  noremap n l
"
  " Now we replace functionality lost in the previous remapping.
  " h has already been replaced by d. That means we need new homes
  " for d, t, and n. j, k, and l are now redundant and open for
  " use as new mappings. So, I replace l with n.  This means you
  " just have to learn to press l after a search. This is
  " convenient because the / that starts the search and the l that
  " continues it are right next to each other on the dvorak
  " keyboard.
"
  noremap l n

  " the 'd'elete and un't'il keys were a little harder.  I was
  " already used to using the middle finger of my left hand to
  " delete things, so I made that character, 'e', the new delete
  " character. This came at the cost of not being able to go to
  " the 'e'nd of words, but going to the 'E'nd of Words turns out
  " to be enough for me:

  noremap e d
""
  " alternately, if you're willing to learn a new delete key, you
  " can just replace d with j or k. I didn't want to relearn the
  " muscle memory, and it's nice to have delete on home row
  " because it's so frequently used.

  " So, we have t left and j and k open to replace it with.  it
  " turns out you don't need to do it. For me, 't' is pretty much
  " only needed in operator-pending mode. So I unmap it in that
  " mode, meaning that t has different meaning depending on
  " context. For me, it always does the right thing.

  if version > 500
    ounmap t
  endif
"""
endfunction

if $KEYBOARD_LAYOUT == "dvorak"
  call MakeDvorak()
endif
"call MakeDvorak()

