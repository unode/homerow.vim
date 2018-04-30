" homerow.vim
" Homerow:     Bindings to quickly change homerow movement
" Maintainer:  The Internet
" License:     MIT

if exists("g:loaded_homerow")
    finish
endif
let g:loaded_homerow = 1

"" homerow#JKLsemi - jkl; instead of hjkl {{{
function homerow#JKLsemi()
    :call homerow#JKLsemiMove()
    :call homerow#JKLsemiWindow()
    :call homerow#JKLsemiWindowAlt()
    :call homerow#JKLsemiWindowAltTerm()
    :call homerow#JKLsemiLine()
    :call homerow#JKLsemiWrapLine()
    :call homerow#JKLsemiQuickStartEnd()
endfunction

function homerow#JKLsemiMove()
    " Remap vim default movement keys to fit home-row ergonomics
    " hjkl -> jkl;  and the action of ; is now on h
    noremap h ;
    noremap ; l
    noremap l k
    noremap k j
    noremap j h
endfunction

function homerow#JKLsemiWindow()
    nnoremap <C-w>h <C-w>;
    nnoremap <C-w>; <C-w>l
    nnoremap <C-w>l <C-w>k
    nnoremap <C-w>k <C-w>j
    nnoremap <C-w>j <C-w>h
endfunction

function homerow#JKLsemiWindowAlt()
    nnoremap <A-h> <C-w>;
    nnoremap <A-;> <C-w>l
    nnoremap <A-l> <C-w>k
    nnoremap <A-k> <C-w>j
    nnoremap <A-j> <C-w>h
endfunction

function homerow#JKLsemiWindowAltTerm()
    tnoremap <A-h> <C-\><C-n><C-w>;
    tnoremap <A-j> <C-\><C-n><C-w>h
    tnoremap <A-k> <C-\><C-n><C-w>j
    tnoremap <A-l> <C-\><C-n><C-w>k
    tnoremap <A-;> <C-\><C-n><C-w>l
endfunction

function homerow#JKLsemiLayout()
    nnoremap <C-w>H <C-w>:
    nnoremap <C-w>: <C-w>L
    nnoremap <C-w>L <C-w>K
    nnoremap <C-w>K <C-w>J
    nnoremap <C-w>J <C-w>H
endfunction

function homerow#JKLsemiLine()
    nnoremap gl gk
    nnoremap gk gj
    nnoremap gj gl
endfunction

function homerow#JKLsemiWrapLine()
    nnoremap k gj
    nnoremap l gk
    nnoremap gk j
    nnoremap gl k
endfunction

function homerow#JKLsemiQuickStartEnd()
    map K ^
    map L $
endfunction
"" }}}
"" homerow#Default - default hjkl movement {{{
function homerow#Default()
    :call homerow#DefaultMove()
    :call homerow#DefaultWindow()
    :call homerow#DefaultWindowAlt()
    :call homerow#DefaultWindowAltTerm()
    :call homerow#DefaultLine()
    :call homerow#DefaultWrapLine()
    :call homerow#DefaultQuickStartEnd()
endfunction

function homerow#DefaultMove()
    noremap h h
    noremap ; ;
    noremap l l
    noremap k k
    noremap j j
endfunction

function homerow#DefaultWindow()
    nnoremap <C-w>h <C-w>h
    nnoremap <C-w>; <C-w>;
    nnoremap <C-w>l <C-w>l
    nnoremap <C-w>k <C-w>k
    nnoremap <C-w>j <C-w>j
endfunction

function homerow#DefaultWindowAlt()
    nnoremap <A-h> <C-w>h
    nnoremap <A-;> <C-w>;
    nnoremap <A-l> <C-w>l
    nnoremap <A-k> <C-w>k
    nnoremap <A-j> <C-w>j
endfunction

function homerow#DefaultWindowAltTerm()
    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l
    tnoremap <A-;> <C-\><C-n><C-w>;
endfunction

function homerow#DefaultLayout()
    nnoremap <C-w>H <C-w>H
    nnoremap <C-w>: <C-w>:
    nnoremap <C-w>L <C-w>L
    nnoremap <C-w>K <C-w>K
    nnoremap <C-w>J <C-w>J
endfunction

function homerow#DefaultLine()
    nnoremap gh gh
    nnoremap gl gl
    nnoremap gk gk
    nnoremap gj gj
endfunction

function homerow#DefaultWrapLine()
    nnoremap k k
    nnoremap l l
    nnoremap gk gk
    nnoremap gl gl
endfunction

function homerow#DefaultQuickStartEnd()
    map K K
    map L L
endfunction
"" }}}
"" homerow#Unset - reset to vim's defaults {{{
function homerow#Unset()
    :call homerow#UnsetMove()
    :call homerow#UnsetWindow()
    :call homerow#UnsetWindowAlt()
    :call homerow#UnsetWindowAltTerm()
    :call homerow#UnsetLine()
    :call homerow#UnsetWrapLine()
    :call homerow#UnsetQuickStartEnd()
endfunction

function homerow#UnsetMove()
    " Remap vim default movement keys to fit home-row ergonomics
    " hjkl -> jkl;  and the action of ; is now on h
    silent! nunmap ;
    silent! nunmap l
    silent! nunmap k
    silent! nunmap j
    silent! nunmap h
endfunction

function homerow#UnsetWindow()
    " remap <C-w>hjkl to <C-w>jkl;
    silent! nunmap <C-w>;
    silent! nunmap <C-w>l
    silent! nunmap <C-w>k
    silent! nunmap <C-w>j
    silent! nunmap <C-w>h
endfunction

function homerow#UnsetWindowAlt()
    silent! nunmap <A-h>
    silent! nunmap <A-;>
    silent! nunmap <A-l>
    silent! nunmap <A-k>
    silent! nunmap <A-j>
endfunction

function homerow#UnsetWindowAltTerm()
    silent! tunmap <A-h>
    silent! tunmap <A-j>
    silent! tunmap <A-k>
    silent! tunmap <A-l>
    silent! tunmap <A-;>
endfunction

function homerow#UnsetLayout()
    silent! nunmap <C-w>:
    silent! nunmap <C-w>L
    silent! nunmap <C-w>K
    silent! nunmap <C-w>J
    silent! nunmap <C-w>H
endfunction

function homerow#UnsetLine()
    silent! nunmap gh
    silent! nunmap gl
    silent! nunmap gk
    silent! nunmap gj
endfunction

function homerow#UnsetWrapLine()
    silent! nunmap k
    silent! nunmap l
    silent! nunmap gk
    silent! nunmap gl
endfunction

function homerow#UnsetQuickStartEnd()
    silent! unmap K
    silent! unmap L
    silent! unmap H
endfunction
"" }}}

"" homerow#Mini - Minimal settings in addition to defaults {{{
function homerow#MiniWrapLine()
    nnoremap k gk
    nnoremap j gj
    nnoremap gk k
    nnoremap gj j
endfunction

function homerow#MiniQuickStartEnd()
    map H ^
    map L $
endfunction
"" }}}

"" homerow# - miscellaneous functions {{{
function homerow#NoArrows()
    noremap <Up> <NOP>
    noremap <Down> <NOP>
    noremap <Left> <NOP>
    noremap <Right> <NOP>
endfunction

function homerow#NoHJKL()
    noremap <h> <NOP>
    noremap <j> <NOP>
    noremap <k> <NOP>
    noremap <l> <NOP>
endfunction
"" }}}
