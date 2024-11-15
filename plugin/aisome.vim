" plugin/llama_nvim.vim
if exists('g:loaded_aisome')
    finish
endif
let g:loaded_aisome = 1

" Initialize Lua setup function
lua require('aisome').setup()

