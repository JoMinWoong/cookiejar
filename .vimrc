set number
set fileencodings=iso-2022-jp,euc-jp,shift-jis,cp932,utf8,default,latin1
set nocompatible              " be iMproved, required
filetype off                  " required
set nofoldenable


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
" scripts not on GitHub
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Bundle 'file:///home/gmarik/path/to/plugin'
" ...

"byJo
Bundle 'nerdtree'
Bundle 'taglist.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'

set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

set t_Co=256
syntax on
set background=dark
"<<<< FIXME : cannot find color scheme solarized
"colorscheme distinguished

"<<<< FIXME : python is neccessary
"need to set python
Bundle 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

"Bundle 'marijnh/tern_for_vim'






filetype plugin indent on     " required
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.


"byJo
" Simple vim setup with some essential plugins
" "
" "   pathogen - https://github.com/tpope/vim-pathogen
" "   taglist.vim - http://www.vim.org/scripts/script.php?script_id=273
" "   NERD Tree - http://www.vim.org/scripts/script.php?script_id=1658
" "   fugitive.vim -- http://www.vim.org/scripts/script.php?script_id=2975
" "
" "   INSTALL INSTRUCTIONS:
" "     mkdir -p ~/.vim/autoload ~/.vim/bundle
" "     cd ~/.vim/bundle
" "     git clone https://github.com/tpope/vim-pathogen.git
" "     git clone https://github.com/scrooloose/nerdtree.git
" "     git clone https://github.com/tpope/vim-fugitive.git
" "     git clone https://github.com/vim-scripts/taglist.vim.git
" "     cd ~/.vim/autoload ; ln -s
" ../bundle/vim-pathogen/autoload/pathogen.vim
"  
"  if filereadable(expand("$HOME/.vim/autoload/pathogen.vim"))
"    silent! call pathogen#infect()
"    endif
"     
"     syntax on
"     filetype plugin indent on
"      
"      set timeoutlen=450  " Time to wait after ESC (default causes an
"      annoying delay)
"      set ts=2
"      set sw=2
"      set expandtab
"       
"       " Don't use Ex mode, use Q for formatting
"       map Q gq
"       let maplocalleader = "," 
"        
"        """"" Settings for NERDTree
let NERDTreeIgnore=['\~$', '^\.git', '\.swp$', '\.DS_Store$']
let NERDTreeShowHidden=1
nmap <LocalLeader>nn :NERDTreeToggle<cr>
 
" ---------------------------------------------------------------------------
"  """"" Settings for taglist.vim
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
nmap <LocalLeader>tt :Tlist<cr>
