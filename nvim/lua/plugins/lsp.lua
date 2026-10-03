return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      vim.diagnostic.config({
        virtual_text = {
          prefix = "",
          severity = vim.diagnostic.severity.ERROR,
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })

      local signs = { Error = "", Warn = "", Hint = "", Info = "" }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "bashls",
          "asm_lsp",
          "pyright",
        },
      })

      -- Neovim 0.11 native LSP configuration
      vim.lsp.config("clangd", {
        filetypes = { "c", "cpp", "hpp", "tpp", "h" },
      })

      vim.lsp.enable("clangd")
      vim.lsp.enable("asm_lsp")
      vim.lsp.enable("pyright")
      vim.lsp.enable("bashls")
    end,
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {}
    end,
  },
}
