" source junas
source ~/.vim/junas

" install whatever bundles over the net
silent call Bundle(["The_NERD_tree", "The_NERD_Commenter", "powerline"])
silent call Bundle(["surround", "repeat", "Rainbow_Parenthesis", "matchit.zip", "eregex"])
silent call Bundle(["fugitive", "git.zip", "Gist",  "cucumber.zip", "rake"])
silent call Bundle(["haml.zip", "Better_Javascript_Indentation", "Textile_for_VIM", "vim-coffee-script", "vim-ruby"])
silent call Bundle(["vim-pasta"])

" map whatever key to leader
let mapleader = ","

" use the xoria256 color scheme (included)
colorscheme xoria256

" and anything else you want to override or set

" settings
set pastetoggle=<F2>

set shiftround smarttab
set autoindent smartindent
set showmatch

set hidden
set nowrap
set nonumber

set history=1000
set undolevels=1000
set title
set visualbell
set noerrorbells
set t_vb=

set scrolloff=3
set nojoinspaces

set nobackup
set noswapfile

set diffopt+=iwhite

set guioptions=

" strip whitespace from end of lines
"autocmd FileType javascript,ruby,eruby autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" these commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

set foldmethod=syntax
set foldnestmax=3

set fillchars=vert:\|,fold:\ ,diff:-

" open/close folds with tab
map <TAB> za

set foldtext=MyFoldText()
function! MyFoldText()
  return getline(v:foldstart)
endfunction

" disable folding
set nofoldenable 

" always show ruby comments
let ruby_no_comment_fold=1

" fold by default in ruby
autocmd FileType ruby normal zM

" toggle reference file
nnoremap <F1> :call ToggleVimReference()<CR>

let g:vim_reference_file = "~/Dropbox/reference.txt"
let g:vim_reference_width = 45

""" FocusMode from http://paulrouget.com/e/vimdarkroom/
function! ToggleFocusMode()
  if (&foldcolumn != 12)
    set laststatus=0
    set numberwidth=10
    set foldcolumn=12
    set noruler
    set cmdheight=1
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=0 ctermbg=none
    hi NonText ctermfg=0
  else
    set laststatus=2
    set numberwidth=4
    set foldcolumn=0
    set ruler
    set cmdheight=3
    execute 'colorscheme ' . g:colors_name
  endif
endfunc
nnoremap <F1> :call ToggleFocusMode()<cr>


