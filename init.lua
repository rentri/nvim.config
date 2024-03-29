vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader=" "

vim.wo.number = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

vim.cmd("highlight LineNr guibg=NONE")
vim.cmd("highlight SignColumn guibg=NONE")
