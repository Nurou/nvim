local opt = vim.opt
opt.nu = true
opt.relativenumber = true

-- tabs & true
opt.tabstop = 4
opt.autoindent = true
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- line wrapping
opt.wrap = true

-- search
opt.ignorecase = true
opt.ignorecase = true

-- set grepprg and grepformat
opt.grepprg = "rg -H --no-heading --smart-case --vimgrep"
opt.grepformat = "%f:%l:%c:%m"

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
-- use the system clipboard for all yank, delete, change and put operation
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitbelow = true
opt.splitright = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

-- higlights column with vertical line
-- opt.colorcolumn = "80"
-- consider hyphen as part of a word
opt.iskeyword:append("-")

opt.spelllang = 'en_us'
opt.spell = true
