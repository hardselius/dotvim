vim9script

# backup, undo and swap with XDG support

if empty($XDG_CACHE_HOME)
    $XDG_CACHE_HOME = $HOME .. '/.cache'
endif

set backupdir=$XDG_CACHE_HOME/vim/backup | call mkdir(&backupdir, 'p', 0700)
set directory=$XDG_CACHE_HOME/vim/swap   | call mkdir(&directory, 'p', 0700)
set undodir=$XDG_CACHE_HOME/vim/undo     | call mkdir(&undodir,   'p', 0700)

set backup
set undofile
set swapfile

# filetype support
filetype plugin indent on
syntax on

# various settings
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard^=unnamed
set complete+=d
set completeopt+=menuone,noinsert,noselect
set foldlevelstart=999
set foldmethod=indent
set grepprg=LC_ALL=C\ grep\ -nrsH
set hidden
set incsearch
set laststatus=2
set number
set path=.,,**
set ruler
set shiftround
set tags=./tags;,tags;
set virtualedit=block
set visualbell t_vb=
set wildcharm=<C-z>
set wildmenu

set shiftwidth=4
&softtabstop = &shiftwidth

colorscheme forest

# use ripgrep if it's there
if executable('rg')
    set grepformat=%f:%l:%c:%m
    set grepprg=rg\ --vimgrep\ --no-heading\ $*
endif

augroup myvimrc
    autocmd!
    # automatic location/quickfix window
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost    l* lwindow
    autocmd VimEnter            * cwindow
    autocmd FileType gitcommit nnoremap <buffer> { ?^@@<CR>|nnoremap <buffer> } /^@@<CR>|setlocal iskeyword+=-
    autocmd CompleteDone * silent! pclose
    # undo if filter shell command returned an error
    autocmd ShellFilterPost * if v:shell_error | undo | endif
augroup END

# files
nnoremap <Leader>f :find *

# buffers
nnoremap <Leader>b :buffer *
nnoremap <Leader>a :buffer#<CR>

# command-line
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>

# location/quickfix entries
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>

# search and replace
nnoremap <Space><Space> :'{,'}s/\<<C-r>=expand("<cword>")<CR>\>//g<left><left>
nnoremap <Space>%       :%s/\<<C-r>=expand("<cword>")<CR>\>//g<left><left>

# global commands
nnoremap <Leader>g :g//#<Left><Left>

# windows
nnoremap <silent> <C-w>z :wincmd z<Bar>cclose<Bar>lclose<CR>

# background
nnoremap [b :<C-U>set background=<C-R>=&background == "dark" ? "light" : "dark"<CR><CR>

# grepping
def Grep(...args: list<string>): string
    return system(join([&grepprg] + [expandcmd(join(args, ' '))], ' '))
enddef
command! -nargs=+ -complete=file_in_path -bar Grep  cgetexpr Grep(<f-args>)
command! -nargs=+ -complete=file_in_path -bar LGrep lgetexpr Grep(<f-args>)
cnoreabbrev <expr> grep  (getcmdtype() ==# ':' && getcmdline() ==# 'grep')  ? 'Grep'  : 'grep'
cnoreabbrev <expr> lgrep (getcmdtype() ==# ':' && getcmdline() ==# 'lgrep') ? 'LGrep' : 'lgrep'

# searching
cnoremap <expr> <Tab>   getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>/<C-r>/" : "<C-z>"
cnoremap <expr> <S-Tab> getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>?<C-r>/" : "<S-Tab>"

# scratch buffer
command! SC vnew | setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile

# sudo write
if executable('sudo')
    command! W exec 'silent! write !sudo tee % >/dev/null' | edit!
endif

# portable git blame
def GB(start: number, end: number): list<string>
    var cmd = "git -C " .. shellescape(expand('%:p:h')) .. " blame -L " .. start .. "," .. end .. " " .. expand('%:t')
    return systemlist(cmd)
enddef
command! -range GB echo join(GB(<line1>, <line2>), "\n")

# create directories
nnoremap <Leader>m :!mkdir -p %:h<CR>

# fuzzy
import autoload 'fuzzy.vim'
nnoremap <leader>B <scriptcmd>fuzzy.Buffer()<CR>
nnoremap <leader>F <scriptcmd>fuzzy.FileTree()<CR>
nnoremap <leader>G <scriptcmd>fuzzy.GitFile()<CR>

# plugins
g:netrw_liststyle = 3
g:netrw_localrmdir = 'rm -r'

packadd matchit
packadd lsp
packadd tabular
packadd vim-colortemplate
packadd vim-commentary
packadd vim-jsonnet
packadd vim-just
packadd vim-repeat
packadd vim-surround
packadd vim-terraform
packadd vim-nix
packadd onedark.vim

def OnLspAttach()
    setlocal omnifunc=LspOmniFunc
    setlocal tagfunc=lsp#lsp#TagFunc
    setlocal updatetime=100

    nnoremap <buffer> <leader>=  <cmd>LspFormat<CR>
    vnoremap <buffer> <leader>=  <cmd>LspFormat<CR>
    nnoremap <buffer> ga         <cmd>LspCodeAction<CR>
    nnoremap <buffer> gd         <cmd>LspGotoDefinition<CR>
    nnoremap <buffer> gs         <cmd>LspSymbolSearch<CR>
    nnoremap <buffer> gr         <cmd>LspReferences<CR>
    nnoremap <buffer> gi         <cmd>LspGotoImpl<CR>
    nnoremap <buffer> <leader>gt <cmd>LspTypeDef<CR>
    nnoremap <buffer> <leader>R  <cmd>LspRename<CR>
    nnoremap <buffer> [g         <cmd>LspDiagPrev\|LspDiagCurrent<CR>
    nnoremap <buffer> ]g         <cmd>LspDiagNext\|LspDiagCurrent<CR>
    nnoremap <buffer> <leader>k  <cmd>LspHover<CR>
enddef

call LspOptionsSet({
    autoComplete: false,
    noNewLineInCompletion: true,
    showDiagInPopup: false,
    showDiagOnStatusLine: true,
    showSignature: false,
})

var lspServers: list<dict<any>> = [
    {
	name: 'clangd',
	filetype: ['c', 'cpp'],
	args: ['--background-index'],
    },
    {
	name: 'clojure-lsp',
	filetype: ['clojure'],
	args: [],
    },
    {
	name: 'rust-analyzer',
	filetype: ['rust'],
	args: [],
	syncInit: true,
    },
    {
	name: 'jsonnet-language-server',
	filetype: ['jsonnet', 'libsonnet'],
	args: [],
    },
    {
	name: 'vim-language-server',
	filetype: ['vim'],
	args: ['--stdio'],
    },
    {
	name: 'nil',
	filetype: ['nix'],
	args: [],
	initializationOptions: {
	    nil: {
		formatting: {
		    command: ['nixpkgs-fmt']
		}
	    }
	}
    },
    {
	name: 'bash-language-server',
	filetype: ['bash', 'sh'],
	args: ['start'],
    },
    {
	name: 'typescript-language-server',
	filetype: ['javascript', 'typescript'],
	args: ['--stdio'],
    },
]

var servers: list<dict<any>> = []

def RegisterLspServers()
    for server in lspServers
	var path = exepath(server.name)
	if path != ""
	    server.path = path
	    add(servers, server)
	endif
    endfor
enddef

call RegisterLspServers()

call LspAddServer(servers)

augroup LSP
    autocmd!
    autocmd User LspAttached call OnLspAttach()
augroup END
