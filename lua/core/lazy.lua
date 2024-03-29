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

-- Any lua file in ~/.config/nvim/lua/plugins/*.lua will be automatically merged
-- See https://github.com/folke/lazy.nvim#-structuring-your-plugins
require("lazy").setup("plugins", { git = { url_format = "git@github.com:%s.git" } })
