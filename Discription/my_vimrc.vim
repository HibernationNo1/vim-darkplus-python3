" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

"-----------------------------------vim �⺻ ���� 
" syntax on  " ���� ���� (colorscheme�� ���� �ٽ� ���ǵ�)
filetype on
set encoding=utf-8  " �ѱ� ���� ����
set autowrite " �ٸ� ���Ϸ� �Ѿ �� �ڵ� ����
set autoindent " �ڵ����� �鿩���� ����
set shiftwidth=4 " �鿩���� �ʺ� ���� 
set smartindent
set nu " show line number
set incsearch " �˻��� �Էµ� ���ڱ��� ���������� �˻��Ѵ�
set mouse=a " ���콺�� Ŭ���ϴ� ������ Ŀ�� �ű�
set guifont=consolas:h11 " �۲� ����
"-----------------------------------vim �⺻ ���� ��

"----------------------------------- plugin �⺻ ����

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"----------- plugin for vim

Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'
" Vim ���¹� �������ִ� �÷�����
	
Plugin 'airblade/vim-gitgutter'     
" Git���� ����� �κ� ǥ�����ִ� �÷�����

Plugin 'vim-syntastic/syntastic'    
" ���� üũ���ִ� �÷�����

Plugin 'ctrlpvim/ctrlp.vim'         
" ���� ã�� �÷�����

Plugin 'tomasiser/vim-code-dark'
" colorscheme Plugin (code-dark)


"----------- Plugin for python
Plugin 'vim-python/python-syntax'
" pyhon syntax �����ϴ� Plugin

Plugin 'HibernationNo1/vim-darkplus-python3'

Plugin 'hynek/vim-python-pep8-indent'   
" python �ڵ� �鿩���� Plugin

Plugin 'nvie/vim-flake8'                
" python ���� �˻� plugin
" let g:syntastic_python_checkers=['flake8']        " �� ����� ������ �ּ� �����ʿ�    
" let g:syntastic_python_flake8_args='--ignore='    " �����ϰ��� �ϴ� errorcode


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"-----------------------------------plugin ���� ��

"-----------plugin option
colorscheme dark_plus_python		" colorscheme ����
filetype plugin indent on     	" python �ڵ� �鿩���� on

let g:airline_powerline_fonts = 1 
let g:airline_theme = 'codedark' " airline theme

let g:python_highlight_class_vars = 1
let g:python_highlight_builtins = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_string_format = 1


