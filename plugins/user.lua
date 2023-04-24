return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin"
  },
  {
      "nvim-neorg/neorg",
      event = "BufRead",
      build = ":Neorg sync-parsers",
      opts = {
          load = {
              ["core.defaults"] = {}, -- Loads default behaviour
              ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
              ["core.norg.dirman"] = { -- Manages Neorg workspaces
                  config = {
                      workspaces = {
                          notes = "~/notes",
                      },
                  },
              },
          },
      },
      dependencies = { { "nvim-lua/plenary.nvim" } },
  }
}
