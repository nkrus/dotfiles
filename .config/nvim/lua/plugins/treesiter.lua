local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup{
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  ensure_installed = {
    "java",
    "kotlin",
    "go",
    "markdown",
    "markdown_inline",
    "javascript",
    "tsx",
    "typescript",
    "toml",
    "fish",
    "json",
    "yaml",
    "css",
    "html",
    "lua"
  }
}
