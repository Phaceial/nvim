local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
<<<<<<< HEAD
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

=======
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
>>>>>>> fd08e7fff79b5ed751b58ab05097fc03a12f9cdd
