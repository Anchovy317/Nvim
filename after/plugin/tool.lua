-- Creamos el comando :Saludar que llama a nuestro módulo
vim.api.nvim_create_user_command('Saludar', function()
    require('mi_modulo').hola()
end, {})
