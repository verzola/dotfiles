local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.code_actions.refactoring,
    null_ls.builtins.completion.spell,
    null_ls.builtins.diagnostics.editorconfig_checker,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.jshint,
    null_ls.builtins.diagnostics.jsonlint,
    null_ls.builtins.diagnostics.luacheck,
    null_ls.builtins.diagnostics.php,
    null_ls.builtins.diagnostics.phpcs,
    null_ls.builtins.diagnostics.stylelint,
    null_ls.builtins.diagnostics.tsc,
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.diagnostics.zsh,
    null_ls.builtins.formatting.eslint,
    null_ls.builtins.formatting.json_tool,
    null_ls.builtins.formatting.phpcbf,
    null_ls.builtins.formatting.phpcsfixer,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.prettier_eslint,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.stylua,
  },
})
