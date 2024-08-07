return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
  opts={
    filesystem = {
    filtered_items = {
        visible = true,  hide_dotfiles = false,
      hide_gitignored = true,
      }
    }
  },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    },
  config = function()
    vim.keymap.set('n', '<C-e>', ':Neotree filesystem reveal right<CR>', {})
    vim.keymap.set('n', '<leader>e', ':Neotree close <CR>', {})
  end
  }
