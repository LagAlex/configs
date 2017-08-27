XPTemplate priority=personal

let s:f = g:XPTfuncs()

function! s:f.getFilename(...)
    return expand('%')
endfunction

function! GetNSFNameDefine()
    let dir = expand('%:p:h')
    let ext = toupper(expand('%:e'))
    let idx = stridx(dir, 'include')
    if idx != -1
        let subdir = strpart(dir, idx + strlen('include') + 1)
        let define = substitute(subdir, '/', '_', 'g')
        let define = define ."_".expand('%:t:r')."_" . ext
        let define = toupper(define)
        let define = substitute(define, '^_\+', '', '')
        return define
    else
        return toupper(expand('%:t:r'))."_" . ext
    endif
endfunction

function! s:f.getNamespaceFilenameDefine(...)
    return GetNSFNameDefine()
endfunction

XPT bp
/*
 * `getFilename()^
 *
 * Created by `$author^ | `$email^
 * `date()^
*/

XPT hg
#ifndef `getNamespaceFilenameDefine()^
#define `getNamespaceFilenameDefine()^

`cursor^

#endif // `getNamespaceFilenameDefine()^

