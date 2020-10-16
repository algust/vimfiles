set nocompatible              "We want the latest Vim settings/options.

so ~/.vim/plugins.vim

syntax enable
set backspace=indent,eol,start  			"Make backspace behave like every other editor.
let mapleader = ','					"The defalult leader is \, but a comma is better.
set nonumber						"Lets's activate line number
set linespace=15					"Gvim-specific line-height.


"-------------Visuals-------------"
colorscheme atom-dark							"En Windows colocar en C:\Program Files....
"colorscheme gruvbox
set t_CO=256								"Use 256 colors. This is useful for Terminal Vim.
set renderoptions=type:directx						"Just for windows
set encoding=utf-8
set guifont=JetBrains\ Mono:h12						"Esta es la configuración para Windows 

set guioptions-=e							"We don´t want Gui tabs.

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions -=m							"Removes the menubar in Gvim
set guioptions -=T							"Removes the toolbar in Gvim	

"We'll fake a custom left padding for each window.
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg

"Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg

"
set expandtab
set softtabstop=3


"--------------Tasks----------------"
set clipboard^=unnamed,unnamedplus					"Permite copiar y pegar

"--------------Plugins----------------"
"/
"/CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
"-------------Search-------------"
set hlsearch
set incsearch
"------------Vinegar-------------"
let NERDTreeHijackNetrw = 0



"-------------Split management-------------"
"set splibelow
"set splitright

nmap <C-J> <C-W><C-J> 
nmap <C-K> <C-W><C-K> 
nmap <C-H> <C-W><C-H> 
nmap <C-L> <C-W><C-L> 

"-------------Mappings-------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add a simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easy to toggle.
nmap <a-1> :NERDTreeToggle<cr>

nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>
 
"-------------Auto-Commands-------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost _vimrc source %
augroup END
	
