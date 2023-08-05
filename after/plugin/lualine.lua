-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.cyan },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = 'auto' },
    b = { fg = colors.white, bg = 'auto' },
    c = { fg = colors.white, bg = 'auto' },
  },
}


require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = bubbles_theme,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {
            {
                'filename',
                file_status = true, -- Displays file status (readonly status, modified status)
                newfile_status = true, -- Display new file status (new file means no write after created)
                path = 1, -- 0: Just the filename
                -- 1: Relative path
                -- 2: Absolute path
                -- 3: Absolute path, with tilde as the home directory
                -- 4: Filename and parent dir, with tilde as the home directory

                shorting_target = 40, -- Shortens path to leave 40 spaces in the window
                -- for other components. (terrible name, any suggestions?)
                symbols = {
                    modified = '[+]', -- Text to show when the file is modified.
                    readonly = '[-]', -- Text to show when the file is non-modifiable or readonly.
                    unnamed = '[No Name]', -- Text to show for unnamed buffers.
                    newfile = '[New]', -- Text to show for newly created file before first write
                }
            }
        },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}

