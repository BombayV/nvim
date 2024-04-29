require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"lua_ls",
		"htmx",
		"dockerls",
		"rust_analyzer",
		"basedpyright",
		"markdown_oxide",
		"jsonls",
		"eslint",
	}
})
