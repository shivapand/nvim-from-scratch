vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })

vim.keymap.set("n", "<Leader>/", ":noh<CR>", { desc = "Clean search highlight" })

vim.keymap.set("n", "<Leader>j", ":execute 'tabmove' tabpagenr() - 2<CR>", { desc = "Move tab prev" })
vim.keymap.set("n", "<Leader>k", ":execute 'tabmove' tabpagenr() + 1<CR>", { desc = "Move tab next" })

-- load the session for the current directory
vim.keymap.set("n", "<leader>qs", function()
  require("persistence").load()
end, { desc = "load the session for the current directory" })

-- select a session to load
vim.keymap.set("n", "<leader>qS", function()
  require("persistence").select()
end, { desc = "select a session to load" })

-- load the last session
vim.keymap.set("n", "<leader>ql", function()
  require("persistence").load({ last = true })
end, { desc = "load the last session" })

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function()
  require("persistence").stop()
end, { desc = "stop Persistence => session won't be saved on exit" })

vim.keymap.set("n", "<C-a>", function()
  require("conform").format({
    lsp_format = "fallback",
  })
end, { desc = "Format current file" })

vim.keymap.set("v", "<leader>a", function()
  require("conform").format({
    lsp_format = "fallback",
  })
end, { desc = "Format current file" })


vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
  callback = function(event)
    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    map('gn', vim.lsp.buf.rename, '[R]e[n]ame')

    map('ga', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })

    map('gr', require('fzf-lua').lsp_references, '[G]oto [R]eferences')

    map('gi', require('fzf-lua').lsp_implementations, '[G]oto [I]mplementation')

    map('gd', require('fzf-lua').lsp_definitions, '[G]oto [D]efinition')

    map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

    map('gO', require('fzf-lua').lsp_document_symbols, 'Open Document Symbols')

    map('gW', require('fzf-lua').lsp_live_workspace_symbols, 'Open Workspace Symbols')

    map('gt', require('fzf-lua').lsp_typedefs, '[G]oto [T]ype Definition')

    map('gk', vim.diagnostic.open_float, 'Open Diagnostics in Float')
  end,
})
