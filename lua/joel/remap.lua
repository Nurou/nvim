vim.g.mapleader = " "
local vim = vim
local keymap = vim.keymap

-- open files to the left (Lex = Left explore)
keymap.set("n", "<leader>pv", vim.cmd.Lex)
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
-- keymap.set("x", "<leader>p", [["_dP]])
keymap.set("x", "<leader>p", [["+p]])

keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({"n", "v"}, "<leader>d", [["_d]])

keymap.set("i", "jj", "<Esc>")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- make current script executable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n","x",'"_x')

-- increment and decrement
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")


keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab


