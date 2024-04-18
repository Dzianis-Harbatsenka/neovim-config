vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>gd", vim.cmd.Gvdiffsplit);
vim.keymap.set("n", "<leader>gb",	function ()
	vim.cmd("Git blame")
end
);
