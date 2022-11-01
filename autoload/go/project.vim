let s:templatePath = expand('<sfile>:p:h') . "/template"

function! go#project#Make()
  let l:projectPath = utils#GetProjectDir()
  if l:projectPath == -1
    return
  endif

  let l:moduleName = utils#GetGoModule()
  if l:moduleName == -1
    return
  endif

  call utils#CopyTemplate(s:templatePath, l:projectPath)
  execute "cd " . l:projectPath
  call system("go mod init " . l:moduleName)
  echo "\nProject created!"
endfunction

