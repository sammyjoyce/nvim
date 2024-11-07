---@type LazySpec
return {
  {
    import = "astrocommunity.markdown-and-latex.render-markdown-nvim",
    opts = {
      preset = "obsidian",
    },
  },
  {
    "epwalsh/obsidian.nvim",
    event = "VeryLazy",
    dependencies = {
      "wthollingsworth/pomo.nvim",
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "MeanderingProgrammer/render-markdown.nvim",
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings
          local prefix = "<leader>k"
          maps.n[prefix] = { desc = " Obsidian" }

          -- Basic operations
          maps.n[prefix .. "f"] = { "<cmd>ObsidianQuickSwitch<CR>", desc = "Find notes" }
          maps.n[prefix .. "s"] = { "<cmd>ObsidianSearch<CR>", desc = "Search notes" }
          maps.n[prefix .. "n"] = { "<cmd>ObsidianNew<CR>", desc = "New note" }
          maps.n[prefix .. "d"] = { "<cmd>ObsidianDailies<CR>", desc = "Daily notes" }
          maps.n[prefix .. "b"] = { "<cmd>ObsidianBacklinks<CR>", desc = "Backlinks" }
          maps.n[prefix .. "t"] = { "<cmd>ObsidianTemplate<CR>", desc = "Template" }
          maps.n[prefix .. "w"] = { "<cmd>ObsidianWorkspace<CR>", desc = "Workspace" }
          maps.n[prefix .. "r"] = { "<cmd>ObsidianRename<CR>", desc = "Rename note" }
          maps.n[prefix .. "i"] = { "<cmd>ObsidianPasteImg<CR>", desc = "Paste image" }
          maps.n[prefix .. "o"] = { "<cmd>ObsidianOpen<CR>", desc = "Open in Obsidian" }

          -- Links and tags submenu
          maps.n[prefix .. "l"] = { desc = "Links & Tags" }
          maps.n[prefix .. "lt"] = { "<cmd>ObsidianTags<CR>", desc = "List tags" }
          maps.n[prefix .. "ll"] = { "<cmd>ObsidianLinks<CR>", desc = "List links" }

          -- Special mappings
          maps.n["gf"] = {
            function()
              if require("obsidian").util.cursor_on_markdown_link() then
                return "<cmd>ObsidianFollowLink<CR>"
              else
                return "gf"
              end
            end,
            desc = "Follow Obsidian Link",
            expr = true,
          }
          maps.n["<C-c>"] = {
            function() return require("obsidian").util.toggle_checkbox() end,
            desc = "Toggle Checkbox",
          }

          -- Visual mode mappings
          maps.v[prefix .. "l"] = { "<cmd>ObsidianLink<CR>", desc = "Create link" }
          maps.v[prefix .. "L"] = { "<cmd>ObsidianLinkNew<CR>", desc = "Create new linked note" }
          maps.v[prefix .. "e"] = { "<cmd>ObsidianExtractNote<CR>", desc = "Extract to new note" }

          return opts
        end,
      },
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/personal",
        },
        -- Add more workspaces if needed
      },
      notes_subdir = "Notes",
      use_advanced_uri = true,
      finder = "telescope.nvim",
      daily_notes = {
        folder = "Journal/Entries/Daily",
        date_format = "%Y-%m-%d",
        alias_format = "%B %-d, %Y",
        template = "_data_/templates/journal/daily_entry.md",
      },
      templates = {
        subdir = "_data_/templates",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M",
      },
      note_frontmatter_func = function(note)
        local out = { id = note.id, aliases = note.aliases, tags = note.tags }
        if note.metadata and require("obsidian").util.table_length(note.metadata) > 0 then
          for k, v in pairs(note.metadata) do
            out[k] = v
          end
        end
        return out
      end,
      follow_url_func = function(url) require("astrocore").system_open(url) end,
      attachments = {
        img_folder = "_data_/media",
      },
    },
    init = function()
      vim.opt.conceallevel = 2 -- Set conceallevel for proper markdown rendering
    end,
  },
}
