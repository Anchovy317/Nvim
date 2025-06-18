require('solarized-osaka').setup()

function ColorMyPencils(color)
    color = color or "solarized-osaka"
    vim.cmd.colorscheme(color)

    -- Mantener transparencia
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Aplica el tema predeterminado
ColorMyPencils()
