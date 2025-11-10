-- LSP Zero v3 configuración
local lsp_zero = require('lsp-zero')

-- Inicializar lsp-zero con el preset recomendado
lsp_zero.extend_lspconfig()

-- Configurar mason y mason-lspconfig
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'bashls',
        'clangd',
        'html',
        'lua_ls',
        'jedi_language_server',
        'phpactor',
        'pyright',
        'marksman',
        'solargraph',
        'cssls',
        'denols',
        'emmet_ls',
        'jsonls',
        'rust_analyzer',
        'gopls',
        'codebook',
        'texlab',
        'csharp_ls',


    },
    handlers = {
        lsp_zero.default_setup,
    },
})

-- Opcional: preferencias visuales
lsp_zero.set_preferences({
    sign_icons = {
        error = 'E',
        warn  = 'W',
        hint  = 'H',
        info  = 'I'
    }
})

-- Atajos de teclado cuando el LSP está activo
lsp_zero.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}
    local keymap = vim.keymap.set

    keymap("n", "gd", function() vim.lsp.buf.definition() end, opts)
    keymap("n", "K", function() vim.lsp.buf.hover() end, opts)
    keymap("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    keymap("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    keymap("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    keymap("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    keymap("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    keymap("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    keymap("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    keymap("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- Configuración de diagnóstico
vim.diagnostic.config({
    virtual_text = true
})

