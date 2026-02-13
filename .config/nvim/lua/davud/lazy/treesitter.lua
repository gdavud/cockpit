return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.config", -- Sets main module to use for opts
	-- See `:help nvim-treesitter`
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"diff",
			"markdown",
			"markdown_inline",
		},
		auto_install = false,
		highlight = {
			enable = true,
		},
	},
}
