-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.undofile = true -- Enable persistent undo
vim.opt.undodir = "~/.vim/undodir" -- Set the directory for undo files
-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

if vim.g.neovide and vim.fn.has "mac" == 1 then
  vim.o.guifont = "JetBrainsMono Nerd Font:h14"
elseif vim.g.neovide then
  vim.o.guifont = "JetBrainsMonoNL Nerd Font:h10"
end

require "lazy_setup"
require "polish"
