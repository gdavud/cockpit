return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = {
					italic = false,
					bold = false,
				},
			})

			vim.cmd.colorscheme("rose-pine")

			local function force_black()
				local black = "#000000"
				local dark = "#121212"
				local sel = "#303030"

				local groups = {
					"Normal",
					"NormalNC",
					"NormalFloat",
					"FloatBorder",
					"SignColumn",
					"LineNr",

					"TelescopeNormal",
					"TelescopeBorder",
					"TelescopePromptNormal",
					"TelescopePromptBorder",
					"TelescopeResultsNormal",
					"TelescopeResultsBorder",
					"TelescopePreviewNormal",
					"TelescopePreviewBorder",
				}

				for _, group in ipairs(groups) do
					vim.api.nvim_set_hl(0, group, { bg = black })
				end

				vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = sel })
				vim.api.nvim_set_hl(0, "Visual", { bg = sel })
				vim.api.nvim_set_hl(0, "CursorLine", { bg = dark })

				local no_bold = {
					"Statement",
					"Keyword",
					"Conditional",
					"Repeat",
					"Number",
					"Constant",

					"@keyword",
					"@keyword.return",
					"@keyword.return.lua",
					"@number",
					"@number.lua",
					"@constant",
					"@constant.lua",
				}

				for _, group in ipairs(no_bold) do
					vim.api.nvim_set_hl(0, group, { bold = false })
				end
			end

			force_black()

			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "*",
				callback = force_black,
			})
		end,
	},

	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			signs = false,
		},
	},
}
