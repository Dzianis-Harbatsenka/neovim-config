local lsp = require("lsp-zero")

lsp.preset({})

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({
		buffer = bufnr,
		preserve_mappings = false,
	})
end)

lsp.set_server_config({
	on_init = function(client)
		client.server_capabilities.semanticTokensProvider = nil
	end,
})

lsp.format_on_save({
	servers = {
		["null-ls"] = { "html", "css", "scss", "javascript", "typescript", "lua", "handlebars" },
	},
})

lsp.ensure_installed({
	"tsserver",
	"lua_ls",
	"eslint",
})

lsp.setup()

vim.keymap.set("n", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "Perform LSP [C]ode [A]ction" })

local util = require("lspconfig.util")

local function tsserver_setup()
	local tsserver = require("lspconfig").tsserver

	tsserver.setup({
		root_dir = util.find_node_modules_ancestor,
	})
end

tsserver_setup()

local function lua_ls_setup()
	local lua_ls = require("lspconfig").lua_ls
	lua_ls.setup({})
end

lua_ls_setup()

local function cmp_setup()
	local cmp = require("cmp")

	cmp.setup({
		mapping = {
			["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
		},
	})
end

cmp_setup()

local function null_ls_setup()
	local null_ls = require("null-ls")

	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.prettier,
			null_ls.builtins.formatting.stylua,
			-- null_ls.builtins.diagnostics.eslint,
		},
	})
end

null_ls_setup()

local function eslint_setup()
	local eslint = require("lspconfig").eslint
	eslint.setup({})
end

eslint_setup()
