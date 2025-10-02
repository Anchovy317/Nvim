local colors = {
  green       = '#A0D353',
  orange      = '#E48807',
  blue        = '#58A0C8',
  purple      = '#6a329f',
  red         = '#EE1829',
  black       = '#000000',
  gray_dark   = '#1a1a1a',
  gray_medium = '#666666',
  gray_light  = '#B2B0E8',
  white       = '#ffffff',
}

require('render-markdown').setup({
    completions = { lsp = { enabled = true } },
    indent = {
        enabled = true,
        skip_heading = true,
    },
    paragraph = {
        enabled = true,
        render_modes = false,
        left_margin = 2,
        indent = 0,
        min_width = 0,
    },

    code = { style = 'language' },
    checkbox = {
        unchecked = { icon = ' ' },
        checked = { icon = '󰡕  ' },
        custom = { todo = { rendered = ' ' } },
    },

    bullet = { left_pad = 4 },
    pipe_table = { preset = 'heavy' },

    callout = {
        note      = { raw = '[!NOTE]',      rendered = '󰎚  Note',      highlight = 'RenderMarkdownInfo',    category = 'github'   },
        tip       = { raw = '[!TIP]',       rendered = '  Tip',       highlight = 'RenderMarkdownSuccess', category = 'github'   },
        important = { raw = '[!IMPORTANT]', rendered = ' Important', highlight = 'RenderMarkdownHint',    category = 'github'   },
        warning   = { raw = '[!WARNING]',   rendered = '  Warning',   highlight = 'RenderMarkdownWarn',    category = 'github'   },
        caution   = { raw = '[!CAUTION]',   rendered = ' Caution',   highlight = 'RenderMarkdownError',   category = 'github'   },
        summary   = { raw = '[!SUMMARY]',   rendered = ' Summary',   highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
        info      = { raw = '[!INFO]',      rendered = '  Info',      highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
        attention = { raw = '[!ATTENTION]', rendered = '󰀪 Attention', highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
        code      = { raw = '[!CODE]',      rendered = ' code',      highlight = 'RenderMarkdownError',   category = 'obsidian' },
        danger    = { raw = '[!DANGER]',    rendered = ' Danger',    highlight = 'RenderMarkdownError',   category = 'obsidian' },
        bug       = { raw = '[!BUG]',       rendered = '󰃤 Bug',       highlight = 'RenderMarkdownError',   category = 'obsidian' },
        example   = { raw = '[!EXAMPLE]',   rendered = '󰉹 Example',   highlight = 'RenderMarkdownHint' ,   category = 'obsidian' },
        exercise  = { raw = '[!QUOTE]',     rendered = '󰉾 Exercise',  highlight = 'RenderMarkdownQuote',   category = 'obsidian' },
    },
})

local gm = vim.api.nvim_set_hl

gm(0, 'RenderMarkdownH1',   { fg = colors.red, bold = true })
gm(0, 'RenderMarkdownH2',   { fg = colors.blue, bold = true })
gm(0, 'RenderMarkdownH3',   { fg = colors.orange, bold = true })
gm(0, 'RenderMarkdownH4',   { fg = colors.purple, bold = true })
gm(0, 'RenderMarkdownH5',   { fg = colors.green })
gm(0, 'RenderMarkdownH6',   { fg = colors.gray_medium })

gm(0, 'RenderMarkdownH1Bg', { bg = colors.gray_dark })
gm(0, 'RenderMarkdownH2Bg', { bg = colors.gray_dark })
gm(0, 'RenderMarkdownH3Bg', { bg = colors.gray_dark })
gm(0, 'RenderMarkdownH4Bg', { bg = colors.gray_dark })
gm(0, 'RenderMarkdownH5Bg', { bg = colors.gray_dark })
gm(0, 'RenderMarkdownH6Bg', { bg = colors.gray_dark })

gm(0, 'RenderMarkdownQuote',   { fg = colors.gray_light, italic = true })
for i = 1,6 do
  gm(0, 'RenderMarkdownQuote'..i, { fg = colors.gray_light, italic = true })
end

gm(0, 'RenderMarkdownBullet',     { fg = colors.orange })
gm(0, 'RenderMarkdownDash',       { fg = colors.gray_medium })
gm(0, 'RenderMarkdownTableHead',  { fg = colors.blue, bold = true })
gm(0, 'RenderMarkdownTableRow',   { fg = colors.white })
gm(0, 'RenderMarkdownTableFill',  { fg = colors.gray_medium })

gm(0, 'RenderMarkdownUnchecked', { fg = colors.red })
gm(0, 'RenderMarkdownChecked',   { fg = colors.green, bold = true })
gm(0, 'RenderMarkdownTodo',      { fg = colors.orange, italic = true })

gm(0, 'RenderMarkdownInfo',    { fg = colors.blue, bold = true })
gm(0, 'RenderMarkdownSuccess', { fg = colors.green, bold = true })
gm(0, 'RenderMarkdownHint',    { fg = colors.purple, italic = true })
gm(0, 'RenderMarkdownWarn',    { fg = colors.orange, bold = true })
gm(0, 'RenderMarkdownError',   { fg = colors.red, bold = true })

gm(0, 'RenderMarkdownLink',     { fg = colors.purple, underline = true })
gm(0, 'RenderMarkdownWikiLink', { fg = colors.purple, underline = true })

gm(0, 'RenderMarkdownSign',   { fg = colors.gray_medium, bg = colors.black })
gm(0, 'RenderMarkdownIndent', { fg = colors.gray_medium })
