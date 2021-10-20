scriptencoding utf-8
" ######################################################################################################################
" ### Original Author : Martin Toma <martin.toma.svk@gmail.com>
" ### Kudos to him
" ######################################################################################################################

" ======================================================================================================================
" 1.0 Plugin manager (Plug) settings
" ======================================================================================================================
"{{{

" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
" set t_Co=256
" let base16colorspace=256

call plug#begin('~/.config/nvim/plugged')

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.1 Plugin list
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" ---------------------------------------------------------------------------------------------------------------------
" Language agnostic plugins
" ---------------------------------------------------------------------------------------------------------------------

" Commenting support (gc)
Plug 'tpope/vim-commentary'

" ---------------------------------------------------------------------------------------------------------------------
" Ruby/Rails
" ---------------------------------------------------------------------------------------------------------------------

" Ruby syntax (plays nicely with tpope/rbenv-ctags)
Plug 'vim-ruby/vim-ruby'
" Slim syntax
Plug 'slim-template/vim-slim'
" Haml syntax
Plug 'tpope/vim-haml'
" Rails support (:A, :R, :Rmigration, :Rextract)
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }
" Bundler support (play nicely with tpope/gem-ctags)
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }
" String interpolation helper
Plug 'p0deje/vim-ruby-interpolation', { 'for': ['ruby'] }

" ---------------------------------------------------------------------------------------------------------------------
" HTML/CSS
" ---------------------------------------------------------------------------------------------------------------------

" HTML5 syntax
Plug 'othree/html5.vim'
" SCSS syntax
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
" CSS color highlighter
Plug 'gorodinskiy/vim-coloresque', { 'for': ['css', 'sass', 'scss', 'less'] }

" ---------------------------------------------------------------------------------------------------------------------
" Java
" ---------------------------------------------------------------------------------------------------------------------

Plug 'vim-scripts/javacomplete', { 'for': ['java'] }
Plug 'vim-scripts/JavaImp.vim--Lee', { 'for': ['java'] }
Plug 'jaxbot/vim-java-get-set', { 'for': ['java'] }

" ---------------------------------------------------------------------------------------------------------------------
" Other languages
" ---------------------------------------------------------------------------------------------------------------------

" Elixir syntax
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir'] }
" Python syntax
Plug 'mitsuhiko/vim-python-combined', { 'for': ['python'] }
" Elm
Plug 'lambdatoast/elm.vim', { 'for': ['elm'] }
" Markdown syntax and helpers
Plug 'plasticboy/vim-markdown'
" Dockerfile
Plug 'honza/dockerfile.vim'
" JSON syntax
Plug 'sheerun/vim-json'
" Treat build.gradle files as groovy files
Plug 'tfnico/vim-gradle'
" Kotlin
Plug 'udalov/kotlin-vim'
" Go
Plug 'fatih/vim-go', { 'for': ['go'] }

" ---------------------------------------------------------------------------------------------------------------------
" File finder/jumper
" ---------------------------------------------------------------------------------------------------------------------

" You need to install fzf binary in $PATH
Plug 'junegunn/fzf'
inoremap <leader>o <esc>:FZF<cr>
nnoremap <leader>o <esc>:FZF<cr>

inoremap `o <esc>:FZF<cr>
nnoremap `o <esc>:FZF<cr>

Plug 'junegunn/fzf.vim'

" ---------------------------------------------------------------------------------------------------------------------
" Interface improving
" ---------------------------------------------------------------------------------------------------------------------

" Nerdtree file browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
" Plugin for nerdtree to execute external commands
Plug 'vim-scripts/nerdtree-execute', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }
" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
" Displays thin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'
" Replaces lambdas/inline functions with a lambda character
Plug 'calebsmith/vim-lambdify'

" ---------------------------------------------------------------------------------------------------------------------
" External tools integration plugins
" ---------------------------------------------------------------------------------------------------------------------

" Fugitive
Plug 'tpope/vim-fugitive', { 'tag': 'v3.2' }
Plug 'tpope/vim-rhubarb' " better github support
Plug 'tommcdo/vim-fubitive' " bitbucket support
Plug 'shumphrey/fugitive-gitlab.vim' " gitlab support
let g:fugitive_gitlab_domains = ['https://gitlab.eu-west-1.mgmt.onfido.xyz/']

