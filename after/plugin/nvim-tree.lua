require("nvim-tree").setup(
    {
        sort_by = "name",
        filters = {
            -- files not included
            -- custom = { ".git" }
            dotfiles = false, custom = { '^.git$' }
        },
        respect_buf_cwd = true,
        view = {
            relativenumber = false,
            centralize_selection = false,
            cursorline = true,
            debounce_delay = 15,
            width = 30,
            hide_root_folder = false,
            side = "left",
            preserve_window_proportions = false,
            number = false,
            signcolumn = "yes",
            mappings = {
                custom_only = false,
                list = {
                    -- user mappings go here
                },
            },
            float = {
                enable = false,
                quit_on_focus_loss = true,
                open_win_config = {
                    relative = "editor",
                    border = "rounded",
                    width = 30,
                    height = 30,
                    row = 1,
                    col = 1,
                },
            },
        },
	renderer = {
		indent_width = 1,
		indent_markers = {
			enable = false,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				bottom = "─",
				none = " ",
			},
		},
	},
        -- focuses tree on the currently open buffer
        update_focused_file = {
            enable = true,
            update_root = false,
            ignore_list = {},
        }
    }
)

vim.api.nvim_set_keymap(
    "n",
    "<C-f>",
    "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>",
    { noremap = true, silent = true }
)
