vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })

vim.keymap.set("n", "<Leader>/", ":noh<CR>", {desc = "Clean search highlight"})

vim.keymap.set("n", "<Leader>j", ":execute 'tabmove' tabpagenr() - 2<CR>", {desc = "Move tab prev"})
vim.keymap.set("n", "<Leader>k", ":execute 'tabmove' tabpagenr() + 1<CR>", {desc = "Move tab next"})


-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end, {desc = "load the session for the current directory"})

-- select a session to load
vim.keymap.set("n", "<leader>qS", function() require("persistence").select() end, {desc = "select a session to load"})

-- load the last session
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end, {desc = "load the last session"})

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end, {desc = "stop Persistence => session won't be saved on exit"})


vim.keymap.set(
  'n', 
  'grk',
  function () 
    vim.diagnostic.open_float()
  end
)

vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Show hover documentation' })
