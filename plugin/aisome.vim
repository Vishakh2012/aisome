" plugin/llama_nvim.vim
if exists('g:loaded_ai_nvim')
    finish
endif
let g:loaded_ai_nvim = 1

" Initialize Lua setup function
lua require('ai_nvim').setup()

