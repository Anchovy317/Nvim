require("obsidian").setup({
  workspaces = {
    {
      name = "Personal",
      path = "~/Obsidian/HTB/",
    },
    {
      name = "Work",
      path = "~/Obsidian/Notes/",
      overrides = {
        notes_subdir = "notes",
      },
    },
  },

  -- Configuración básica
  notes_subdir = "notes",
  log_level = vim.log.levels.INFO,

  daily_notes = {
    folder = "notes/dailies",
    date_format = "%Y-%m-%d",
    alias_format = "%B %-d, %Y",
  },

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  mappings = {
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    ["<leader>ch"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
  },

  new_notes_location = "notes_subdir",

  note_id_func = function(title)
    local suffix = ""
    if title ~= nil then
      suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    else
      for _ = 1, 4 do
        suffix = suffix .. string.char(math.random(65, 90))
      end
    end
    return tostring(os.time()) .. "-" .. suffix
  end,

  preferred_link_style = "wiki",
  disable_frontmatter = false,

  templates = {
    folder = "templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
  },

  picker = {
    name = "telescope.nvim",
  },

  sort_by = "modified",
  sort_reversed = true,
})
