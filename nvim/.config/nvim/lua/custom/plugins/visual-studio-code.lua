return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- 'folke/tokyonight.nvim',
    'askfiy/visual_studio_code',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      --   ---@diagnostic disable-next-line: missing-fields
      --   require('visual_studio_code').setup {
      --     -- require('tokyonight').setup {
      --     -- styles = {
      --     -- comments = { italic = false }, -- Disable italics in comments
      --   }
      require('visual_studio_code').setup {
        -- `dark` or `light`
        mode = 'dark',
        -- Whether to load all color schemes
        preset = true,
        -- Whether to enable background transparency
        transparent = false,
        -- Whether to apply the adapted plugin
        expands = {
          hop = true,
          dbui = true,
          lazy = true,
          aerial = true,
          null_ls = true,
          nvim_cmp = true,
          gitsigns = true,
          which_key = true,
          nvim_tree = true,
          lspconfig = true,
          telescope = true,
          bufferline = true,
          nvim_navic = true,
          nvim_notify = true,
          vim_illuminate = true,
          nvim_treesitter = true,
          nvim_ts_rainbow = true,
          nvim_scrollview = true,
          nvim_ts_rainbow2 = true,
          indent_blankline = true,
          vim_visual_multi = true,
        },
        hooks = {
          before = function(conf, colors, utils) end,
          after = function(conf, colors, utils) end,
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-storm'
      vim.cmd.colorscheme 'visual_studio_code'
    end,
  }
}
