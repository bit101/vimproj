let s:templatePath = expand('<sfile>:p:h') . "/template"

function! web#project#Make()
  let l:projectPath = utils#GetProjectDir()
  if l:projectPath == -1
    return
  endif

  call utils#CopyTemplate(s:templatePath, l:projectPath)

  execute "cd " . l:projectPath
  execute "edit index.js"
  execute "edit index.html"
  echo "\nProject created!"
endfunction
