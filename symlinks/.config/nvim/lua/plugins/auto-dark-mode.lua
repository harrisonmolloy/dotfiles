return {
	"f-person/auto-dark-mode.nvim",
	opts = {
		set_dark_mode = function()
			vim.cmd("colorscheme github_dark_dimmed")
			vim.cmd("highlight Normal guibg=none")
			vim.cmd("highlight NonText guibg=none")
			vim.cmd("highlight Normal ctermbg=none")
			vim.cmd("highlight NonText ctermbg=none")
		end,
		set_light_mode = function()
			vim.cmd("colorscheme github_light_default")
			vim.cmd("highlight Normal guibg=none")
			vim.cmd("highlight NonText guibg=none")
			vim.cmd("highlight Normal ctermbg=none")
			vim.cmd("highlight NonText ctermbg=none")
		end,
		update_interval = 3000,
		fallback = "dark",
	},
}
