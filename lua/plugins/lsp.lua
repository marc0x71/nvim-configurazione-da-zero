return {
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd" },
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
    end,
    keys = {
      { "<space>e", vim.diagnostic.open_float, desc="Show error"},
      { "<space>ca", vim.lsp.buf.code_action, desc="Code action"},
      { "<space>cn", vim.lsp.buf.rename, desc="Symbol rename"},
    }
  }
}
