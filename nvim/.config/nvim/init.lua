--  ________      ________       ________
-- |\  _____\    |\   ___  \    |\   ____\
-- \ \  \__/     \ \  \\ \  \   \ \  \___|          Fabricio Nicolas Casco
--  \ \   __\     \ \  \\ \  \   \ \  \             Full-stack developer
--   \ \  \_|      \ \  \\ \  \   \ \  \____        https://github.com/ncasco
--    \ \__\        \ \__\\ \__\   \ \_______\
--     \|__|         \|__| \|__|    \|_______|
--
-- patorjk.com/software/taag/

print("Hola")

require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Highlight when yanking text
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
	vim.highlight.on_yank()
    end,
})