" Git log viewer
Plug 'rbong/vim-flog'

" Git changes showed on line numbers
Plug 'airblade/vim-gitgutter'

" Support gist interaction
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" Neovim terminal improving
Plug 'kassio/neoterm', { 'on': 'T' }

" Run in another terminal 'window' with Control+C Control+C
" Then default :,1 to select the pane one of current window
Plug 'jpalardy/vim-slime'

" ---------------------------------------------------------------------------------------------------------------------
" Text insertion/manipulation
" ---------------------------------------------------------------------------------------------------------------------

" Surround (cs"')
Plug 'tpope/vim-surround'
" Easy alignment
Plug 'godlygeek/tabular', { 'on':  'Tabularize' }

" ---------------------------------------------------------------------------------------------------------------------
" Colorschemes
" ---------------------------------------------------------------------------------------------------------------------

" Base 16 colorscheme
Plug 'chriskempson/base16-vim'

" Others
Plug 'guns/jellyx.vim'
Plug 'vim-scripts/xoria256.vim'
Plug 'vim-scripts/Xoria256m'
Plug 'vim-scripts/badwolf'
Plug 'vim-scripts/Nazca'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

" ---------------------------------------------------------------------------------------------------------------------
" Other
" ---------------------------------------------------------------------------------------------------------------------

" Easymotion to easily navigate inside a file
Plug 'easymotion/vim-easymotion'

" More . repeat functionality
Plug 'tpope/vim-repeat'
" Delete all but current buffer
Plug 'vim-scripts/BufOnly.vim'
" Nicer undo tree
Plug 'mbbill/undotree'

" Store and cycle latest yanks
Plug 'svermeulen/vim-yoink'
nmap <c-p> <plug>(YoinkPostPasteSwapBack)
nmap <c-n> <plug>(YoinkPostPasteSwapForward)

nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
let g:yoinkSavePersistently = '1'
let g:yoinkIncludeDeleteOperations = '1'

" Auto Completion while you write (requires python3)
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" let g:deoplete#enable_at_startup = 1

" Markdown toc generator :GenTocGFM to generate
Plug 'mzlogin/vim-markdown-toc'

" Clojure fireplace repl
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
" Plug 'venantius/vim-eastwood'
" Plug 'venantius/vim-cljfmt'
" Plug 'guns/vim-clojure-static'

" Terminal :Term, :VTterm
Plug 'mklabs/split-term.vim'
let g:splitterm#disable_key_mappings = 0

" Wiki
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [
      \ {'path': '~/zettel', 'syntax': 'markdown', 'ext': '.md'}]

let g:disable_front_matter = 0
let g:zettel_options = [
      \ {
      \  'template' :  '~/zettaltemplate.tpl'
      \ }]

" Linter
Plug 'w0rp/ale'
let g:ale_linters = {
\  'javascript': ['standard', 'eslint'],
\  'vimwiki': []
\}

" JS min files are normally huge. No sense in running linter there
let g:ale_pattern_options = {
\  '.*\.min\.js$': {'ale_enabled': 0},
\}

" support terraform
Plug 'hashivim/vim-terraform'

" Sudo suppport w!!
Plug 'lambdalisue/suda.vim'

" Plantuml
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" Show markers on left side
Plug 'kshenoy/vim-signature'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'rhysd/vim-fixjson'

Plug 'rhysd/vim-crystal'
Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

Plug 'chrisbra/csv.vim'

Plug 'mileszs/ack.vim'

Plug 'michal-h21/vim-zettel'
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" 1.2 End of plugin declaration
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#end()
"}}}

" ======================================================================================================================
" 2.0 Basic settings
" ======================================================================================================================
"{{{

