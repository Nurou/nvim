require("NeoSolarized").setup({
    style = "dark", -- "dark" or "light"
    transparent = false,
})

-- require("gruvbox").setup({
--     -- needed to override gitsigns bg color
--     overrides = {
--         SignColumn = { link = "Normal" },
--         GruvboxGreenSign = { bg = "" },
--         GruvboxOrangeSign = { bg = "" },
--         GruvboxPurpleSign = { bg = "" },
--         GruvboxYellowSign = { bg = "" },
--         GruvboxRedSign = { bg = "" },
--         GruvboxBlueSign = { bg = "" },
--         GruvboxAquaSign = { bg = "" },
--     },
-- })
vim.cmd("colorscheme NeoSolarized")


function ColorMyPencils(color)
    color = color or "NeoSolarized"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
