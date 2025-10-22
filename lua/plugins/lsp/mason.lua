return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    -- Mason Downloads & automatically enable listed lsp's (for manually enable lsp, download the lsp and enable it using vim.lsp.enable(<lsp-name>))
    -- Name should be same as present in neovim/nvim-lspconfig
    ensure_installed = {
      "ts_ls",
      "html",
      "cssls",
      "tailwindcss",
      "lua_ls",
      "graphql",
      "rust_analyzer",
      "jdtls",
      "clangd",
    },
  },
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      },
    },
    -- this github repo contains all the lsp configuration files maintained by community
    "neovim/nvim-lspconfig"
  }
}
