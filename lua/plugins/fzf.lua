return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    {
      "<leader>fb", 
      function () 
        require('fzf-lua').builtin()
      end,
      desc = "Find files in current working directory"
    },
    {
      "<leader>ff", 
      function () 
        require('fzf-lua').files()
      end,
      desc = "Find files in current working directory"
    },
    {
      "<leader>fg", 
      function () 
        require('fzf-lua').live_grep()
      end,
      desc = "Find by grepping current working directory"
    },
    {
      "<leader><leader>", 
      function () 
        require('fzf-lua').buffers()
      end,
      desc = "Find buffers"
    },
    {
      "<leader>fw", 
      function () 
        require('fzf-lua').grep_cword()
      end,
      desc = "Find current word"
    },
    {
      "<leader>fr", 
      function () 
        require('fzf-lua').resume()
      end,
      desc = "Find resume"
    },
    {
      "<leader>fo", 
      function () 
        require('fzf-lua').oldfiles()
      end,
      desc = "Find old files"
    },
    {
      "<leader>f/", 
      function () 
        require('fzf-lua').lgrep_curbuf()
      end,
      desc = "Find in current buffer"
    },
    {
      "<leader>fh", 
      function () 
        require('fzf-lua').helptags()
      end,
      desc = "Find in help"
    },
    {
      "<leader>fk", 
      function () 
        require('fzf-lua').keymaps()
      end,
      desc = "Find in keymaps"
    }
  }
}
