
" The VimL/VimScript code is included in this sample plugin to demonstrate the
" two different approaches but it is not required you use VimL. Feel free to
" delete this code and proceed without it.

echo "Starting the example Python Plugin"

function LookupFuncLoc()
  let wordUnderCursor = expand("<cword>")
  if match(wordUnderCursor, '^func_0x\(a-f0-9\)') >= 0
    let loc = '>1'
    let file_name = join(['0x', loc, '.c'],'')
    e file_name
  endif

endfunction
