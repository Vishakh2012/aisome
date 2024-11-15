local M = {}

function M.request_suggestions()
    local line = vim.api.nvim_get_current_line()
    local suggestions = vim.fn['getcompletions'](line)
    vim.api.nvim_buf_set_extmark(0, 0, 0, 0, {
        virt_text = { { table.concat(suggestions, " "), "Comment" } },
        virt_text_pos = "eol",
        virt_text_win_col = 0,
    })
end

return M
