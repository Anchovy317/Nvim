-- Iniciar automáticamente la vista previa al abrir un archivo Markdown (0 para desactivar)
vim.g.mkdp_auto_start = 0

-- Cerrar la vista previa al cambiar de buffer
vim.g.mkdp_auto_close = 1

-- Refrescar solo al guardar o salir del modo inserción (0 para actualización en vivo)
vim.g.mkdp_refresh_slow = 0

-- Permitir usar :MarkdownPreview en cualquier tipo de archivo (0 solo en Markdown)
vim.g.mkdp_command_for_global = 0

-- Permitir acceso al servidor de previsualización desde la red
vim.g.mkdp_open_to_the_world = 0
vim.g.mkdp_open_ip = ''

-- Especificar navegador para abrir la vista previa (vacío para usar el predeterminado)
vim.g.mkdp_browser = ''

-- Mostrar URL en la línea de comandos al abrir la vista previa
vim.g.mkdp_echo_preview_url = 0

-- Especificar una función de Vim para abrir la vista previa (dejar vacío si no se usa)
vim.g.mkdp_browserfunc = ''

-- Opciones para el renderizado de Markdown
vim.g.mkdp_preview_options = {
    mkit = {},
    katex = {},
    uml = {},
    maid = {},
    disable_sync_scroll = 0,  -- Sincronizar desplazamiento entre Vim y la vista previa
    sync_scroll_type = 'middle', -- Opciones: 'middle', 'top', 'relative'
    hide_yaml_meta = 1,  -- Ocultar metadatos YAML al inicio del archivo
    sequence_diagrams = {},
    flowchart_diagrams = {},
    content_editable = false, -- Hacer la vista previa editable (recomendado false)
    disable_filename = 0,
    toc = {} -- Opciones para la tabla de contenidos (TOC)
}

-- Usar un archivo CSS personalizado para cambiar la fuente y estilos
vim.g.mkdp_markdown_css = vim.fn.expand("~/.config/mark-cust/custom.css")

-- Usar un CSS personalizado para resaltar código en bloques (opcional)
vim.g.mkdp_highlight_css = vim.fn.expand("~/.config/mark-cust/custom.css")


-- Especificar un puerto fijo para el servidor (vacío para asignar aleatorio)
vim.g.mkdp_port = ''

-- Personalizar el título de

