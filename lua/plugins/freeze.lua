return {
  {
    "AlejandroSuero/freeze-code.nvim",
    cmd = { "Freeze" },
    keys = {
      { "<leader>Uf", desc = "Freeze current buffer", mode = "n" },
      { "<leader>Uf", desc = "Freeze selection", mode = "v" },
      { "<leader>Ul", desc = "Freeze current line", mode = "n" },
    },
    opts = {
      copy_cmd = "",
      copy = false,
      open = true,
      dir = vim.fn.expand("~") .. "/screenshots",
      freeze_config = {
        config = vim.fn.expand("~") .. "/.config/freeze/user.json",
        output = "_freeze",
      },
    },
    config = function(_, opts)
      local fz_api = require("freeze-code.utils.api")
      require("freeze-code").setup(opts)

      -- Set up key mappings
      vim.keymap.set('n', '<leader>Uf', fz_api.freeze, { desc = "Freeze current buffer" })
      vim.keymap.set('v', '<leader>Uf', ":Freeze<cr>", { desc = "Freeze selection" })
      vim.keymap.set('n', '<leader>Ul', fz_api.freeze_line, { desc = "Freeze current line" })
    end,
  },
}
