-- remove --MODE-- from statusline
vim.opt.showmode = false

require('lualine').setup {
    options = {
        theme = 'gruvbox',
        component_separators = '|',
        section_separators = '',
        show_filename_only = false,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {{
            'filename',
            path = 1,
        }},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
}


