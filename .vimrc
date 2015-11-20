set nocompatible      " Use vim, no vi defaults
filetype off          " required by vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle Manage Vundle
Plugin 'gmarik/Vundle.vim'

" My Bundles
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kikijump/tslime.vim'
Plugin 'jgdavey/vim-turbux'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'heartsentwined/vim-emblem'

" Basic Setup
set number            " Show line numbers
set ruler             " Show line and column number
set encoding=utf-8    " Set default encoding to UTF-8

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

let mapleader=","
inoremap jk <esc>
nmap <silent> <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
set colorcolumn=80
highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
colorscheme molokai

set term=screen-256color

set mouse+=a
if &term =~ '^screen'
  set ttymouse=xterm2
endif

" vim-rspec mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

let g:ackprg = 'ag --nogroup --nocolor --column'

call vundle#end()
filetype plugin indent on
syntax on        " Turn on syntax highlighting allowing local overrides
filetype off
filetype on
