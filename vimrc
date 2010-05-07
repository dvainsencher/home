set runtimepath+=/usr/share/vim-scripts 

set tabstop=4 shiftwidth=4 expandtab smarttab softtabstop=4 autoindent omnifunc=pythoncomplete#Complete 

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class 

syntax match Special "\t"
"highlight Special ctermfg=DarkBlue ctermbg=White 
inoremap # X#


" highlighting de arquivos pt e cpt
au BufNewFile,BufRead *.pt                          setf html
au BufNewFile,BufRead *.cpt                         setf html

" busca incremental
set incsearch

"Indica caractere de abertura/fechamento do bloco 
set showmatch


set statusline=%F%m%r%h%w\ [FORMATO=%{&ff}]\ [TIPO=%Y]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}\ [ASCII=\%03.3b]\ [linha=%04l,%04v][%p%%]\ [LINHAS=%L]
"hi StatusLine   ctermbg=darkgray ctermfg=darkgreen "configura a cor da barra de status
"hi StatusLineNC ctermbg=darkblue ctermfg=darkgreen "configura a cor da barra de status da janela não atual (Not Curent)
set laststatus=2 " Sempre exibe a barra de status

" Settings from deo's vimrc - http://dtremea.googlepages.com/vimrc
set wildmode=list:full wildmode=longest,list pastetoggle=<c-u>

filetype plugin on

" abre automaticamente a lista de tags
"let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1

set background=dark
colorscheme evening2
