" Name:         Forest
" Author:       Martin Hardselius <martin@hardselius.dev>
" Maintainer:   Martin Hardselius <martin@hardselius.dev>
" License:      Vim License (see `:help license`)
" Last Change:  2024 Oct 25

" Generated by Colortemplate v2.2.3

hi clear
let g:colors_name = 'forest'

let s:t_Co = has('gui_running') ? -1 : (&t_Co ?? 0)

hi! link CurSearch Search
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link PreCondit PreProc
hi! link SpecialComment Special
hi! link justBody Normal
hi! link justShebangBody Normal

if &background ==# 'dark'
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#1b1918', '#f22c3f', '#7a9726', '#c38418', '#407ee6', '#c340f2', '#3d97b8', '#f1efee', '#746c69', '#8c1122', '#3d4919', '#664115', '#213f78', '#662086', '#264858', '#f1efee']
  endif
  hi Normal guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
  hi Added guifg=#7a9726 guibg=#1b1918 gui=NONE cterm=NONE
  hi Boolean guifg=#df5320 guibg=#1b1918 gui=NONE cterm=NONE
  hi Character guifg=#f22c3f guibg=#1b1918 gui=NONE cterm=NONE
  hi ColorColumn guifg=#a8a19f guibg=#2c2421 gui=NONE cterm=NONE
  hi Comment guifg=#766e6b guibg=#1b1918 gui=NONE cterm=NONE
  hi Conceal guifg=#407ee6 guibg=#1b1918 gui=NONE cterm=NONE
  hi Conditional guifg=#6666ea guibg=#1b1918 gui=NONE cterm=NONE
  hi Constant guifg=#df5320 guibg=#1b1918 gui=NONE cterm=NONE
  hi Cursor guifg=#1b1918 guibg=#a8a19f gui=NONE cterm=NONE
  hi CursorColumn guifg=#a8a19f guibg=#2c2421 gui=NONE cterm=NONE
  hi CursorLine guifg=#a8a19f guibg=#2c2421 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#766e6b guibg=#2c2421 gui=bold cterm=underline
  hi Debug guifg=#f22c3f guibg=#1b1918 gui=NONE cterm=NONE
  hi Define guifg=#6666ea guibg=#1b1918 gui=NONE cterm=NONE
  hi Delimiter guifg=#c340f2 guibg=#1b1918 gui=NONE cterm=NONE
  hi DiffAdd guifg=#7a9726 guibg=#2c2421 gui=NONE cterm=NONE
  hi DiffChange guifg=#766e6b guibg=#2c2421 gui=NONE cterm=NONE
  hi DiffDelete guifg=#f22c3f guibg=#2c2421 gui=bold cterm=NONE
  hi DiffText guifg=#407ee6 guibg=#2c2421 gui=bold cterm=bold
  hi Directory guifg=#407ee6 guibg=#1b1918 gui=NONE cterm=NONE
  hi Error guifg=#1b1918 guibg=#f22c3f gui=NONE cterm=NONE
  hi ErrorMsg guifg=#f22c3f guibg=#1b1918 gui=NONE cterm=NONE
  hi Exception guifg=#f22c3f guibg=#1b1918 gui=NONE cterm=NONE
  hi Float guifg=#df5320 guibg=#1b1918 gui=NONE cterm=NONE
  hi FoldColumn guifg=#3d97b8 guibg=#2c2421 gui=NONE cterm=NONE
  hi Folded guifg=#766e6b guibg=#2c2421 gui=NONE cterm=NONE
  hi Function guifg=#407ee6 guibg=#1b1918 gui=NONE cterm=NONE
  hi Identifier guifg=#f22c3f guibg=#1b1918 gui=NONE cterm=NONE
  hi Ignore guifg=#1b1918 guibg=#1b1918 gui=NONE cterm=NONE
  hi IncSearch guifg=#2c2421 guibg=#df5320 gui=NONE cterm=NONE
  hi Include guifg=#407ee6 guibg=#1b1918 gui=NONE cterm=NONE
  hi Keyword guifg=#6666ea guibg=#1b1918 gui=NONE cterm=NONE
  hi Label guifg=#c38418 guibg=#1b1918 gui=NONE cterm=NONE
  hi LineNr guifg=#68615e guibg=#2c2421 gui=NONE cterm=NONE
  hi LineNrAbove guifg=#a8a19f guibg=#1b1918 gui=NONE cterm=NONE
  hi LineNrBelow guifg=#a8a19f guibg=#1b1918 gui=NONE cterm=NONE
  hi Macro guifg=#f22c3f guibg=#1b1918 gui=NONE cterm=NONE
  hi MatchParen guifg=#1b1918 guibg=#766e6b gui=NONE cterm=NONE
  hi ModeMsg guifg=#7a9726 guibg=#1b1918 gui=bold cterm=bold
  hi MoreMsg guifg=#7a9726 guibg=#1b1918 gui=bold cterm=NONE
  hi NonText guifg=#766e6b guibg=#1b1918 gui=bold cterm=NONE
  hi Number guifg=#df5320 guibg=#1b1918 gui=NONE cterm=NONE
  hi Operator guifg=#a8a19f guibg=#1b1918 gui=NONE cterm=NONE
  hi Pmenu guifg=#9c9491 guibg=#2c2421 gui=NONE cterm=NONE
  hi PmenuSel guifg=#2c2421 guibg=#9c9491 gui=NONE cterm=NONE
  hi PreProc guifg=#c38418 guibg=#1b1918 gui=NONE cterm=NONE
  hi Question guifg=#407ee6 guibg=#1b1918 gui=bold cterm=NONE
  hi Removed guifg=#f22c3f guibg=#1b1918 gui=NONE cterm=NONE
  hi Repeat guifg=#c38418 guibg=#1b1918 gui=NONE cterm=NONE
  hi Search guifg=#e6e2e0 guibg=#c38418 gui=NONE cterm=NONE
  hi SignColumn guifg=#766e6b guibg=#2c2421 gui=NONE cterm=NONE
  hi Special guifg=#3d97b8 guibg=#1b1918 gui=NONE cterm=NONE
  hi SpecialChar guifg=#c340f2 guibg=#1b1918 gui=NONE cterm=NONE
  hi SpecialKey guifg=#766e6b guibg=#1b1918 gui=NONE cterm=NONE
  hi SpellBad guifg=#a8a19f guibg=#1b1918 gui=undercurl cterm=undercurl
  hi SpellCap guifg=#a8a19f guibg=#1b1918 gui=undercurl cterm=undercurl
  hi SpellLocal guifg=#a8a19f guibg=#1b1918 gui=undercurl cterm=undercurl
  hi SpellRare guifg=#a8a19f guibg=#1b1918 gui=undercurl cterm=undercurl
  hi Statement guifg=#f22c3f guibg=#1b1918 gui=bold cterm=NONE
  hi StatusLine guifg=#9c9491 guibg=#68615e gui=NONE cterm=NONE
  hi StatusLineNC guifg=#766e6b guibg=#2c2421 gui=NONE cterm=NONE
  hi StatusLineTerm guifg=#1b1918 guibg=#7a9726 gui=bold cterm=bold
  hi StatusLineTermNC guifg=#1b1918 guibg=#7a9726 gui=NONE cterm=NONE
  hi StorageClass guifg=#c38418 guibg=#1b1918 gui=NONE cterm=NONE
  hi String guifg=#7a9726 guibg=#1b1918 gui=NONE cterm=NONE
  hi Structure guifg=#6666ea guibg=#1b1918 gui=NONE cterm=NONE
  hi TabLine guifg=#766e6b guibg=#2c2421 gui=NONE cterm=NONE
  hi TabLineFill guifg=#766e6b guibg=#2c2421 gui=NONE cterm=NONE
  hi TabLineSel guifg=#7a9726 guibg=#2c2421 gui=NONE cterm=NONE
  hi Tag guifg=#c38418 guibg=#1b1918 gui=NONE cterm=NONE
  hi Title guifg=#f1efee guibg=#1b1918 gui=bold cterm=bold
  hi Todo guifg=#c38418 guibg=#2c2421 gui=bold cterm=bold
  hi ToolbarButton guifg=#1b1918 guibg=#9c9491 gui=bold cterm=bold
  hi Type guifg=#c38418 guibg=#1b1918 gui=NONE cterm=NONE
  hi Typedef guifg=#c38418 guibg=#1b1918 gui=NONE cterm=NONE
  hi Underlined guifg=#f22c3f guibg=#1b1918 gui=underline cterm=underline
  hi VertSplit guifg=#1b1918 guibg=#1b1918 gui=NONE cterm=NONE
  hi VisualNOS guifg=#f22c3f guibg=#1b1918 gui=bold,underline cterm=bold,underline
  hi WarningMsg guifg=#f22c3f guibg=#1b1918 gui=NONE cterm=NONE
  hi WildMenu guifg=#f1efee guibg=#2c2421 gui=NONE cterm=NONE
  hi QuickFixLine guibg=#2c2421 gui=bold cterm=bold
  hi markdownBold guifg=#407ee6 guibg=#1b1918 gui=bold cterm=bold
  hi markdownCode guifg=#df5320 guibg=#1b1918 gui=NONE cterm=NONE
  hi markdownCodeDelimiter guifg=#df5320 guibg=#1b1918 gui=NONE cterm=NONE
  hi markdownHeadingDelimiter guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
  hi markdownLink guifg=#7a9726 guibg=#1b1918 gui=NONE cterm=NONE
  hi markdownUrl guifg=#7a9726 guibg=#1b1918 gui=NONE cterm=NONE
  hi rustAttribute guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
  hi rustCommentLineDoc guifg=#766e6b guibg=#1b1918 gui=NONE cterm=NONE
  hi rustDerive guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
  hi rustIdentifier guifg=#c38418 guibg=#1b1918 gui=NONE cterm=NONE
  hi rustMacro guifg=#407ee6 guibg=#1b1918 gui=NONE cterm=NONE
  hi rustModPath guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
  hi rustModPathSep guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
  hi rustPubScopeDelim guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
  hi rustSigil guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
  hi rustString guifg=#7a9726 guibg=#1b1918 gui=NONE cterm=NONE
  hi rustFoldBraces guifg=#f1efee guibg=#1b1918 gui=NONE cterm=NONE
