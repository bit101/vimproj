function! utils#GetProjectDir()
  let l:cwd = getcwd() . "/"
  let l:proj_path = input("Project directory: ", cwd, "dir")
  if filereadable(l:proj_path) || isdirectory(l:proj_path)
    echo "\n"
    echohl WarningMsg
    echo "Project directory already exists."
    echohl None
    return -1
  endif
  return l:proj_path
endfunction

function! utils#GetGoModule()
  let l:module_name = input("Module name: ", "github.com/bit101/")
  if l:module_name == g:vimproj_go_module_prefix
    echo "\n"
    echohl WarningMsg
    echomsg "No module name entered."
    echohl None
    return -1
  endif
  return l:module_name
endfunction

function! utils#CopyTemplate(templatePath, projectPath)
  call system(join(["cp -r", a:templatePath, a:projectPath], " "))
endfunction
