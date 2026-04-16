function ColorMyPencils(color)
    color = color or "matrix"
    vim.cmd.colorscheme(color)

    -- Mantener transparencia (opcional)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

-- Cargar el tema al iniciar
ColorMyPencils()  -- Esto cargará 'ninja' por defecto