set shell=/bin/zsh                          " Setting shell to zsh
set number                                  " Line numbers on
set laststatus=2                            " Always show status line
set showmode                                " Always show mode
set wildmenu                                " Better auto-complete of ex commands
set textwidth=120                           " Text width is 120 characters
set autoread                                " Automatically reload change files on disk
set cmdheight=1                             " Command line height
set pumheight=10                            " Completion window max size
set timeoutlen=500                          " ESC timeout
set hidden                                  " Enables to switch between unsaved buffers and keep undo history
set clipboard+=unnamed                      " Allow to use system clipboard
set history=1000                            " Size of commands history
set lazyredraw                              " Don't redraw while executing macros (better performance)
set showmatch                               " Show matching brackets when text indicator is over them
set matchtime=2                             " How many tenths of a second to blink when matching brackets
set backspace=indent,eol,start              " Set default behavior of backspace
set nostartofline                           " Prevent cursor from moving to beginning of line when switching buffers
set virtualedit=block                       " To be able to select past EOL in visual block mode
set nojoinspaces                            " No extra space when joining a line which ends with . ? !
set scrolloff=5                             " Scroll when closing to top or bottom of the screen
set updatetime=1000                         " Update time used to create swap file or other things
set mouse=a                                 " Enable mouse integration

" ---------------------------------------------------------------------------------------------------------------------
" 2.1 Indentation settings (2 spaces tabs)
" ---------------------------------------------------------------------------------------------------------------------
set expandtab                               " Use the appropriate number of spaces to insert a <Tab>
set shiftwidth=4                            " Number of spaces
set softtabstop=4                           " Same but when use soft tabs
set tabstop=4                               " Number of spaces that a <Tab> in the file counts for

" ---------------------------------------------------------------------------------------------------------------------
" 2.2 Split settings (more natural).
" ---------------------------------------------------------------------------------------------------------------------
set splitbelow                              " Splitting a window will put the new window below the current
set splitright                              " Splitting a window will put the new window right of the current

" ---------------------------------------------------------------------------------------------------------------------
" 2.3 Backup settings (defaults + noswapfile)
" ---------------------------------------------------------------------------------------------------------------------
set noswapfile                              " New buffers will be loaded without creating a swapfile

" ---------------------------------------------------------------------------------------------------------------------
" 2.4 Spelling settings
" ---------------------------------------------------------------------------------------------------------------------
set spellfile=~/.config/nvim/dictionary.utf-8.add
set spelllang=en_us                         " Set language to US English
set nospell                                 " Disable checking by default (use <F4> to toggle)

" ---------------------------------------------------------------------------------------------------------------------
" 2.5 Search settings
" ---------------------------------------------------------------------------------------------------------------------
set ignorecase                              " Ignore case by default
set smartcase                               " Make search case sensitive only if it contains uppercase letters
set incsearch                               " Incremental search
set wrapscan                                " Search again from top when reached the bottom
set hlsearch                                " Keep highlight after search

" ---------------------------------------------------------------------------------------------------------------------
" 2.6 Persistent undo settings
" ---------------------------------------------------------------------------------------------------------------------
if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/tmp/undo//
endif

" ---------------------------------------------------------------------------------------------------------------------
" 2.7 White characters settings
" ---------------------------------------------------------------------------------------------------------------------
set list                                    " Show listchars by default
set listchars=tab:>\ ,trail:·,extends:#,nbsp:·

" ---------------------------------------------------------------------------------------------------------------------
" 2.8 Filetype settings
" ---------------------------------------------------------------------------------------------------------------------
filetype plugin on
filetype indent on

" ---------------------------------------------------------------------------------------------------------------------
" 2.9 Folding settings (by default is disabled, use 'za')
" ---------------------------------------------------------------------------------------------------------------------
set foldmethod=marker                       " Markers are used to specify folds.
set foldlevelstart=2                        " At which level folds will be closed by default
set fillchars="fold: "                      " Characters to fill the statuslines and vertical separators

" ---------------------------------------------------------------------------------------------------------------------
" 2.10 Omni completion settings
" ---------------------------------------------------------------------------------------------------------------------
set completeopt-=preview                    " Don't show preview scratch buffers
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set omnifunc=syntaxcomplete#Complete

" ---------------------------------------------------------------------------------------------------------------------
" 2.11 Neovim specific settings
" ---------------------------------------------------------------------------------------------------------------------
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1       " Set an environment variable to use the t_SI/t_EI hack
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1       " Turn on true colors support (does not work inside tmux yet)

" -----------------------------------------------------
" 2.12 Ctags settings
" -----------------------------------------------------
" For Ruby STD ctags use tpope/rbenv-ctags + vim-ruby
" For gem ctags use tpope/gem-ctags + vim-bundler
" -----------------------------------------------------
set tags+=.tags                           " Project tags are in .tags file
"}}}