else
  " Light background
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#1b1918', '#f22c3f', '#7a9726', '#c38418', '#407ee6', '#c340f2', '#3d97b8', '#f1efee', '#746c69', '#8c1122', '#3d4919', '#664115', '#213f78', '#662086', '#264858', '#f1efee']
  endif
  hi Normal guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
  hi Added guifg=#7a9726 guibg=#f1efee gui=NONE cterm=NONE
  hi Boolean guifg=#df5320 guibg=#f1efee gui=NONE cterm=NONE
  hi Character guifg=#f22c3f guibg=#f1efee gui=NONE cterm=NONE
  hi ColorColumn guifg=#68615e guibg=#e6e2e0 gui=NONE cterm=NONE
  hi Comment guifg=#9c9491 guibg=#f1efee gui=NONE cterm=NONE
  hi Conceal guifg=#407ee6 guibg=#f1efee gui=NONE cterm=NONE
  hi Conditional guifg=#6666ea guibg=#f1efee gui=NONE cterm=NONE
  hi Constant guifg=#df5320 guibg=#f1efee gui=NONE cterm=NONE
  hi Cursor guifg=#f1efee guibg=#68615e gui=NONE cterm=NONE
  hi CursorColumn guifg=#68615e guibg=#e6e2e0 gui=NONE cterm=NONE
  hi CursorLine guifg=#68615e guibg=#e6e2e0 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#9c9491 guibg=#e6e2e0 gui=bold cterm=underline
  hi Debug guifg=#f22c3f guibg=#f1efee gui=NONE cterm=NONE
  hi Define guifg=#6666ea guibg=#f1efee gui=NONE cterm=NONE
  hi Delimiter guifg=#c340f2 guibg=#f1efee gui=NONE cterm=NONE
  hi DiffAdd guifg=#7a9726 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi DiffChange guifg=#9c9491 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi DiffDelete guifg=#f22c3f guibg=#e6e2e0 gui=bold cterm=NONE
  hi DiffText guifg=#407ee6 guibg=#e6e2e0 gui=bold cterm=bold
  hi Directory guifg=#407ee6 guibg=#f1efee gui=NONE cterm=NONE
  hi Error guifg=#f1efee guibg=#f22c3f gui=NONE cterm=NONE
  hi ErrorMsg guifg=#f22c3f guibg=#f1efee gui=NONE cterm=NONE
  hi Exception guifg=#f22c3f guibg=#f1efee gui=NONE cterm=NONE
  hi Float guifg=#df5320 guibg=#f1efee gui=NONE cterm=NONE
  hi FoldColumn guifg=#3d97b8 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi Folded guifg=#9c9491 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi Function guifg=#407ee6 guibg=#f1efee gui=NONE cterm=NONE
  hi Identifier guifg=#f22c3f guibg=#f1efee gui=NONE cterm=NONE
  hi Ignore guifg=#f1efee guibg=#f1efee gui=NONE cterm=NONE
  hi IncSearch guifg=#e6e2e0 guibg=#df5320 gui=NONE cterm=NONE
  hi Include guifg=#407ee6 guibg=#f1efee gui=NONE cterm=NONE
  hi Keyword guifg=#6666ea guibg=#f1efee gui=NONE cterm=NONE
  hi Label guifg=#c38418 guibg=#f1efee gui=NONE cterm=NONE
  hi LineNr guifg=#a8a19f guibg=#e6e2e0 gui=NONE cterm=NONE
  hi LineNrAbove guifg=#68615e guibg=#f1efee gui=NONE cterm=NONE
  hi LineNrBelow guifg=#68615e guibg=#f1efee gui=NONE cterm=NONE
  hi Macro guifg=#f22c3f guibg=#f1efee gui=NONE cterm=NONE
  hi MatchParen guifg=#f1efee guibg=#9c9491 gui=NONE cterm=NONE
  hi ModeMsg guifg=#7a9726 guibg=#f1efee gui=bold cterm=bold
  hi MoreMsg guifg=#7a9726 guibg=#f1efee gui=bold cterm=NONE
  hi NonText guifg=#9c9491 guibg=#f1efee gui=bold cterm=NONE
  hi Number guifg=#df5320 guibg=#f1efee gui=NONE cterm=NONE
  hi Operator guifg=#68615e guibg=#f1efee gui=NONE cterm=NONE
  hi Pmenu guifg=#766e6b guibg=#e6e2e0 gui=NONE cterm=NONE
  hi PmenuSel guifg=#e6e2e0 guibg=#766e6b gui=NONE cterm=NONE
  hi PreProc guifg=#c38418 guibg=#f1efee gui=NONE cterm=NONE
  hi Question guifg=#407ee6 guibg=#f1efee gui=bold cterm=NONE
  hi Removed guifg=#f22c3f guibg=#f1efee gui=NONE cterm=NONE
  hi Repeat guifg=#c38418 guibg=#f1efee gui=NONE cterm=NONE
  hi Search guifg=#2c2421 guibg=#c38418 gui=NONE cterm=NONE
  hi SignColumn guifg=#9c9491 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi Special guifg=#3d97b8 guibg=#f1efee gui=NONE cterm=NONE
  hi SpecialChar guifg=#c340f2 guibg=#f1efee gui=NONE cterm=NONE
  hi SpecialKey guifg=#9c9491 guibg=#f1efee gui=NONE cterm=NONE
  hi SpellBad guifg=#68615e guibg=#f1efee gui=undercurl cterm=undercurl
  hi SpellCap guifg=#68615e guibg=#f1efee gui=undercurl cterm=undercurl
  hi SpellLocal guifg=#68615e guibg=#f1efee gui=undercurl cterm=undercurl
  hi SpellRare guifg=#68615e guibg=#f1efee gui=undercurl cterm=undercurl
  hi Statement guifg=#f22c3f guibg=#f1efee gui=bold cterm=NONE
  hi StatusLine guifg=#766e6b guibg=#a8a19f gui=NONE cterm=NONE
  hi StatusLineNC guifg=#9c9491 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi StatusLineTerm guifg=#f1efee guibg=#7a9726 gui=bold cterm=bold
  hi StatusLineTermNC guifg=#f1efee guibg=#7a9726 gui=NONE cterm=NONE
  hi StorageClass guifg=#c38418 guibg=#f1efee gui=NONE cterm=NONE
  hi String guifg=#7a9726 guibg=#f1efee gui=NONE cterm=NONE
  hi Structure guifg=#6666ea guibg=#f1efee gui=NONE cterm=NONE
  hi TabLine guifg=#9c9491 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi TabLineFill guifg=#9c9491 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi TabLineSel guifg=#7a9726 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi Tag guifg=#c38418 guibg=#f1efee gui=NONE cterm=NONE
  hi Title guifg=#1b1918 guibg=#f1efee gui=bold cterm=bold
  hi Todo guifg=#c38418 guibg=#e6e2e0 gui=bold cterm=bold
  hi ToolbarButton guifg=#f1efee guibg=#766e6b gui=bold cterm=bold
  hi Type guifg=#c38418 guibg=#f1efee gui=NONE cterm=NONE
  hi Typedef guifg=#c38418 guibg=#f1efee gui=NONE cterm=NONE
  hi Underlined guifg=#f22c3f guibg=#f1efee gui=underline cterm=underline
  hi VertSplit guifg=#f1efee guibg=#f1efee gui=NONE cterm=NONE
  hi VisualNOS guifg=#f22c3f guibg=#f1efee gui=bold,underline cterm=bold,underline
  hi WarningMsg guifg=#f22c3f guibg=#f1efee gui=NONE cterm=NONE
  hi WildMenu guifg=#1b1918 guibg=#e6e2e0 gui=NONE cterm=NONE
  hi QuickFixLine guibg=#e6e2e0 gui=bold cterm=bold
  hi markdownBold guifg=#407ee6 guibg=#f1efee gui=bold cterm=bold
  hi markdownCode guifg=#df5320 guibg=#f1efee gui=NONE cterm=NONE
  hi markdownCodeDelimiter guifg=#df5320 guibg=#f1efee gui=NONE cterm=NONE
  hi markdownHeadingDelimiter guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
  hi markdownLink guifg=#7a9726 guibg=#f1efee gui=NONE cterm=NONE
  hi markdownUrl guifg=#7a9726 guibg=#f1efee gui=NONE cterm=NONE
  hi rustAttribute guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
  hi rustCommentLineDoc guifg=#9c9491 guibg=#f1efee gui=NONE cterm=NONE
  hi rustDerive guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
  hi rustIdentifier guifg=#c38418 guibg=#f1efee gui=NONE cterm=NONE
  hi rustMacro guifg=#407ee6 guibg=#f1efee gui=NONE cterm=NONE
  hi rustModPath guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
  hi rustModPathSep guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
  hi rustPubScopeDelim guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
  hi rustSigil guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
  hi rustString guifg=#7a9726 guibg=#f1efee gui=NONE cterm=NONE
  hi rustFoldBraces guifg=#1b1918 guibg=#f1efee gui=NONE cterm=NONE
