vim.api.nvim_create_autocmd("TabNew", {
  callback = function()
    vim.cmd("cd `pwd`")
  end
})
