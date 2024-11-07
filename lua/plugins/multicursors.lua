return {
  {
    "brenton-leighton/multiple-cursors.nvim",
    cmd = {
      "MultipleCursorsAddDown",
      "MultipleCursorsAddUp",
      "MultipleCursorsMouseAddDelete",
      "MultipleCursorsAddMatches",
      "MultipleCursorsAddMatchesV",
      "MultipleCursorsAddJumpNextMatch",
      "MultipleCursorsJumpNextMatch",
      "MultipleCursorsLock",
    },
    keys = {
      { "<C-Down>", "<cmd>MultipleCursorsAddDown<cr>", desc = "Add cursor down", mode = { "n", "i" } },
      { "<C-Up>", "<cmd>MultipleCursorsAddUp<cr>", desc = "Add cursor up", mode = { "n", "i" } },
      { "<C-g>", "<cmd>MultipleCursorsAddJumpNextMatch<cr>", desc = "Add next cursor match", mode = { "n", "v", "x" } },
      { "<C-G>", "<cmd>MultipleCursorsAddMatches<cr>", desc = "Add all cursor matches", mode = { "n", "v", "x" } },
      { "<leader>ma", "<cmd>MultipleCursorsAddMatches<cr>", desc = "Add cursor matches", mode = { "n", "x" } },
      { "<leader>mA", "<cmd>MultipleCursorsAddMatchesV<cr>", desc = "Add matches from previous visual", mode = { "n", "x" } },
      { "<leader>mj", "<cmd>MultipleCursorsAddJumpNextMatch<cr>", desc = "Add and jump to next match", mode = "n" },
      { "<leader>mJ", "<cmd>MultipleCursorsJumpNextMatch<cr>", desc = "Jump to next match", mode = "n" },
      { "<leader>ml", "<cmd>MultipleCursorsLock<cr>", desc = "Lock cursors", mode = "n" },
    },
    opts = {},
    dependencies = {
      "AstroNvim/astrocore",
    },
  },
}
