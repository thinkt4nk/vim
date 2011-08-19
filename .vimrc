:syntax on
:set background=dark
:colorscheme wombat 
:set nowrap
:set nu
:set fuopt=maxvert,maxhorz
:set smartindent
:set cursorline
:set ts=4
:set sw=4
:set sts=4
:set lines=160
:set columns=350
:set nofoldenable
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl
" Set font according to system

set gfn=Menlo:h14
set shell=/bin/bash
set encoding=utf8
try
	lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart mappings on the command line
cno $j e ./
cno $h e ~/
cno $d e ~/Desktop/
cno $sax cd /data/web/vhosts/saxophone.org/protected
cno $vhost cd /data/web/vhosts
cno $n NERDTree


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/plugin/plugin/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocommands 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
autocmd VimEnter * ConqueTermSplit bash
autocmd	VimEnter * 10 wincmd +
autocmd VimEnter * wincmd p
