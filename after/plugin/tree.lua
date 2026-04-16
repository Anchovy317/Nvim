-- 1. Forzar Git para evitar errores de descarga (gzip/tarball)
require('nvim-treesitter.install').prefer_git = true

-- 2. Verificación de seguridad para evitar errores si el plugin no está cargado
local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

-- 3. Configuración completa
ts.setup {
  -- Lenguajes que siempre deben estar instalados
  ensure_installed = {
    'c',
    'cpp',
    'python',
    'markdown',
    'markdown_inline',
    'lua',
    'vim',
    'vimdoc',
    'query',
    'html',
    'css',
    'javascript'
  },

  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" }, -- Ignora si prefieres manejarlo aparte

  highlight = {
    enable = true,

    -- Función combinada para deshabilitar por lenguaje y por tamaño de archivo
    disable = function(lang, buf)
        -- Lista de lenguajes donde NO queremos Treesitter (ej. los que pediste antes)
        local disabled_languages = { "c", "rust", "python" }
        for _, v in ipairs(disabled_languages) do
            if lang == v then return true end
        end

        -- Lógica para archivos demasiado grandes (evita que Nvim se trabe)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true -- Mantiene la indentación inteligente activa
  },
}
