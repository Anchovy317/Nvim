vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'ninja_turtles'

local colors = {
  -- Tus colores principales
  green = '#16C47F',
  orange = '#ED3500',
  blue = '#799EFF',
  purple = '#4D55CC',
  red = '#EE1829',
  black = '#000000',
  gray_dark = '#1a1a1a',
  gray_medium = '#666666',
  gray_light = '#B2B0E8',
  white = '#ffffff',
  fun = '#FFD700',
  punt = '#FF0000',
}

-- Función de aplicación optimizada
local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Aplicación del tema
hl('Normal', { fg = colors.white, bg = colors.black })
hl('Directory', { fg = colors.orange, bold = true })              -- Grupo base de Vim

-- Jerarquía de texto
hl('Comment', { fg = colors.gray_medium, italic = true })
hl('String', { fg = colors.green})
hl('Number', { fg = colors.red })
hl('Boolean', { fg = colors.orange, bold = true })

-- Sintaxis clave
hl('Keyword', { fg = colors.purple, bold = true })
hl('Function', { fg = colors.purple, bold = true })
hl('Delimiter', { fg = colors.orange })
hl('Operator', { fg = colors.orange })

hl('@punctuation.bracket', { fg = colors.fun })
hl('@punctuation.delimiter', { fg = colors.punt })
hl('@punctuation.special', { fg = colors.punt })
hl('@type.builtin', { fg = colors.fun, bold = true })

-- GRUPOS PARA LA VENTANA DE COMPLETADO/TELESCOPE
hl('Pmenu', { fg = colors.white, bg = colors.gray_dark })           -- Fondo de la ventana
hl('PmenuSel', { fg = colors.black, bg = colors.orange, bold = true }) -- Elemento seleccionado
hl('PmenuSbar', { bg = colors.gray_dark })                         -- Barra de scroll
hl('PmenuThumb', { bg = colors.gray_medium })                      -- Control de scroll
-- Para el texto dentro del menú
hl('PmenuKind', { fg = colors.purple })                            -- Tipo (Function, Class, etc.)
hl('PmenuExtra', { fg = colors.gray_medium })                      -- Información adicional
hl('PmenuMenu', { fg = colors.orange })                            -- Texto del menú

-- Específicamente para LSP y completado
hl('CmpItemKindFunction', { fg = colors.purple, bold = true })     -- Funciones
hl('CmpItemKindMethod', { fg = colors.purple, bold = true })       -- Métodos
hl('CmpItemKindVariable', { fg = colors.white })                   -- Variables
hl('CmpItemKindField', { fg = colors.blue })                       -- Campos
hl('CmpItemKindClass', { fg = colors.green, italic = true })       -- Clases
hl('CmpItemKindInterface', { fg = colors.green, italic = true })   -- Interfaces
hl('CmpItemKindText', { fg = colors.white })                       -- Texto simple

-- Para la documentación flotante
hl('FloatBorder', { fg = colors.gray_dark, bg = colors.black })    -- Borde de ventanas flotantes
hl('NormalFloat', { fg = colors.white, bg = colors.black })        -- Contenido flotante

-- interfaz
hl('CursorLine', { bg = colors.red })
hl('LineNr', { fg = colors.orange})
hl('CursorLineNr', { fg = colors.orange, bold = true })

-- Diagnósticos
hl('DiagnosticError', { fg = colors.red, underline = true })
hl('DiagnosticWarn', { fg = colors.orange })
hl('DiagnosticInfo', { fg = colors.blue })
hl('DiagnosticHint', { fg = colors.green })

-- Diffs
hl('DiffAdd', { fg = colors.green })
hl('DiffChange', { fg = colors.blue })
hl('DiffDelete', { fg = colors.red })

-- Selecciones
hl('Visual', { bg = colors.gray_dark, fg = colors.white })
hl('Search', { bg = colors.orange, fg = colors.black })
-- Telescope
-- Configuración mejorada de Telescope con la paleta TMNT
hl('TelescopePromptBorder', { fg = colors.purple, bg = colors.black })
hl('TelescopeResultsBorder', { fg = colors.blue, bg = colors.black })
hl('TelescopePreviewBorder', { fg = colors.green, bg = colors.black })

hl('TelescopePromptNormal', { fg = colors.white, bg = colors.black })
hl('TelescopePromptPrefix', { fg = colors.orange, bg = colors.black })

hl('TelescopeSelection', {
  fg = colors.white,
  bg = colors.gray_dark,
  bold = true
})

hl('TelescopeSelectionCaret', {
  fg = colors.red,
  bg = colors.gray_dark
})

hl('TelescopeMultiSelection', {
  fg = colors.purple,
  bg = colors.gray_dark,
  italic = true
})

hl('TelescopeMatching', {
  fg = colors.orange,
  bold = true,
  underline = true
})

hl('TelescopeTitle', {
  fg = colors.black,
  bg = colors.blue,
  bold = true
})

hl('TelescopePreviewTitle', {
  fg = colors.black,
  bg = colors.green,
  bold = true
})

hl('TelescopePromptTitle', {
  fg = colors.black,
  bg = colors.purple,
  bold = true
})

-- Grupos especiales para file browser
hl('TelescopeResultsFile', {
  fg = colors.white,
  bg = colors.black
})

hl('TelescopeResultsDirectory', {
  fg = colors.blue,
  bold = true
})

hl('TelescopeResultsSpecialComment', {
  fg = colors.gray_medium,
  italic = true
})

-- Configuración recomendada para Telescope
require('telescope').setup{
  defaults = {
    color_devicons = true,
    layout_config = {
      width = 0.95,
      preview_cutoff = 120,
    },
    borderchars = {
      prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
      results = { " " },
      preview = { " " },
    },
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      }
    }
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "ivy",
    }
  }
}

-- Cambiar solo el color de la statusline
vim.cmd('highlight StatusLine guibg=#6a329f guifg=#ffffff gui=bold')
vim.cmd('highlight StatusLineNC guibg=#3a2a4a guifg=#b3b3b3')

-- Versión alternativa con tus colores exactos:
vim.api.nvim_set_hl(0, 'StatusLine', {
  fg = '#ED3500',
  bg = '#000000',
  bold = true
})

vim.api.nvim_set_hl(0, 'StatusLineNC', {
  fg= '#6a329f',
  bg = '#000000',
})
print('Pizza Time')
