local signature = require("lsp_signature")
local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup({
    on_attach = function(client, bufnr)
        signature.on_attach({}, bufnr) -- Ativa o lsp_signature para este buffer
    end,
})

lspconfig.jdtls.setup({
    on_attach = function(client, bufnr)
        signature.on_attach({}, bufnr)
    end,
    cmd = { "jdtls" }, -- Certifique-se de que o `jdtls` está no PATH ou especifique o caminho completo
})

