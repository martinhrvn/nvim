-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  { "ThePrimeagen/vim-be-good", lazy = false },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "User AstroFile",
    opts = { suggestion = { auto_trigger = true, debounce = 150 } },
  },
  {
    "natecraddock/workspaces.nvim",
    config = function() require("workspaces").setup() end,
  },

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  { "echasnovski/mini.sessions", config = function() require("mini.sessions").setup() end },
  { "echasnovski/mini.ai", config = function() require("mini.ai").setup { custom_textobjects = { t = false } } end },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
      require("luasnip/loaders/from_vscode").load()
    end,
  },

  -- {
  --   "ibhagwan/fzf-lua",
  --   cmd = "FzfLua",
  --   specs = {
  --     {
  --       "AstroNvim/astrolsp",
  --       optional = true,
  --       opts = function(_, opts)
  --         if require("astrocore").is_available "fzf-lua" then
  --           local maps = opts.mappings
  --           maps.n["<Leader>lD"] =
  --             { function() require("fzf-lua").diagnostics_document() end, desc = "Search diagnostics" }
  --           if maps.n.gd then maps.n.gd[1] = function() require("fzf-lua").lsp_definitions() end end
  --           if maps.n.gI then maps.n.gI[1] = function() require("fzf-lua").lsp_implementations() end end
  --           if maps.n["<Leader>lR"] then
  --             maps.n["<Leader>lR"][1] = function() require("fzf-lua").lsp_references() end
  --           end
  --           if maps.n.gy then maps.n.gy[1] = function() require("fzf-lua").lsp_typedefs() end end
  --           if maps.n["<Leader>lG"] then
  --             maps.n["<Leader>lG"][1] = function() require("fzf-lua").lsp_workspace_symbols() end
  --           end
  --         end
  --       end,
  --     },
  --   },
  --   dependencies = {
  --     {
  --       "AstroNvim/astrocore",
  --       opts = function(_, opts)
  --         local maps = opts.mappings
  --         maps.n["<Leader>f"] = vim.tbl_get(opts, "_map_sections", "f")
  --         if vim.fn.executable "git" == 1 then
  --           maps.n["<Leader>g"] = vim.tbl_get(opts, "_map_sections", "g")
  --           maps.n["<Leader>gb"] = { function() require("fzf-lua").git_branches() end, desc = "Git branches" }
  --           maps.n["<Leader>gc"] =
  --             { function() require("fzf-lua").git_commits() end, desc = "Git commits (repository)" }
  --           maps.n["<Leader>gC"] =
  --             { function() require("fzf-lua").git_bcommits() end, desc = "Git commits (current file)" }
  --           maps.n["<Leader>gt"] = { function() require("fzf-lua").git_status() end, desc = "Git status" }
  --         end
  --         maps.n["<Leader>f<CR>"] = { function() require("fzf-lua").resume() end, desc = "Resume previous search" }
  --         maps.n["<Leader>f'"] = { function() require("fzf-lua").marks() end, desc = "Find marks" }
  --         maps.n["<Leader>f/"] =
  --           { function() require("fzf-lua").lgrep_curbuf() end, desc = "Find words in current buffer" }
  --         maps.n["<Leader>fa"] = {
  --           function() require("fzf-lua").files { prompt = "Config> ", cwd = vim.fn.stdpath "config" } end,
  --           desc = "Find AstroNvim config files",
  --         }
  --         maps.n["<Leader>fb"] = { function() require("fzf-lua").buffers() end, desc = "Find buffers" }
  --         maps.n["<Leader>fc"] = { function() require("fzf-lua").grep_cword() end, desc = "Find word under cursor" }
  --         maps.n["<Leader>fC"] = { function() require("fzf-lua").commands() end, desc = "Find commands" }
  --         maps.n["<Leader>ff"] = { function() require("fzf-lua").files() end, desc = "Find files" }
  --         maps.n["<Leader>fh"] = { function() require("fzf-lua").helptags() end, desc = "Find help" }
  --         maps.n["<Leader>fk"] = { function() require("fzf-lua").keymaps() end, desc = "Find keymaps" }
  --         maps.n["<Leader>fm"] = { function() require("fzf-lua").manpages() end, desc = "Find man" }
  --         maps.n["<Leader>fo"] = { function() require("fzf-lua").oldfiles() end, desc = "Find history" }
  --         maps.n["<Leader>fr"] = { function() require("fzf-lua").registers() end, desc = "Find registers" }
  --         maps.n["<Leader>ft"] = { function() require("fzf-lua").colorschemes() end, desc = "Find themes" }
  --         if vim.fn.executable "rg" == 1 or vim.fn.executable "grep" == 1 then
  --           maps.n["<Leader>fw"] = { function() require("fzf-lua").live_grep_native() end, desc = "Find words" }
  --         end
  --         maps.n["<Leader>ls"] = { function() require("fzf-lua").lsp_document_symbols() end, desc = "Search symbols" }
  --       end,
  --     },
  --   },
  --   opts = { "default-title" },
  -- },
}
