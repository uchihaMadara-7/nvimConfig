-- Filter function to show only errors
local function filter_diagnostics(diagnostic)
    return diagnostic.severity == vim.diagnostic.severity.ERROR
end

-- show only error diagnostic
local function disable_diag()
    local cwd = vim.fn.getcwd()
    local dir = "/Users/shubhamr/cp/"
    if string.find(cwd, dir) then
        -- Toggle_diagnostics()
        -- Custom handler to filter out non-error diagnostics
        local original_handler = vim.diagnostic.handlers.virtual_text
        vim.diagnostic.handlers.virtual_text = {
            show = function(namespace, bufnr, diagnostics, opts)
                local filtered_diagnostics = vim.tbl_filter(filter_diagnostics, diagnostics)
                original_handler.show(namespace, bufnr, filtered_diagnostics, opts)
            end,
            hide = original_handler.hide,
        }
    end
end

-- invoke disable diagnostic
disable_diag()

-- toggle diagnostic levels
local function toggle_diag()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled())
    if vim.diagnostic.is_enabled() then
        vim.notify("Diagnostic turned ON!", vim.log.levels.INFO)
    else
        vim.notify("Diagnostic turned OFF!", vim.log.levels.INFO)
    end
end

vim.keymap.set("n", "<leader>xd", toggle_diag, { noremap = true, silent = true, desc = "Toggle vim diagnostics" })
