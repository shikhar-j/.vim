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

command! UpdatePlugins call UpdatePlugins()
command! -nargs=1 InstallPlugin call InstallPlugin("<args>")

"----------------------------------------
"third party functions
"----------------------------------------

