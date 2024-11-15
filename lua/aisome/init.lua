local aisome = require("aisome.client")

local function setup()
    vim.api.nvim_command(" command! AiSuggest lua require('aisome.client').request_suggestions()")
end

return {
    setup = setup,
}

