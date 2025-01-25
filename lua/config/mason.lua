require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = { "jdtls", "ts_ls" }, -- jdtls para Java, ts_ls para TypeScript
    automatic_installation = true,
}
