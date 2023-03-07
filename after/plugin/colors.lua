require("NeoSolarized").setup({
    style = "dark", -- "dark" or "light"
    transparent = true,
})


-- require('neosolarized').setup({
--     disable_background = false
-- })

function ColorMyPencils(color)
	color = color or "NeoSolarized"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

