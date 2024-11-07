
-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
  ensure_installed = {
      "lua",
      "vim",
      "zig",
      "typescript",
      "php",
      "toml",
      "json",
      "javascript",
      "html",
      "css",
      "markdown",
      "yaml",
    },
  },
}
