return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    local barbar = require("barbar")

    barbar.setup({
      clickable = true, -- Enables/disables clickable tabs
      tabpages = false, -- Enable/disables current/total tabpages indicator (top right corner)
      insert_at_end = true,
      icons = {
        button = "",
        buffer_index = true,
        filetype = { enabled = true },
        visible = { modified = { buffer_number = false } },
        gitsigns = {
          added = { enabled = true, icon = "+" },
          changed = { enabled = true, icon = "~" },
          deleted = { enabled = true, icon = "-" },
        },
      },
    })
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    -- Move to previous/next
    map("n", "<S-H>", "<Cmd>BufferPrevious<CR>", opts)
    map("n", "<S-L>", "<Cmd>BufferNext<CR>", opts)
    map("n", "<leader>w", "<Cmd>BufferClose<CR>", opts)
    map("n", "<leader>W", "<Cmd>BufferRestore<CR>", opts)
  end,
}
