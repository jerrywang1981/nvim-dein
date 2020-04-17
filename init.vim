if &compatible
  set nocompatible
endif

let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
endif
source ~/.config/nvim/_machine_specific.vim


" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:deintoml = '~/.config/nvim/config/dein.toml'
let s:lazytoml = '~/.config/nvim/config/lazy.toml'

let mapleader=','
noremap \ ,
let maplocalleader=','
let g:dein#auto_recache = 1
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml(s:deintoml, {'lazy': 0})
  call dein#load_toml(s:lazytoml, {'lazy': 1})

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  else
    call dein#add('cpiger/NeoDebug')
  endif
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('tomtom/tlib_vim')
  call dein#add('tpope/vim-dispatch')
  call dein#add('kshenoy/vim-signature')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('tpope/vim-repeat')
  call dein#add('mbbill/undotree')
  call dein#add('ConradIrwin/vim-bracketed-paste')

  call dein#add('wellle/targets.vim')
  call dein#add('skywind3000/vim-preview')

  call dein#add('skywind3000/asynctasks.vim')
  call dein#add('skywind3000/asyncrun.vim')

  " call dein#add('sainnhe/gruvbox-material')
  call dein#add('morhetz/gruvbox')
  call dein#add('dracula/vim', {'name': 'dracula', 'normalized_name': 'dracula'})

  call dein#add('itchyny/lightline.vim')
  call dein#add('mengelbrecht/lightline-bufferline')

  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')

  " call dein#add('Konfekt/FastFold')
  call dein#add('wincent/terminus')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('haya14busa/incsearch-fuzzy.vim')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('edkolev/tmuxline.vim')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('radenling/vim-dispatch-neovim')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
set path+=**
set updatetime=5000
" set directory=~/tmp,/tmp
set foldmethod=indent
set foldlevel=99
set noswapfile
set autoindent
set encoding=utf-8
set clipboard+=unnamedplus  " use the clipboards of vim and win
set go+=a               " Visual selection automatically copied to the clipboard
set number
set relativenumber
set showtabline=2
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b
set nowrap
set fileformat=unix
set cindent
set colorcolumn=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set showmatch
set scrolloff=5
set laststatus=2
set fenc=utf-8
set backspace=2
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase
set incsearch
set hlsearch
set expandtab
set whichwrap+=<,>,h,l
set autoread
set cursorline
set cursorcolumn
set history=200
set fixendofline
set diffopt+=vertical
set termguicolors
set visualbell

silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif


if !has('gui_running')
  set t_Co=256
endif


set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*,*/node_modules/*
" python-mode
" let g:pymode_python = 'python3'

" autocmd FileType python set ts=4 | set shiftwidth=4 | set softtabstop=4


"--------------------mapping-------
source ~/.config/nvim/config/mapping.vim

source ~/.config/nvim/config/lightline.vim



" autocmd FileType json syntax match Comment +\/\/.\+$+
"

" vim-fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif



source ~/.config/nvim/config/coc.vim


"----------------- vim-workspace----------------
" let g:workspace_autosave = 0
" let g:workspace_persist_undo_history = 0
" let g:workspace_autosave_untrailspaces = 0
" let g:workspace_session_directory = $HOME . '/.vim/sessions/'



"----------------- yankhighlight----------------
" let g:highlightedyank_highlight_duration = 500


if has('nvim')
endif

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='soft'
set background=dark
" colorscheme dracula
colorscheme gruvbox

let $NVIM_COC_LOG_LEVEL = 'debug'
" let g:coc_node_args = ['--nolazy', '--inspect-brk=6046']
"

" fastfold

" nmap zuz <Plug>(FastFoldUpdate)
" let g:fastfold_savehook = 1
" let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
" let g:fastfold_fold_movement_commands = [']z', '[z', 'ze', 'zu']
" let g:markdown_folding = 1
" let g:tex_fold_enabled = 1
" let g:vimsyn_folding = 'af'
" let g:xml_syntax_folding = 1
" let g:javaScript_fold = 1
" let g:sh_fold_enabled= 7
" let g:ruby_fold = 1
" let g:perl_fold = 1
" let g:perl_fold_blocks = 1
" let g:r_syntax_folding = 1
" let g:rust_fold = 1
" let g:php_folding = 1



" -------lightline-----------
source ~/.config/nvim/config/abbr.vim




" Async run
let g:asyncrun_open = 6
let g:asyncrun_bell = 1
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']


nmap s         <Plug>(easymotion-s2)
xmap s         <Plug>(easymotion-s2)
omap z         <Plug>(easymotion-s2)
nmap <leader><leader>s <Plug>(easymotion-sn)
xmap <leader><leader>s <Plug>(easymotion-sn)
omap <leader><leader>z <Plug>(easymotion-sn)

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Open the _machine_specific.vim file if it has just been created
if has_machine_specific_file == 0
	exec "e ~/.config/nvim/_machine_specific.vim"
endif