" ======================================================================================================================
" 3.0 Mapping settings
" ======================================================================================================================
"{{{

" -----------------------------------------------------
" 3.1 Setting leader
" -----------------------------------------------------
" let g:mapleader="\<space>"

" -----------------------------------------------------
" 3.2 Disabling arrow keys, space key, exmode enter
" with Q key, help with F1, etc.
" -----------------------------------------------------
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <bs> <nop>
nnoremap <delete> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <Space> <nop>
inoremap <F1> <nop>
nnoremap <F1> <nop>
nnoremap Q <nop>

" -----------------------------------------------------
" 3.3 Vim defaults overriding
" -----------------------------------------------------

" When jump to next match also center screen
noremap n nzz
noremap N Nzz

" Same when moving up and down
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" No more accidentally showing up command window (Use C-f to show it)
map q: :q

" jk in insert mode is now esc
inoremap jk <esc>

" jk in command mode is now esc
cnoremap jk <esc>

" Remap leader key
" let mapleader = '\\'
let mapleader = '`'
" let g:mapleader = '\\'
let g:mapleader = '`'

" Autoload init.vim when you save it
augroup vimconfig
  autocmd! BufWritePost init.vim source ~/.config/nvim/init.vim
augroup end

" -----------------------------------------------------
" 3.4 Common tasks
" -----------------------------------------------------

" Whenever i forget to use sudo vim... Now just write with 'w!!'
cmap w!! w suda://%

" Fast editing of .vimrc
map <leader>e :e! ~/.config/nvim/init.vim<cr>

" Leader + q quits vim
noremap <leader>q :qa <cr>

" Leader CD goes to current directory
nnoremap <leader>CD :cd %:p:h<cr>

" Fast search with <space>
map <space> /
map <c-space> ?

" -----------------------------------------------------
" 3.5 F-key actions
" -----------------------------------------------------

" NERDTree wrapper
nmap <silent> <F2> :NERDTreeToggle<CR>
nmap <silent> <F3> :UndotreeToggle<CR>
nmap <silent> <F5> :set invlist<CR>:set list?<CR>
nmap <silent> <F6> :set invwrap<CR>:set wrap?<CR>
nmap <silent> <F7> :set invhls<CR>:set hls?<CR>

" -----------------------------------------------------
" 3.6 Window / Buffer management
" -----------------------------------------------------

" Navigate between buffers
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h  :bprev<cr>

" -----------------------------------------------------
" 3.7 Command abbreviations and mappings
" -----------------------------------------------------

" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" -----------------------------------------------------
" 3.7 Custom commands and functions
" -----------------------------------------------------

" Generate tags definitions
command! GenerateCT :call utils#generateCtags()
command! GenerateRubyCT :call utils#generateRubyCtags()

" ======================================================================================================================
" 4.0 Plugins settings
" ======================================================================================================================
"{{{

" -----------------------------------------------------
" 4.1 Slime
" -----------------------------------------------------
let g:slime_target = 'tmux'

" -----------------------------------------------------
" 4.3 NERDTree
" -----------------------------------------------------
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows=1
let g:NERDTreeWinSize=55
let g:NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.vim$', '\~$', '.pyc$', 'build$[[dir]]', '.class$', '\.jar$', '\.o$', '\.pid$']

" -----------------------------------------------------
" 4.4 Indent line
" -----------------------------------------------------
" Marks indentation, makes it easier to read xml (slow as hell)
" Use IdentLinesToggle to show/hide
let g:indentLine_enabled = 1  " 1 does not enable the plugin by default
let g:indentLine_fileType = ['html', 'xml'] " Automatically start the plugin for these files

" -----------------------------------------------------
" 4.5 Gitgutter settings
" -----------------------------------------------------
let g:gitgutter_map_keys=0
let g:gitgutter_max_signs=9999
let g:gitgutter_sign_added='+'
let g:gitgutter_sign_modified='~'
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_modified_removed='~'
let g:gitgutter_sign_removed_first_line='-'
let g:gitgutter_preview_win_floating=1
nmap <Leader>hp <Plug>(GitGutterPreviewHunk)
nmap <Leader>hs <Plug>(GitGutterStageHunk)
nmap <Leader>hu <Plug>(GitGutterStageHunk)

