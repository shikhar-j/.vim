"----------------------------------------
"my functions
"----------------------------------------

"update all vim plugins
function! UpdatePlugins()
  execute "!(cd ~/.vim; git submodule foreach git pull origin master; git commit -am 'Updating vim plugins'; git push;)"
endfunction

"install new plugins by providing github repo url
function! InstallPlugin(url)
  execute "!(cd ~/.vim/bundle/; git submodule add " . a:url . "; git commit -am 'Installing " . a:url . "'; git push;)"  
endfunction

"uninstall a plugin
function! UninstallPlugin(name)
  execute "!(cd ~/.vim/bundle; git submodule deinit " . a:name . "; git rm " . a:name . "; rm -rf " . a:name . ")"
  execute "!(cd ~/.vim/bundle; git commit -am 'Uninstalling " . a:name . "'; git push;)"
endfunction

command! UpdatePlugins call UpdatePlugins()
command! -nargs=1 InstallPlugin call InstallPlugin("<args>")
command! -nargs=1 UninstallPlugin call UninstallPlugin("<args>")

"----------------------------------------
"third party functions
"----------------------------------------
"
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

noremap <leader>w :call DeleteTrailingWS()<CR>
autocmd BufWrite *.* :call DeleteTrailingWS()
