vim.api.nvim_create_autocmd("TabNew", {
  callback = function()
    vim.cmd("cd `pwd`")
  end
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.js", "*.jsx" },
  command = "set filetype=javascriptreact",
})
