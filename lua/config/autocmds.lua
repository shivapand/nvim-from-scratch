vim.api.nvim_create_autocmd("TabNew", {
  callback = function()
    vim.cmd("cd `pwd`")
  end
})

vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
  callback = function()
    print("HERE>>>>>>>")
  end
})
