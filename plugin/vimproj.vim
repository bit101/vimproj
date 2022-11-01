if exists("g:loaded_vimproj")
    finish
endif
let g:loaded_vimproj = 1

let g:vimproj_go_module_prefix = "github.com/bit101/"

function s:VpMake()
  let choices = []
  call add(choices, "&Go")
  call add(choices, "&BLGG")
  call add(choices, "&Node")
  call add(choices, "&Web")
  call add(choices, "&Cancel")
  let choice = confirm("Project type: ", join(choices, "\n"), len(choices))
  if choice == 1
    call go#project#Make()
  elseif choice == 2
    call blgg#project#Make()
  elseif choice == 3 
    call node#project#Make()
  elseif choice == 4 
    call web#project#Make()
  endif
endfunction

command! -nargs=0 VpMake call s:VpMake()
