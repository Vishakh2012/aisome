local aisome = require("aisome.client")

local function setup()
    vim.api.nvim_command(" command! AiSuggest lua aisome.request_suggestions()")
    vim.cmd("terminal cd ../python && fastapi run")
end

return {
    setup = setup,
}

