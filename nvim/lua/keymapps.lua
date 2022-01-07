local mapper = function(mode,key,result)
	vim.api.nvim_set_keymap(mode,key,result,{noremap = true, silent = true})
end

-- Settings globals for NVIM
vim.g.mapleader = ' '

mapper("n","w",":w<CR>")
mapper("n","q",":q<CR>")
mapper("n","<Leader>qq",":q!<CR>")
mapper("n","tt",":t.<CR>")
-- end
-- NERDTree
mapper("n","<leader>n", ":NERDTreeFocus<CR>")
mapper("n","<C-n>", ":NERDTree<CR>")
mapper("n","<C-t>", ":NERDTreeToggle<CR>")
mapper("n","<C-f>", ":NERDTreeFind<CR>")
-- end NERDTree
-- TELESCOPE key
mapper("n","<Leader>ff",":Telescope find_files<CR>")
mapper("n","<Leader>fm",":Telescope man_pages<CR>")
mapper("n","<Leader>fb",":Telescope buffers<CR>")
mapper("n","<Leader>fg",":Telescope live_grep<CR>")
mapper("n","<Leader>fh",":Telescope help_tags<CR>")
mapper("n","<Leader>fs",":Telescope git_status<CR>")
mapper("n","<Leader>fc",":Telescope command_history<CR>")
-- end TELESCOPE
