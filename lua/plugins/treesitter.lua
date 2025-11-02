return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = {
		enable = true,
	    },
	    indent = { enable = true },
	    autotage = { enable = true },
        autopairs = {enable = true },
	    ensure_installed = {
		"lua",
		"c",
		"cpp",
		"java",
		"javascript",
		"html",
		"css",
		"go",
		"python",
		"bash",
	    },
	    auto_install = false,
	})
    end
}
