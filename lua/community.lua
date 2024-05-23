-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.workflow.precognition-nvim" },
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.mini-bracketed" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.split-and-window.mini-map" },
  { import = "astrocommunity.file-explorer.mini-files" },
  { import = "astrocommunity.startup.mini-starter" },
  { import = "astrocommunity.motion.mini-basics" },
  -- import/override with your plugins folder
}
