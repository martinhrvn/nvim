-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.editing-support.undotree" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.terraform" },
  -- { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
  -- { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.workflow.precognition-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.mini-bracketed" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.split-and-window.mini-map" },
  { import = "astrocommunity.file-explorer.mini-files" },
  { import = "astrocommunity.startup.mini-starter" },
  { import = "astrocommunity.motion.mini-basics" },
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
  -- import/override with your plugins folder
}
