return 
{
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local npairs = require("nvim-autopairs")
    npairs.setup({
      check_ts = true, -- enable Treesitter integration
      fast_wrap = {},
      disable_filetype = { "TelescopePrompt", "vim" },
    })
  end,
}