endif

if s:t_Co >= 256
  if &background ==# 'dark'
    hi Normal ctermfg=255 ctermbg=234 cterm=NONE
    hi Added ctermfg=64 ctermbg=234 cterm=NONE
    hi Boolean ctermfg=166 ctermbg=234 cterm=NONE
    hi Character ctermfg=167 ctermbg=234 cterm=NONE
    hi ColorColumn ctermfg=247 ctermbg=235 cterm=NONE
    hi Comment ctermfg=242 ctermbg=234 cterm=NONE
    hi Conceal ctermfg=33 ctermbg=234 cterm=NONE
    hi Conditional ctermfg=63 ctermbg=234 cterm=NONE
    hi Constant ctermfg=166 ctermbg=234 cterm=NONE
    hi Cursor ctermfg=234 ctermbg=247 cterm=NONE
    hi CursorColumn ctermfg=247 ctermbg=235 cterm=NONE
    hi CursorLine ctermfg=247 ctermbg=235 cterm=NONE
    hi CursorLineNr ctermfg=242 ctermbg=235 cterm=underline
    hi Debug ctermfg=167 ctermbg=234 cterm=NONE
    hi Define ctermfg=63 ctermbg=234 cterm=NONE
    hi Delimiter ctermfg=165 ctermbg=234 cterm=NONE
    hi DiffAdd ctermfg=64 ctermbg=235 cterm=NONE
    hi DiffChange ctermfg=242 ctermbg=235 cterm=NONE
    hi DiffDelete ctermfg=167 ctermbg=235 cterm=NONE
    hi DiffText ctermfg=33 ctermbg=235 cterm=bold
    hi Directory ctermfg=33 ctermbg=234 cterm=NONE
    hi Error ctermfg=234 ctermbg=167 cterm=NONE
    hi ErrorMsg ctermfg=167 ctermbg=234 cterm=NONE
    hi Exception ctermfg=167 ctermbg=234 cterm=NONE
    hi Float ctermfg=166 ctermbg=234 cterm=NONE
    hi FoldColumn ctermfg=31 ctermbg=235 cterm=NONE
    hi Folded ctermfg=242 ctermbg=235 cterm=NONE
    hi Function ctermfg=33 ctermbg=234 cterm=NONE
    hi Identifier ctermfg=167 ctermbg=234 cterm=NONE
    hi Ignore ctermfg=234 ctermbg=234 cterm=NONE
    hi IncSearch ctermfg=235 ctermbg=166 cterm=NONE
    hi Include ctermfg=33 ctermbg=234 cterm=NONE
    hi Keyword ctermfg=63 ctermbg=234 cterm=NONE
    hi Label ctermfg=172 ctermbg=234 cterm=NONE
    hi LineNr ctermfg=241 ctermbg=235 cterm=NONE
    hi LineNrAbove ctermfg=247 ctermbg=234 cterm=NONE
    hi LineNrBelow ctermfg=247 ctermbg=234 cterm=NONE
    hi Macro ctermfg=167 ctermbg=234 cterm=NONE
    hi MatchParen ctermfg=234 ctermbg=242 cterm=NONE
    hi ModeMsg ctermfg=64 ctermbg=234 cterm=bold
    hi MoreMsg ctermfg=64 ctermbg=234 cterm=NONE
    hi NonText ctermfg=242 ctermbg=234 cterm=NONE
    hi Number ctermfg=166 ctermbg=234 cterm=NONE
    hi Operator ctermfg=247 ctermbg=234 cterm=NONE
    hi Pmenu ctermfg=246 ctermbg=235 cterm=NONE
    hi PmenuSel ctermfg=235 ctermbg=246 cterm=NONE
    hi PreProc ctermfg=172 ctermbg=234 cterm=NONE
    hi Question ctermfg=33 ctermbg=234 cterm=NONE
    hi Removed ctermfg=167 ctermbg=234 cterm=NONE
    hi Repeat ctermfg=172 ctermbg=234 cterm=NONE
    hi Search ctermfg=254 ctermbg=172 cterm=NONE
    hi SignColumn ctermfg=242 ctermbg=235 cterm=NONE
    hi Special ctermfg=31 ctermbg=234 cterm=NONE
    hi SpecialChar ctermfg=165 ctermbg=234 cterm=NONE
    hi SpecialKey ctermfg=242 ctermbg=234 cterm=NONE
    hi SpellBad ctermfg=247 ctermbg=234 cterm=undercurl
    hi SpellCap ctermfg=247 ctermbg=234 cterm=undercurl
    hi SpellLocal ctermfg=247 ctermbg=234 cterm=undercurl
    hi SpellRare ctermfg=247 ctermbg=234 cterm=undercurl
    hi Statement ctermfg=167 ctermbg=234 cterm=NONE
    hi StatusLine ctermfg=246 ctermbg=241 cterm=NONE
    hi StatusLineNC ctermfg=242 ctermbg=235 cterm=NONE
    hi StatusLineTerm ctermfg=234 ctermbg=64 cterm=bold
    hi StatusLineTermNC ctermfg=234 ctermbg=64 cterm=NONE
    hi StorageClass ctermfg=172 ctermbg=234 cterm=NONE
    hi String ctermfg=64 ctermbg=234 cterm=NONE
    hi Structure ctermfg=63 ctermbg=234 cterm=NONE
    hi TabLine ctermfg=242 ctermbg=235 cterm=NONE
    hi TabLineFill ctermfg=242 ctermbg=235 cterm=NONE
    hi TabLineSel ctermfg=64 ctermbg=235 cterm=NONE
    hi Tag ctermfg=172 ctermbg=234 cterm=NONE
    hi Title ctermfg=255 ctermbg=234 cterm=bold
    hi Todo ctermfg=172 ctermbg=235 cterm=bold
    hi ToolbarButton ctermfg=234 ctermbg=246 cterm=bold
    hi Type ctermfg=172 ctermbg=234 cterm=NONE
    hi Typedef ctermfg=172 ctermbg=234 cterm=NONE
    hi Underlined ctermfg=167 ctermbg=234 cterm=underline
    hi VertSplit ctermfg=234 ctermbg=234 cterm=NONE
    hi VisualNOS ctermfg=167 ctermbg=234 cterm=bold,underline
    hi WarningMsg ctermfg=167 ctermbg=234 cterm=NONE
    hi WildMenu ctermfg=255 ctermbg=235 cterm=NONE
    hi QuickFixLine ctermbg=235 cterm=bold
    hi markdownBold ctermfg=33 ctermbg=234 cterm=bold
    hi markdownCode ctermfg=166 ctermbg=234 cterm=NONE
    hi markdownCodeDelimiter ctermfg=166 ctermbg=234 cterm=NONE
    hi markdownHeadingDelimiter ctermfg=255 ctermbg=234 cterm=NONE
    hi markdownLink ctermfg=64 ctermbg=234 cterm=NONE
    hi markdownUrl ctermfg=64 ctermbg=234 cterm=NONE
    hi rustAttribute ctermfg=255 ctermbg=234 cterm=NONE
    hi rustCommentLineDoc ctermfg=242 ctermbg=234 cterm=NONE
    hi rustDerive ctermfg=255 ctermbg=234 cterm=NONE
    hi rustIdentifier ctermfg=172 ctermbg=234 cterm=NONE
    hi rustMacro ctermfg=33 ctermbg=234 cterm=NONE
    hi rustModPath ctermfg=255 ctermbg=234 cterm=NONE
    hi rustModPathSep ctermfg=255 ctermbg=234 cterm=NONE
    hi rustPubScopeDelim ctermfg=255 ctermbg=234 cterm=NONE
    hi rustSigil ctermfg=255 ctermbg=234 cterm=NONE
    hi rustString ctermfg=64 ctermbg=234 cterm=NONE
    hi rustFoldBraces ctermfg=255 ctermbg=234 cterm=NONE
  else
    " Light background
    hi Normal ctermfg=234 ctermbg=255 cterm=NONE
    hi Added ctermfg=64 ctermbg=255 cterm=NONE
    hi Boolean ctermfg=166 ctermbg=255 cterm=NONE
    hi Character ctermfg=167 ctermbg=255 cterm=NONE
    hi ColorColumn ctermfg=241 ctermbg=254 cterm=NONE
    hi Comment ctermfg=246 ctermbg=255 cterm=NONE
    hi Conceal ctermfg=33 ctermbg=255 cterm=NONE
    hi Conditional ctermfg=63 ctermbg=255 cterm=NONE
    hi Constant ctermfg=166 ctermbg=255 cterm=NONE
    hi Cursor ctermfg=255 ctermbg=241 cterm=NONE
    hi CursorColumn ctermfg=241 ctermbg=254 cterm=NONE
    hi CursorLine ctermfg=241 ctermbg=254 cterm=NONE
    hi CursorLineNr ctermfg=246 ctermbg=254 cterm=underline
    hi Debug ctermfg=167 ctermbg=255 cterm=NONE
    hi Define ctermfg=63 ctermbg=255 cterm=NONE
    hi Delimiter ctermfg=165 ctermbg=255 cterm=NONE
    hi DiffAdd ctermfg=64 ctermbg=254 cterm=NONE
    hi DiffChange ctermfg=246 ctermbg=254 cterm=NONE
    hi DiffDelete ctermfg=167 ctermbg=254 cterm=NONE
    hi DiffText ctermfg=33 ctermbg=254 cterm=bold
    hi Directory ctermfg=33 ctermbg=255 cterm=NONE
    hi Error ctermfg=255 ctermbg=167 cterm=NONE
    hi ErrorMsg ctermfg=167 ctermbg=255 cterm=NONE
    hi Exception ctermfg=167 ctermbg=255 cterm=NONE
    hi Float ctermfg=166 ctermbg=255 cterm=NONE
    hi FoldColumn ctermfg=31 ctermbg=254 cterm=NONE
    hi Folded ctermfg=246 ctermbg=254 cterm=NONE
    hi Function ctermfg=33 ctermbg=255 cterm=NONE
    hi Identifier ctermfg=167 ctermbg=255 cterm=NONE
    hi Ignore ctermfg=255 ctermbg=255 cterm=NONE
    hi IncSearch ctermfg=254 ctermbg=166 cterm=NONE
    hi Include ctermfg=33 ctermbg=255 cterm=NONE
    hi Keyword ctermfg=63 ctermbg=255 cterm=NONE
    hi Label ctermfg=172 ctermbg=255 cterm=NONE
    hi LineNr ctermfg=247 ctermbg=254 cterm=NONE
    hi LineNrAbove ctermfg=241 ctermbg=255 cterm=NONE
    hi LineNrBelow ctermfg=241 ctermbg=255 cterm=NONE
    hi Macro ctermfg=167 ctermbg=255 cterm=NONE
    hi MatchParen ctermfg=255 ctermbg=246 cterm=NONE
    hi ModeMsg ctermfg=64 ctermbg=255 cterm=bold
    hi MoreMsg ctermfg=64 ctermbg=255 cterm=NONE
    hi NonText ctermfg=246 ctermbg=255 cterm=NONE
    hi Number ctermfg=166 ctermbg=255 cterm=NONE
    hi Operator ctermfg=241 ctermbg=255 cterm=NONE
    hi Pmenu ctermfg=242 ctermbg=254 cterm=NONE
    hi PmenuSel ctermfg=254 ctermbg=242 cterm=NONE
    hi PreProc ctermfg=172 ctermbg=255 cterm=NONE
    hi Question ctermfg=33 ctermbg=255 cterm=NONE
    hi Removed ctermfg=167 ctermbg=255 cterm=NONE
    hi Repeat ctermfg=172 ctermbg=255 cterm=NONE
    hi Search ctermfg=235 ctermbg=172 cterm=NONE
    hi SignColumn ctermfg=246 ctermbg=254 cterm=NONE
    hi Special ctermfg=31 ctermbg=255 cterm=NONE
    hi SpecialChar ctermfg=165 ctermbg=255 cterm=NONE
    hi SpecialKey ctermfg=246 ctermbg=255 cterm=NONE
    hi SpellBad ctermfg=241 ctermbg=255 cterm=undercurl
    hi SpellCap ctermfg=241 ctermbg=255 cterm=undercurl
    hi SpellLocal ctermfg=241 ctermbg=255 cterm=undercurl
    hi SpellRare ctermfg=241 ctermbg=255 cterm=undercurl
    hi Statement ctermfg=167 ctermbg=255 cterm=NONE
    hi StatusLine ctermfg=242 ctermbg=247 cterm=NONE
    hi StatusLineNC ctermfg=246 ctermbg=254 cterm=NONE
    hi StatusLineTerm ctermfg=255 ctermbg=64 cterm=bold
    hi StatusLineTermNC ctermfg=255 ctermbg=64 cterm=NONE
    hi StorageClass ctermfg=172 ctermbg=255 cterm=NONE
    hi String ctermfg=64 ctermbg=255 cterm=NONE
    hi Structure ctermfg=63 ctermbg=255 cterm=NONE
    hi TabLine ctermfg=246 ctermbg=254 cterm=NONE
    hi TabLineFill ctermfg=246 ctermbg=254 cterm=NONE
    hi TabLineSel ctermfg=64 ctermbg=254 cterm=NONE
    hi Tag ctermfg=172 ctermbg=255 cterm=NONE
    hi Title ctermfg=234 ctermbg=255 cterm=bold
    hi Todo ctermfg=172 ctermbg=254 cterm=bold
    hi ToolbarButton ctermfg=255 ctermbg=242 cterm=bold
    hi Type ctermfg=172 ctermbg=255 cterm=NONE
    hi Typedef ctermfg=172 ctermbg=255 cterm=NONE
    hi Underlined ctermfg=167 ctermbg=255 cterm=underline
    hi VertSplit ctermfg=255 ctermbg=255 cterm=NONE
    hi VisualNOS ctermfg=167 ctermbg=255 cterm=bold,underline
    hi WarningMsg ctermfg=167 ctermbg=255 cterm=NONE
    hi WildMenu ctermfg=234 ctermbg=254 cterm=NONE
    hi QuickFixLine ctermbg=254 cterm=bold
    hi markdownBold ctermfg=33 ctermbg=255 cterm=bold
    hi markdownCode ctermfg=166 ctermbg=255 cterm=NONE
    hi markdownCodeDelimiter ctermfg=166 ctermbg=255 cterm=NONE
    hi markdownHeadingDelimiter ctermfg=234 ctermbg=255 cterm=NONE
    hi markdownLink ctermfg=64 ctermbg=255 cterm=NONE
    hi markdownUrl ctermfg=64 ctermbg=255 cterm=NONE
    hi rustAttribute ctermfg=234 ctermbg=255 cterm=NONE
    hi rustCommentLineDoc ctermfg=246 ctermbg=255 cterm=NONE
    hi rustDerive ctermfg=234 ctermbg=255 cterm=NONE
    hi rustIdentifier ctermfg=172 ctermbg=255 cterm=NONE
    hi rustMacro ctermfg=33 ctermbg=255 cterm=NONE
    hi rustModPath ctermfg=234 ctermbg=255 cterm=NONE
    hi rustModPathSep ctermfg=234 ctermbg=255 cterm=NONE
    hi rustPubScopeDelim ctermfg=234 ctermbg=255 cterm=NONE
    hi rustSigil ctermfg=234 ctermbg=255 cterm=NONE
    hi rustString ctermfg=64 ctermbg=255 cterm=NONE
    hi rustFoldBraces ctermfg=234 ctermbg=255 cterm=NONE
  endif
  unlet s:t_Co
  finish
