vim9script

import autoload 'popup.vim'

export def Buffer()
    var buffer_list = getbufinfo({'buflisted': 1})->mapnew((_, v) => {
	return {bufnr: v.bufnr, text: (v.name ?? $'[{v.bufnr}: No Name]'), lastused: v.lastused}
    })->sort((i, j) => i.lastused > j.lastused ? -1 : i.lastused == j.lastused ? 0 : 1)
    if buffer_list->len() > 1 && buffer_list[0].bufnr == bufnr()
	[buffer_list[0], buffer_list[1]] = [buffer_list[1], buffer_list[0]]
    endif
    popup.FilterMenu("Buffers", buffer_list,
	(res, key) => {
	    if key == "\<c-t>"
		exe $":tab sb {res.bufnr}"
	    elseif key == "\<c-j>"
		exe $":sb {res.bufnr}"
	    elseif key == "\<c-v>"
		exe $":vert sb {res.bufnr}"
	    else
		exe $":b {res.bufnr}"
	    endif
	},
(winid) => {
    win_execute(winid, "syn match FilterMenuDirectorySubtle '^.*[\/]'")
    hi def link FilterMenuDirectorySubtle Comment
})
enddef

export def FileTree(path: string = "")
    var opath = isdirectory(expand(path)) ? path : getcwd()

    # XXX: find a better solution, it surely exists.
    exe $"lcd {opath}"

    def Tree(dir: string): list<string>
	var ignore_dirs = [".git", ".hg", ".bundle"]
	var result = readdirex(dir, (v) => v.type =~ 'file\|link$')->mapnew((_, f) => f.name)
	var dirs = readdirex(dir, (v) => v.type =~ 'dir\|linkd\|junction' && ignore_dirs->index(v.name) == -1)->mapnew((_, f) => f.name)
	while !empty(dirs) && result->len() < 10000 && dirs->len() < 200
	    var next_dir = dirs->remove(0)
	    result += readdirex(next_dir, (v) => v.type =~ 'file\|link$')->mapnew((_, f) => $"{next_dir}/{f.name}")
	    dirs += readdirex(next_dir, (v) => v.type =~ 'dir\|linkd\|junction' && ignore_dirs->index(v.name) == -1)->mapnew((_, f) => $"{next_dir}/{f.name}")
	endwhile
	return result
    enddef
    var files = []
    if executable('fd')
	files = systemlist('fd --path-separator / --type f --hidden --follow --exclude .git')
    elseif executable('rg')
	files = systemlist('rg --path-separator / --files --hidden --glob !.git')
    else
	files = Tree(opath)
    endif
    popup.FilterMenu("File", files,
	(res, key) => {
	    if key == "\<c-t>"
		exe $":tab e {res.text}"
	    elseif key == "\<c-j>"
		exe $":split {res.text}"
	    elseif key == "\<c-v>"
		exe $":vert split {res.text}"
	    else
		exe $":e {res.text}"
	    endif
	},
	(winid) => {
	    win_execute(winid, "syn match FilterMenuDirectorySubtle '^.*[\/]'")
	    hi def link FilterMenuDirectorySubtle Comment
	})
enddef

export def GitFile(path: string = "")
    if !empty(path)
	exe $"lcd {path}"
    endif
    popup.FilterMenu("Git File", systemlist('git ls-files'),
	(res, key) => {
	    if key == "\<c-t>"
		exe $":tab e {res.text}"
	    elseif key == "\<c-j>"
		exe $":split {res.text}"
	    elseif key == "\<c-v>"
		exe $":vert split {res.text}"
	    else
		exe $":e {res.text}"
	    endif
	},
(winid) => {
    win_execute(winid, "syn match FilterMenuDirectorySubtle '^.*[\/]'")
    hi def link FilterMenuDirectorySubtle Comment
})
enddef
