local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'bashls', 'clangd', 'html', 'lua_ls', 'jedi_language_server',
        'phpactor', 'pyright', 'marksman', 'solargraph', 'cssls',
        'denols', 'emmet_ls', 'jsonls', 'rust_analyzer', 'gopls',
        'codebook', 'texlab', 'csharp_ls', 'asm_lsp',
        -- 'stylua'  -- si usas conform.nvim o null-ls para formateo, NO lo instales como LSP
    },
    handlers = {
        lsp_zero.default_setup,

        clangd = function()
            require('lspconfig').clangd.setup({
                -- Esto ayuda a clangd a encontrar paths del sistema (gtkmm, etc.)
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--header-insertion=iwyu",
                    "--completion-style=detailed",
                    "--query-driver=/usr/bin/g++",  -- o /usr/bin/clang++ si prefieres
                    -- Si sigues teniendo problemas con gtkmm, añade manualmente algunos -I comunes
                    -- "-I/usr/include/gtkmm-4.0",
                    -- "-I/usr/lib/x86_64-linux-gnu/gtkmm-4.0/include",
                    -- etc. (pero mejor usa .clangd abajo)
                },
            })
        end,

        asm_lsp = function()
            require('lspconfig').asm_lsp.setup({
                settings = {
                    asm_lsp = {
                        assemblers = { nasm = true },
                        instruction_sets = { x86_64 = true },
                    }
                },
                filetypes = { "asm", "nasm" },
            })
        end,
    },
})

-- on_attach (tus keymaps)
lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    local keymap = vim.keymap.set
    keymap("n", "gd", vim.lsp.buf.definition, opts)
    keymap("n", "K", vim.lsp.buf.hover, opts)
    keymap("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    keymap("n", "<leader>vd", vim.diagnostic.open_float, opts)
    keymap("n", "[d", vim.diagnostic.goto_next, opts)
    keymap("n", "]d", vim.diagnostic.goto_prev, opts)
    keymap("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    keymap("n", "<leader>vrr", vim.lsp.buf.references, opts)
    keymap("n", "<leader>vrn", vim.lsp.buf.rename, opts)
    keymap("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

vim.diagnostic.config({ virtual_text = true })