endif

if s:t_Co >= 0
  if &background ==# 'dark'
    hi Normal term=NONE
    hi ColorColumn term=reverse
    hi Conceal term=NONE
    hi Cursor term=reverse
    hi CursorColumn term=NONE
    hi CursorLine term=underline
    hi CursorLineNr term=bold
    hi DiffAdd term=reverse
    hi DiffChange term=NONE
    hi DiffDelete term=reverse
    hi DiffText term=reverse
    hi Directory term=NONE
    hi EndOfBuffer term=NONE
    hi ErrorMsg term=bold,reverse
    hi FoldColumn term=NONE
    hi Folded term=NONE
    hi IncSearch term=bold,reverse,underline
    hi LineNr term=NONE
    hi MatchParen term=bold,underline
    hi ModeMsg term=bold
    hi MoreMsg term=NONE
    hi NonText term=NONE
    hi Pmenu term=reverse
    hi PmenuSbar term=reverse
    hi PmenuSel term=bold
    hi PmenuThumb term=NONE
    hi Question term=standout
    hi Search term=reverse
    hi SignColumn term=reverse
    hi SpecialKey term=bold
    hi SpellBad term=underline
    hi SpellCap term=underline
    hi SpellLocal term=underline
    hi SpellRare term=underline
    hi StatusLine term=bold,reverse
    hi StatusLineNC term=bold,underline
    hi TabLine term=bold,underline
    hi TabLineFill term=NONE
    hi Terminal term=NONE
    hi TabLineSel term=bold,reverse
    hi Title term=NONE
    hi VertSplit term=NONE
    hi Visual term=reverse
    hi VisualNOS term=NONE
    hi WarningMsg term=standout
    hi WildMenu term=bold
    hi CursorIM term=NONE
    hi ToolbarLine term=reverse
    hi ToolbarButton term=bold,reverse
    hi CurSearch term=reverse
    hi CursorLineFold term=underline
    hi CursorLineSign term=underline
    hi Comment term=bold
    hi Constant term=NONE
    hi Error term=bold,reverse
    hi Identifier term=NONE
    hi Ignore term=NONE
    hi PreProc term=NONE
    hi Special term=NONE
    hi Statement term=NONE
    hi Todo term=bold,reverse
    hi Type term=NONE
    hi Underlined term=underline
  else
    " Light background
    hi Normal term=NONE
    hi ColorColumn term=reverse
    hi Conceal term=NONE
    hi Cursor term=reverse
    hi CursorColumn term=NONE
    hi CursorLine term=underline
    hi CursorLineNr term=bold
    hi DiffAdd term=reverse
    hi DiffChange term=NONE
    hi DiffDelete term=reverse
    hi DiffText term=reverse
    hi Directory term=NONE
    hi EndOfBuffer term=NONE
    hi ErrorMsg term=bold,reverse
    hi FoldColumn term=NONE
    hi Folded term=NONE
    hi IncSearch term=bold,reverse,underline
    hi LineNr term=NONE
    hi MatchParen term=bold,underline
    hi ModeMsg term=bold
    hi MoreMsg term=NONE
    hi NonText term=NONE
    hi Pmenu term=reverse
    hi PmenuSbar term=reverse
    hi PmenuSel term=bold
    hi PmenuThumb term=NONE
    hi Question term=standout
    hi Search term=reverse
    hi SignColumn term=reverse
    hi SpecialKey term=bold
    hi SpellBad term=underline
    hi SpellCap term=underline
    hi SpellLocal term=underline
    hi SpellRare term=underline
    hi StatusLine term=bold,reverse
    hi StatusLineNC term=bold,underline
    hi TabLine term=bold,underline
    hi TabLineFill term=NONE
    hi Terminal term=NONE
    hi TabLineSel term=bold,reverse
    hi Title term=NONE
    hi VertSplit term=NONE
    hi Visual term=reverse
    hi VisualNOS term=NONE
    hi WarningMsg term=standout
    hi WildMenu term=bold
    hi CursorIM term=NONE
    hi ToolbarLine term=reverse
    hi ToolbarButton term=bold,reverse
    hi CurSearch term=reverse
    hi CursorLineFold term=underline
    hi CursorLineSign term=underline
    hi Comment term=bold
    hi Constant term=NONE
    hi Error term=bold,reverse
    hi Identifier term=NONE
    hi Ignore term=NONE
    hi PreProc term=NONE
    hi Special term=NONE
    hi Statement term=NONE
    hi Todo term=bold,reverse
    hi Type term=NONE
    hi Underlined term=underline
  endif
  unlet s:t_Co
  finish
