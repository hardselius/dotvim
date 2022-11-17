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

colorscheme slate

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
nnoremap <Leader>s :sfind *
nnoremap <Leader>v :vertical sfind *
nnoremap <Leader>t :tabfind *

# buffers
nnoremap <Leader>b :buffer *
nnoremap <Leader>a :buffer#<CR>

# command-line
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>

# tags
nnoremap <Leader>j :tjump /
nnoremap <Leader>p :ptjump /

# location/quickfix entries
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>

# search and replace
nnoremap <Space><Space> :'{,'}s/\<<C-r>=expand("<cword>")<CR>\>/
nnoremap <Space>%       :%s/\<<C-r>=expand("<cword>")<CR>\>/

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
command! SudoW exec 'silent! write !sudo tee % >/dev/null' | edit!

# portable git blame
command! -range GB echo join(systemlist("git -C " . shellescape(expand('%:p:h')) . " blame -L <line1>,<line2> " . expand('%:t')), "\n")

# location list :global
set errorformat^=%f:%l:%c\ %m
command! -nargs=1 Global lgetexpr filter(map(getline(1,'$'), {key, val -> expand("%") . ":" . (key + 1) . ":1 " . val }), { idx, val -> val =~ <q-args> })
nnoremap <Leader>G :Global

# create directories
nnoremap <Leader>m :!mkdir -p %:h<CR>

# plugins
g:netrw_liststyle = 3
g:netrw_localrmdir = 'rm -r'

packadd matchit
packadd lsp
packadd vim-commentary
packadd vim-repeat
packadd vim-surround
packadd vim-terraform
packadd vim-nix

def FindExecutable(name: string): string
    var path = trim(system("which " .. name))
    return strlen(path) <= 0 ? name : path
enddef

def OnLspAttach()
    setlocal omnifunc=LspOmniFunc
    setlocal tagfunc=lsp#lsp#TagFunc
    setlocal updatetime=100
enddef

var lspServers = [
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
	name: 'rnix-lsp',
	filetype: ['nix'],
	args: [],
    },
    {
	name: 'bash-language-server',
	filetype: ['bash', 'sh'],
	args: ['start'],
    },
]
var servers = []

def RegisterLspServers()
    for server in lspServers
	if executable(server.name)
	    var path = trim(system("which " .. server.name))
	    server.path = path
	    add(servers, server)
	endif
    endfor
enddef

call LspOptionsSet({
    autoComplete: false,
    noNewLineInCompletion: true,
    showDiagInPopup: false,
    showDiagOnStatusLine: true
})
call RegisterLspServers()
call LspAddServer(servers)

augroup LSP
    autocmd!
    autocmd User LspAttached call OnLspAttach()

    nmap <buffer> <leader>=  <cmd>LspFormat<CR>
    vmap <buffer> <leader>=  <cmd>LspFormat<CR>
    nmap <buffer> ga         <cmd>LspCodeAction<CR>
    nmap <buffer> gd         <cmd>LspGotoDefinition<CR>
    nmap <buffer> gs         <cmd>LspSymbolSearch
    nmap <buffer> gr         <cmd>LspReferences<CR>
    nmap <buffer> gi         <cmd>LspGotoImpl<CR>
    nmap <buffer> <leader>gt <cmd>LspTypeDef<CR>
    nmap <buffer> <leader>R  <cmd>LspRename<CR>
    nmap <buffer> [g         <cmd>LspDiagPrev\|LspDiagCurrent<CR>
    nmap <buffer> ]g         <cmd>LspDiagNext\|LspDiagCurrent<CR>
    nmap <buffer> <leader>k  <cmd>LspHover<CR>
augroup END

# slate's MatchParen is horrible and confusing.
hi MatchParen term=reverse ctermfg=220 ctermbg=16 guifg=#ffd700 guibg=#000000
