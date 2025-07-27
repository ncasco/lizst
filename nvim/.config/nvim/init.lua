--  ________      ________       ________
-- |\  _____\    |\   ___  \    |\   ____\
-- \ \  \__/     \ \  \\ \  \   \ \  \___|          Fabricio Nicolas Casco
--  \ \   __\     \ \  \\ \  \   \ \  \             Full-stack developer
--   \ \  \_|      \ \  \\ \  \   \ \  \____        https://github.com/ncasco
--    \ \__\        \ \__\\ \__\   \ \_______\
--     \|__|         \|__| \|__|    \|_______|
--
-- patorjk.com/software/taag/

require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

vim.keymap.set("n", "-", "<cmd>Oil<CR>")

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

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-terminal-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 10)
  --job_id = vim.bo.channel
end)

--[[
vim.set.keymap("n", "<space>example", function()
  vim.fn.chansend(job_id, { "ls -al\r\n" })
end)
--]]
