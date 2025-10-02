-- Importa los módulos necesarios
local cmp = require('cmp')
local luasnip = require('luasnip')

-- Configuración principal de nvim-cmp
cmp.setup({
  -- Las fuentes de autocompletado basadas en los plugins instalados
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },    -- Para el autocompletado de LSP
    { name = 'luasnip' },     -- Para los snippets
    { name = 'nvim_lua' },    -- Para el autocompletado en el lenguaje Lua
    { name = 'path' },        -- Para completar rutas de archivos
  }, {
    { name = 'buffer' }        -- Para completar palabras del búfer actual
  }),

  -- Mapeo de teclas para la navegación y confirmación
  mapping = cmp.mapping.preset.insert({
    -- Navega hacia la sugerencia anterior
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- Navega hacia la siguiente sugerencia
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- Confirma la sugerencia seleccionada
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    -- Dispara el autocompletado manualmente
    ['<C-Space>'] = cmp.mapping.complete(),
  }),

  -- Comportamiento de los snippets
  snippet = {
    -- Habilita la expansión de snippets usando LuaSnip
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  -- Configuración de la ventana de documentación y el menú
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})

-- Opcional: Configuración para el autocompletado en la línea de comandos de Neovim
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' },
    { name = 'cmdline' },
  })
})
