vim.g.mapleader = " "
local vim = vim
local keymap = vim.keymap

-- open files to the left (Lex = Left explore)
keymap.set("n", "<leader>pv", vim.cmd.Lex)
-- move selected block up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- delete highlighted section into void register
-- and then paste
-- so paste content is not replaced
keymap.set("x", "<leader>p", [["_dP]])

keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("i", "jj", "<Esc>")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix list navigation
keymap.set("n", "<Tab-q>", "<cmd>cclose<CR>zz")
keymap.set("n", "<Tab-o>", "<cmd>copen<CR>zz")
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- location list navigation
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make current script executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- turn off serch highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x')

-- increment and decrement
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- equalize
keymap.set("n", "<leader>sx", ":close<CR>") -- close

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab


keymap.set("n", "<C-w>", "<C-w>w") -- switch between windows

-- shortcuts for closing buffers
keymap.set("n", "<leader>q", ":bw<Enter>") -- close buffer
keymap.set("n", "<leader>w", "<C-w>q<Enter>") -- close split, keep buffer
keymap.set("n", "<leader><Bs>", "<C-w>q<Enter>") -- close buffer, keep split


-- resize windows
keymap.set("n", "<leader>=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
keymap.set("n", "<leader>-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
keymap.set("n", "<leader>+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally
keymap.set("n", "<leader>_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally

-- save buffer mapping
keymap.set("n", "<leader>w", ":w<CR>")

