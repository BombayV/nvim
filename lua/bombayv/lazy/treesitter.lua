return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "typescript", "javascript", "html", "rust", "jsdoc" },
      sync_install = false,
      auto_install = true,
      highlight = { 
        enable = true,
        additional_vim_regex_highlighting = { "markdown" }  
      },
      indent = { enable = true },
    })

    local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    treesitter_parser_config.templ = {
      install_info = {
        url = "https://github.com/vrischmann/tree-sitter-templ.git",
        files = {"src/parser.c", "src/scanner.c"},
        branch = "master",
      },
    }

    vim.treesitter.language.register("templ", "templ")
  end
 }
