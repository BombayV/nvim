return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    icons = false
  },
  config = function()
    local trouble = require("trouble")
    
    vim.keymap.set("n", "<leader>tt", function()
      trouble.toggle()
    end)
    
    vim.keymap.set("n", "[t", function()
      trouble.next({skip_groups = true, jump = true});
    end)
    
    vim.keymap.set("n", "]t", function()
      trouble.previous({skip_groups = true, jump = true});
    end)
  end
}
