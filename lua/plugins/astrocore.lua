-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      minifiles = {
        {
          event = "User",
          pattern = "MiniFilesWindowUpdate",
          callback = function(args) vim.wo[args.data.win_id].number = true end,
        },
      },
    },
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      i = {
        ["C-k"] = { "<Up>" },
        ["C-j"] = { "<Down>" },
        ["C-h"] = { "<Left>" },
        ["C-l"] = { "<Right>" },
      },
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        ["<Leader>td"] = {
          function() require("astrocore").toggle_term_cmd "lazydocker" end,
          desc = "LazyDocker",
        },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },

        -- Overseer shortcuts
        ["<Leader>to"] = { ":OverseerToggle right<CR>", desc = "Overseer Toggle" },
        ["<Leader>tr"] = { ":OverseerRun<CR>", desc = "Overseer Run" },
        ["<Leader>tt"] = { ":OverseerTaskAction<CR>", desc = "Overseer Quick Action" },
        ["<Leader>te"] = { function() require("astrocore").toggle_term_cmd "iex -S mix" end, desc = "IEx" },
        ["<Leader>E"] = {
          function() require("mini.files").open(vim.api.nvim_buf_get_name(0)) end,
          desc = "Open current directory in mini files",
        },
        -- ["<Leader>ff"] = { ":Telescope frecency workspace=CWD<CR>", desc = "Recent history" },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        ["<C-u>"] = { "<C-u>zz", noremap = true },
        ["<C-d>"] = { "<C-d>zz", noremap = true },
        ["J"] = { "4j" },
        ["K"] = { "4k" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
