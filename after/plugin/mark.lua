require('render-markdown').setup({
    completions = { lsp = { enabled = true } },
    heading = { border = true },
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
     code = {
        width = 'block',
        left_pad = 2,
        right_pad = 4,
    },
        checkbox = {
        unchecked = { icon = ' ' },
        checked = { icon = '󰡕  ' },
        custom = { todo = { rendered = ' ' } },
    },
    bullet = { icons = { { '󰫶 ', '󱂉 ' } } },


    -- Tables
        pipe_table = { preset = 'heavy' },

    -- Callaouts

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
        exercise     = { raw = '[!QUOTE]',     rendered = '󰉾 Exercise',     highlight = 'RenderMarkdownQuote',   category = 'obsidian' },
    },
 })

