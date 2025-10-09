-- lua/user/options.lua

local opt = vim.opt -- Atalho para vim.opt
-- [[ Numeração de Linhas ]]
opt.relativenumber = true -- Mostra números de linha relativos
opt.number = true         -- Mostra o número da linha atual
-- [[ Tabs e Indentação ]]
opt.tabstop = 2      -- Número de espaços que um <Tab> conta.
opt.shiftwidth = 2   -- Número de espaços para usar em operações de indentação.
opt.expandtab = true -- Usar espaços em vez de tabs.
opt.autoindent = true -- Indentação automática
-- [[ Busca ]]
opt.ignorecase = true -- Ignorar maiúsculas/minúsculas na busca...
 opt.smartcase = true  -- ...a menos que a busca contenha uma letra maiúscula.
 opt.hlsearch = true   -- Destacar resultados da busca.
 -- [[ Aparência ]]
 opt.termguicolors = true -- Habilita cores de 24-bit no terminal.
 opt.background = "dark"  -- Define o fundo como escuro (bom para a maioria dos temas).
 opt.signcolumn = "yes"   -- Sempre mostrar a coluna de sinais (para LSP, Git, etc).
 -- [[ Comportamento ]]
 opt.clipboard = "unnamedplus" -- Usa a área de transferência do sistema.
 opt.cursorline = true         -- Destaca a linha atual do cursor.
 opt.splitright = true         -- Abre novos splits verticais à direita.
 opt.splitbelow = true         -- Abre novos splits horizontais abaixo.
 opt.wrap = false              -- Desabilita o word wrap.
--  [[ Backups ]]
opt.swapfile = false -- Não criar arquivos de swap
opt.backup = false   -- Não criar arquivos de backup
