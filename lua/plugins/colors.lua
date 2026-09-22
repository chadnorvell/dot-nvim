local function load_nordic()
  local nordic = require("nordic")
  vim.o.background = "dark"
  nordic.load()
end

return {
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      load_nordic()
    end,
    keys = {
      {
        "<leader>ucn",
        load_nordic,
        desc = "nordic",
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    keys = {
      {
        "<leader>ucc",
        "<cmd>colorscheme catppuccin-latte<cr>",
        desc = "catppuccin latte",
      },
    },
  },
  {
    "daschw/leaf.nvim",
    priority = 1000,
    keys = {
      {
        "<leader>ucl",
        function()
          vim.o.background = "light"
          vim.cmd("colorscheme leaf")
        end,
        desc = "leaf",
      },
    },
  },
}
