local ai_suggest = require("ai_suggest.client")

local function setup()
    vim.api.nvim_command(" command! AiSuggest lua require('ai_suggest.client').request_suggestions()")
end

return {
    setup = setup,
}

