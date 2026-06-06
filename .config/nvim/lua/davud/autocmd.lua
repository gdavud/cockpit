--  See `:help lua-guide-autocommands`

vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp", "h", "c" },
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "md", "txt" },
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end,
})

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
