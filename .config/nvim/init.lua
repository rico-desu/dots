vim.g.mapleader = " "

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        repo,
        "--branch=stable",
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    import = "plugins"
})

require("remaps")

vim.cmd("source " .. os.getenv("HOME") .. "/.vimrc")
