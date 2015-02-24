function! UpdatePlugins()
  execute "!(cd ~/.vim; git submodule foreach git pull origin master)"
endfunction

command! UpdatePlugins call UpdatePlugins()
