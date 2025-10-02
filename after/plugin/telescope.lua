-- Configuración principal de Telescope
require('telescope').setup({
  defaults = {
    -- Configuración de mapeos para modo insert
    mappings = {
      i = {
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
        ["<C-c>"] = require('telescope.actions').close,
        ["<ESC>"] = require('telescope.actions').close,
        ["<CR>"] = require('telescope.actions').select_default,
      },
      n = {
        ["<C-c>"] = require('telescope.actions').close,
        ["<ESC>"] = require('telescope.actions').close,
      }
    },

    -- Optimizaciones de rendimiento
    debounce = 50,
    timeout = 200,
    prompt_prefix = "🔍 ",
    selection_caret = "❯ ",
    entry_prefix = "  ",

    -- Mejor visualización
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = { mirror = false },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },

    -- Búsqueda más inteligente
    file_ignore_patterns = {
      "node_modules", ".git", "target", "build", "dist", "yarn.lock",
      "package-lock.json", ".next", ".cache", "__pycache__"
    },
    path_display = { "truncate" },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" },
  },

  pickers = {
    find_files = {
      theme = "dropdown",
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
    },
    git_files = {
      theme = "dropdown",
    },
    grep_string = {
      theme = "dropdown",
    },
    help_tags = {
      theme = "dropdown",
    },
  },
})

-- Tus keymaps (ahora funcionarán mejor)
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set("n", "<leader>vo", "<cmd>:Telescope oldfiles<CR>")
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

-- Keymap adicional recomendado para live_grep
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
