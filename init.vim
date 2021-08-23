" PLUGINS

call plug#begin('~/.local/share/nvim/plugged')
  " Seccion de plugins
  Plug 'dracula/vim' " Tema para neovim
  Plug 'ryanoasis/vim-devicons' " Devicon soportado por nerdtree
  Plug 'SirVer/ultisnips' " Motor de snippets
  Plug 'honza/vim-snippets' " Coleccion de snippets
  Plug 'scrooloose/nerdtree' " Explorador de archivos
  Plug 'preservim/nerdcommenter' " Comentar facil
  Plug 'mhinz/vim-startify' " Pagina de inicio con muchas personalizaciones
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Motor rapido de comentado de codigo
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'  " Temas para airline
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
  Plug 'ervandew/supertab' " Permitir navegar entre las resultados
  Plug 'Shougo/echodoc.vim' " Muestra la firma de la funcion
  Plug 'sheerun/vim-polyglot' " Resaltado de texto
  Plug 'tpope/vim-surround' " Facilitar poner quitar cambiar comillas
  Plug 'jiangmiao/auto-pairs' " Autocompleta los signos de agrupacion
call plug#end()

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

set background=dark " Color del tema
colorscheme dracula " Nombre del tema

" Esquema de colores
if (has("termguicolors"))
  set termguicolors " Activa true colors en la terminal
endif

" Abre paneles divididos arriba
set splitright
set splitbelow


" Identacion para 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab " Insertar espacios para la tabulacion
set autoindent " Identa la nueva linea

filetype plugin indent on " Permite la auto identacion
syntax enable " Resaltado de sintaxis

set nocompatible " Deshabilita la compatibilidad con vi viejo
set showmatch " Muestra las coincidencias
set cursorline " Resalta la linea actual del cursor

set ttyfast " Acelera el desplazamiento
set clipboard=unnamedplus " Usar el portapapeles del sistema

" COMANDOS

let g:NERDTreeChDirMode = 2 " Cambia al directorio actual al nodo padre
let g:mapleader = ' ' " Defenimos la espacio como la tecla lider

" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

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

let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

" Activar deoplete al iniciar Neovim
let g:deoplete#enable_at_startup = 1

" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END

" Invertir direccion de navegacion (de arriba a abajo)
let g:SuperTabDefaultCompletionType = '<c-n>'

" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1

" Expandir snippet con Ctrl + j
let g:UltiSnipsExpandTrigger = '<c-j>'

" Ir a siguiente ubicacion con Ctrl + j
let g:UltiSnipsJumpForwardTrigger = '<c-j>'

" Ir a anterior ubicacion con Ctrl + k
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