endif

" Background: light
" Color:  base00          #1b1918  ~
" Color:  base01          #2c2421  ~
" Color:  base02          #68615e  ~
" Color:  base03          #766e6b  ~
" Color:  base04          #9c9491  ~
" Color:  base05          #a8a19f  ~
" Color:  base06          #e6e2e0  ~
" Color:  base07          #f1efee  ~
" Color:  base08          #f22c3f  ~
" Color:  base09          #df5320  ~
" Color:  base0a          #c38418  ~
" Color:  base0b          #7a9726  ~
" Color:  base0c          #3d97b8  ~
" Color:  base0d          #407ee6  ~
" Color:  base0e          #6666ea  ~
" Color:  base0f          #c340f2  ~
" Color:  orange          #df5320  ~
" Color:  black           #1b1918  ~
" Color:  bright_black    #746c69  ~
" Color:  red             #f22c3f  ~
" Color:  bright_red      #8c1122  ~
" Color:  green           #7a9726  ~
" Color:  bright_green    #3d4919  ~
" Color:  yellow          #c38418  ~
" Color:  bright_yellow   #664115  ~
" Color:  blue            #407ee6  ~
" Color:  bright_blue     #213f78  ~
" Color:  magenta         #c340f2  ~
" Color:  bright_magenta  #662086  ~
" Color:  cyan            #3d97b8  ~
" Color:  bright_cyan     #264858  ~
" Color:  white           #f1efee  ~
" Color:  bright_white    #f1efee  ~
" Term colors: black red green yellow blue magenta cyan white
" Term colors: bright_black bright_red bright_green bright_yellow bright_blue bright_magenta bright_cyan bright_white
" Background: dark
" Color:  base00          #f1efee  ~
" Color:  base01          #e6e2e0  ~
" Color:  base02          #a8a19f  ~
" Color:  base03          #9c9491  ~
" Color:  base04          #766e6b  ~
" Color:  base05          #68615e  ~
" Color:  base06          #2c2421  ~
" Color:  base07          #1b1918  ~
" Color:  base08          #f22c3f  ~
" Color:  base09          #df5320  ~
" Color:  base0a          #c38418  ~
" Color:  base0b          #7a9726  ~
" Color:  base0c          #3d97b8  ~
" Color:  base0d          #407ee6  ~
" Color:  base0e          #6666ea  ~
" Color:  base0f          #c340f2  ~
" Color:  orange          #df5320  ~
" Color:  black           #1b1918  ~
" Color:  bright_black    #746c69  ~
" Color:  red             #f22c3f  ~
" Color:  bright_red      #8c1122  ~
" Color:  green           #7a9726  ~
" Color:  bright_green    #3d4919  ~
" Color:  yellow          #c38418  ~
" Color:  bright_yellow   #664115  ~
" Color:  blue            #407ee6  ~
" Color:  bright_blue     #213f78  ~
" Color:  magenta         #c340f2  ~
" Color:  bright_magenta  #662086  ~
" Color:  cyan            #3d97b8  ~
" Color:  bright_cyan     #264858  ~
" Color:  white           #f1efee  ~
" Color:  bright_white    #f1efee  ~
" Term colors: black red green yellow blue magenta cyan white
" Term colors: bright_black bright_red bright_green bright_yellow bright_blue bright_magenta bright_cyan bright_white
" vim: et ts=8 sw=2 sts=2
