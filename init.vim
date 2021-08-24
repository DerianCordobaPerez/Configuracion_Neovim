" PLUGINS

call plug#begin('~/.local/share/nvim/plugged')
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
  Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
  Plug 'ervandew/supertab' " Permitir navegar entre las resultados
  Plug 'Shougo/echodoc.vim' " Muestra la firma de la funcion
  Plug 'sheerun/vim-polyglot' " Resaltado de texto
  Plug 'tpope/vim-surround' " Facilitar poner quitar cambiar comillas
  Plug 'jiangmiao/auto-pairs' " Autocompleta los signos de agrupacion
  Plug 'xuyuanp/nerdtree-git-plugin' " Muestra el estado de los archivos en github
  Plug 'haya14busa/incsearch.vim' " Busqueda incremental mejorada
  Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } " Resalta codigo css
  Plug 'othree/html5.vim', { 'for': 'html' } " Resalta codigo html5
  Plug 'pangloss/vim-javascript', { 'for': 'javascript' } " Resalta codigo javascript 
  Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
  Plug 'wokalski/autocomplete-flow' " Autocompleta codigo de javascript
  " Para los argumentos de la funcion
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'tpope/vim-eunuch' " Provee comandos de linux
  Plug 'xuyuanp/nerdtree-git-plugin' " Muestra el estado de los archivos en NerdTree
  Plug 'w0rp/ale' " Analizador estatico de codigo
  Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
  Plug 'junegunn/fzf.vim'
call plug#end()

" PERSONALIZACION

set title " Muestra el nombre del archivo en la ventana dentro de la terminal
set number relativenumber " Muesta el numero de lineas
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

let g:coc_global_extensions = ['coc-tsserver']
let g:NERDTreeChDirMode = 2 " Cambia al directorio actual al nodo padre
let g:mapleader = ' ' " Defenimos la espacio como la tecla lider

" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Instalar plugins
nnoremap <leader>pi :PlugInstall<CR>

" Abrir NerdTree
map <F2> :NERDTreeToggle<CR> 

" Cambiar entre buffers
nnoremap <leader>n :bn<CR> " Buffer siguiente
nnoremap <leader>b :bp <CR> " Buffer anterior

nnoremap <leader>s :w<CR> " Guardar el archivo
nnoremap <leader>e :e $MYVIMRC<CR> " Abrir mi archivo de configuracion
nnoremap <leader>q :q<CR> " Cerramos el archivo
nnoremap <leader>qf :q!<CR> " Cerramos el archivo de manera forzada

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

let g:SuperTabDefaultCompletionType = '<c-n>'

" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1

" Expandir snippet con Ctrl + j
let g:UltiSnipsExpandTrigger = '<c-j>'

" Ir a siguiente ubicacion con Ctrl + j
let g:UltiSnipsJumpForwardTrigger = '<c-j>'

" Ir a anterior ubicacion con Ctrl + k
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

" Maps requeridos
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

" Quitar resaltado luego de buscar
let g:incsearch#auto_nohlsearch = 1

" Neosnippet
let g:neosnippet#enable_completed_snippet = 1
let g:autocomplete_flow#insert_paren_after_function = 0

" Mostrar mejor mensajes de error
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
