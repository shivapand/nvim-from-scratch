
vim.api.nvim_create_autocmd("BufNew", {
  callback = function()
    vim.cmd("cd `pwd`")
  end
})
