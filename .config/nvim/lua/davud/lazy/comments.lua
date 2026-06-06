return {
	"numToStr/Comment.nvim",
	dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	config = function()
		require("Comment").setup({
			pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
		})
		vim.keymap.set("v", "<C-_>", function()
			require("Comment.api").toggle.linewise(vim.fn.visualmode())
		end, { noremap = true, silent = true })
	end,
}
