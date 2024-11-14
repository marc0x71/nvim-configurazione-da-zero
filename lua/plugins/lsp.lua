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
        ensure_installed = { "lua_ls", "clangd", "cmake" },
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cmake.setup({})
    end,
    keys = {
      { "<leader>e",  vim.diagnostic.open_float,            desc = "Show error" },
      { "<leader>ca", vim.lsp.buf.code_action,              desc = "Code action" },
      { "<leader>cn", vim.lsp.buf.rename,                   desc = "Symbol rename" },
      { "K",         vim.lsp.buf.hover,                  desc = "" },
      { "gd",        vim.lsp.buf.definition,             desc = "" },
      { "gD",        vim.lsp.buf.declaration,            desc = "" },
      { "gi",        vim.lsp.buf.implementation,         desc = "" },
      { "go",        vim.lsp.buf.type_definition,        desc = "" },
      { "gr",        vim.lsp.buf.references,             desc = "" },
      { "gs",        vim.lsp.buf.signature_help,         desc = "" },
    }
  }
}
