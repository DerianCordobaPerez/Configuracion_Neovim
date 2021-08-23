" PERSONALIZACION

set title " Muestra el nombre del archivo en la ventana dentro de la terminal
set number " Muesta el numero de lineas
set mouse=a " Permite la integracion del mouse

set nowrap " No dividir la linea si resulta larga
set cursorline " Resalta la linea actual
set hidden " Permitir cambios de buffer sin tener que guardarlos
" set colorcolumn=120 " Muestra la columna limite

set ignorecase " Ignorar mayusculas para realizar una busqueda
set smartcase " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set spelllang=en,es " Corregir palabras usando diccionario ingles espanol

set termguicolors " Activa true colors en la terminal
set background=dark " Color del tema
colorscheme default " Nombre del tema

" Identacion para 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab " Insertar espacios para la tabulacion
set autoindent " Identa la nueva linea
filetype plugin indent on " Permite la auto identacion
syntax on " Resaltado de sintaxis

set nocompatible " Deshabilita la compatibilidad con vi viejo
set showmatch " Muestra las coincidencias
set cursorline " Resalta la linea actual del cursor

set ttyfast " Acelera el desplazamiento
set clipboard=unnamedplus " Usar el portapapeles del sistema

" COMANDOS

let g:mapleader = ' ' " Defenimos la espacio como la tecla lider

nnoremap <leader>s :w<CR> " Guardar el archivo
nnoremap <leader>e :e $MYVIMRC<CR> " Abrir mi archivo de configuracion
nnoremap <leader>q :q<CR> " Cerramos el archivo

" Usar <leader> + c para copiar
vnoremap <leader>c " + c
nnoremap <leader>c " + c

" Usar <leader> + v para pegar

nnoremap <leader>v " + v
vnoremap <leader>v " + v
nnoremap <leader>V " + V
vnoremap <leader>V " + V

" PLUGINS

call plug#begin('~/.local/share/nvim/plugged')
  " Seccion de plugins
  Plug 'dracula/vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.vim', {'branch': 'release'}
call plug#end()
