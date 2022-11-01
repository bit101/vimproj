let s:templatePath = expand('<sfile>:p:h') . "/template"

function! node#project#Make()
  let l:projectPath = utils#GetProjectDir()
  if l:projectPath == -1
    return
  endif

  call utils#CopyTemplate(s:templatePath, l:projectPath)

  execute "cd " . l:projectPath
  call system("npm init -y > /dev/null")
  echo "\nProject created!"
endfunction
