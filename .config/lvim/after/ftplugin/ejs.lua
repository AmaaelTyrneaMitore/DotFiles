-- vim.api.nvim_command([[au BufNewFile,BufRead *.ejs set filetype=html]])
-- vim.api.nvim_create_autocmd("BufNewFile,BufRead", {
--   pattern = { "*.ejs" },
--   command = "set filetype=html"
-- })
vim.cmd([[set filetype=html]])