" -----------------------------------------------------
" 4.7 Lightline settings
" -----------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"R":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'subseparator': { 'left': '│', 'right': '│' }
      \ }

function! LightLineFilename()
  return expand('%:p')
endfunction

" -----------------------------------------------------
" 4.9 Neomake settings
" -----------------------------------------------------
let g:neomake_verbose=0
let g:neomake_warning_sign = {
      \ 'text': '>',
      \ 'texthl': 'WarningMsg',
      \ }
let g:neomake_error_sign = {
      \ 'text': '>',
      \ 'texthl': 'ErrorMsg',
      \ }

" -----------------------------------------------------
" 4.10 JavaImp
" -----------------------------------------------------
let g:JavaImpPaths = $CLASSPATH
let g:JavaImpPathSep = ':'          " Classpath is divided by ':'
let g:JavaImpSortPkgSep = 1

" -----------------------------------------------------
" 4.11 NeoTerm settings
" -----------------------------------------------------
let g:neoterm_size=60
let g:neoterm_position='vertical'

" -----------------------------------------------------
" 4.12 Vim-Test settings
" -----------------------------------------------------
let g:test#strategy = 'neoterm'

" -----------------------------------------------------
" 4.15 Vim Markdown settings
" -----------------------------------------------------
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_folding_disabled=1

" ======================================================================================================================
" 5.0 Plugin mappings
" ======================================================================================================================
"{{{

" 5.5 Easymotion
" -----------------------------------------------------
"Use çç + letter to quickly move to that letter
map çç <Plug>(easymotion-bd-f)
" ======================================================================================================================
" 6.0 Color and highlighting settings
" ======================================================================================================================
"{{{
" Syntax highlighting
syntax on

set background=dark
colorscheme onedark
" Other good ones
" colorscheme molokai
" colorscheme iceberg
" colorscheme jellybeans
" colorscheme xoria256
" colorscheme molokai
" colorscheme hemisu
" colorscheme badwolf
" colorscheme nazca
" colorscheme jellyx

if has('termguicolors')
  set termguicolors
endif

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Highlight term cursor differently
highlight TermCursor ctermfg=green guifg=green

" Remove underline in folded lines
hi! Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE

" Link highlight groups to improve buftabline colors
hi! link BufTabLineCurrent Statement
hi! link BufTabLineActive Comment
hi! link BufTabLineHidden Comment
hi! link BufTabLineFill Comment
"}}}

" ======================================================================================================================
" 7.0 Filetype specific settings and autocommands
" ======================================================================================================================
"{{{
augroup spacing
  autocmd FileType javascript,yaml,html,ruby,coffee,sass,scss,haml,slim,json,vim,plantuml setlocal shiftwidth=2 softtabstop=2 tabstop=2
  autocmd FileType java setlocal shiftwidth=4 softtabstop=4 tabstop=4
augroup end

" Keywordprg settings
augroup vimhelp
  autocmd FileType vim setlocal keywordprg=:help
augroup end

" Resize splits when the window is resized
" autocmd VimResized * :wincmd =

" Git commit messages with spelling and warning to not pass 72 chars
augroup markdown
  autocmd FileType gitcommit,markdown setlocal spell
  autocmd FileType gitcommit,markdown setlocal spelllang=en_us
  autocmd FileType gitcommit,markdown set colorcolumn=72
  autocmd FileType gitcommit,markdown set textwidth=72
augroup end

" Command-line config{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bash like
cnoremap <C-A>    <Home>
cnoremap <C-E>    <End>
cnoremap <C-K>    <C-U>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}

" vim -b : edit binary using xxd-format!
augroup Binary
  autocmd!
  autocmd BufReadPre  *.bin let &bin=1
  autocmd BufReadPost *.bin if &bin | %!xxd
  autocmd BufReadPost *.bin set ft=xxd | endif
  autocmd BufWritePre *.bin if &bin | %!xxd -r
  autocmd BufWritePre *.bin endif
  autocmd BufWritePost *.bin if &bin | %!xxd
  autocmd BufWritePost *.bin set nomod | endif
augroup END

set iskeyword-=.
set iskeyword-=/

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Zettal
nnoremap <leader>zo <esc>:ZettelOpen<cr>
nnoremap <leader>zn :ZettelNew<space>

