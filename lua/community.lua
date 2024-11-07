-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- bars-and-lines
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  -- color
  { import = "astrocommunity.color.nvim-highlight-colors" },
  { import = "astrocommunity.color.twilight-nvim" },
  -- colorscheme
  { import = "astrocommunity.colorscheme.cyberdream-nvim" },
  -- comment
  { import = "astrocommunity.comment.mini-comment" },
  -- completion
  { import = "astrocommunity.completion.avante-nvim" },
  { import = "astrocommunity.completion.supermaven-nvim" },
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- editing-support
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.editing-support.conform-nvim" },
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.stickybuf-nvim" },
  -- icons
  { import = "astrocommunity.icon.mini-icons" },
  -- language packs
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.rainbow-delimiter-indent-blankline" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.zig" },
  -- lsp
  { import = "astrocommunity.lsp.lsp-lens-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.nvim-lint" },
  { import = "astrocommunity.lsp.ts-error-translator-nvim" },
  -- markdown-and-latex
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  -- motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.nvim-spider" },
  -- recipes
  { import = "astrocommunity.recipes.auto-session-restore" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  { import = "astrocommunity.recipes.neovide" },
  -- scrolling
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  -- search
  { import = "astrocommunity.search.grug-far-nvim" },
  -- split-and-window
  { import = "astrocommunity.split-and-window.colorful-winsep-nvim" },
  { import = "astrocommunity.split-and-window.edgy-nvim" },
  -- utility
  { import = "astrocommunity.utility.hover-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  -- workflow
  { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.workflow.precognition-nvim" },

  -- Commented out imports
  -- { import = "astrocommunity.completion.blink-cmp" },
  -- { import = "astrocommunity.completion.magazine-nvim" },
  -- { import = "astrocommunity.recipes.cache-colorscheme" },
  -- { import = "astrocommunity.scrolling.mini-animate" },
  -- { import = "astrocommunity.split-and-window.edgy-nvim" }
}
