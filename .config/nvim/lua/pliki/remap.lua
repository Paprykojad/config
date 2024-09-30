vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- wyjście do netrw
vim.keymap.set("n", "<leader><leader>", "$a") -- skocz na koniec linijki
vim.keymap.set("v", "<leader><leader>", "$") --skocz na koniec linijki przy zaznaczaniu
vim.keymap.set("n", "<leader>,", "^i") -- skocz na początek linijki
vim.keymap.set("v", "<leader>,", "^") -- skocz na początek linijki przy zaznaczaniu 
vim.keymap.set("n", "<leader>t", ":noh\n") -- kasuj zaznaczenia z /
vim.keymap.set("n", "<leader>n", ":vnew\n") -- nowe puste okno po lewej
vim.keymap.set("n", "<leader>b", ":bd\n") -- usuwa bufor z tekstem
-- vim.keymap.set("i", "<leader>{{", "<C-c>$a{\n\n}<C-c>ki") -- automatyczne zrobienie nawiasów
vim.keymap.set("n", "<leader>;", "$a;<C-c>") -- wstawienie ; na końcu linijki
vim.keymap.set("n", "<leader>:", "$a:<C-c>o") -- wstawienie : na końcu linijki
vim.keymap.set("n", "<leader>m", ":vnew\n:terminal\n\n\n<leader><leader>i") -- otwatrcie okna z terminalem
vim.keymap.set("v", "<SHIFT>j", "dp") -- szybkie :q
-- vim.keymap.set("n", "n", "<C-d>") -- skoczenie o 7 linijek w dół
-- vim.keymap.set("n", "m", "<C-u>") -- skoczenie o 7 linijek w górę 
vim.keymap.set("n", "<leader>hj", ":vnew\n:vnew\n<C-w>l") -- stwórz 2 puste okna
-- vim.keymap.set("n", "<leader>tr", ":vnew\n:term\n\n\n\n$<C-w>l") -- otwórz okno z terminalem ale ustaw patrzenie na poprzednie okno
vim.keymap.set("n", "<leader>q", ":term\n:q\n") -- szybkie :q
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv") -- przesunięcie linijki w dół
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- przesunięcie linijki w górę

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {desc  = "GO to previous [D]iagnostic message"})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {desc  = "GO to next [D]iagnostic message"})
