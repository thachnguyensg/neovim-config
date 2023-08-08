-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'file_browser')
vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>ngf', builtin.git_files, { desc = "Git Files" })
vim.keymap.set('n', '<leader>ngs', builtin.git_status, { desc = "Git Status" })

--file_browser
vim.api.nvim_set_keymap(
    "n",
    "<space>nb",
    ":Telescope file_browser<CR>",
    { noremap = true }
)
-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
    "n",
    "<space>nB",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { noremap = true }
)
