return {
  {
    'lervag/vimtex',
    ft = 'tex',
    init = function()
      -- Configuración básica
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_quickfix_mode = 0

      -- Desactivar características que requieren tree-sitter
      vim.g.vimtex_syntax_enabled = 0
      vim.g.vimtex_matchparen_enabled = 0
    end
  }
}
