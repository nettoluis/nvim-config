-- lua/user/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Definir a tecla Leader para <Space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Modos ]]
-- n = Normal | i = Insert | v = Visual | x = Visual Block | t = Terminal

-- Navegação entre janelas (splits) com Ctrl + <hjkl>
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Salvar e Sair
map("n", "<Leader>w", "<cmd>w<CR>", { desc = "Salvar arquivo" })
map("n", "<Leader>q", "<cmd>q<CR>", { desc = "Sair" })

-- Limpar destaques da busca com <Esc>
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

-- Mover linhas selecionadas no modo Visual com J e K
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Navegação entre Buffers
map("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Próximo buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Buffer anterior" })

-- [[ Atalhos do Telescope ]] -- CORRIGIDO
map("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Procurar arquivos" })
map("n", "<Leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Procurar nos buffers" })
map("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Procurar por texto (grep)" })