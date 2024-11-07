return {
  {
    "epwalsh/pomo.nvim",
    cmd = { "TimerStart", "TimerStop", "TimerRepeat" },
    dependencies = {
      "rcarriga/nvim-notify",
    },
    opts = {
      notifiers = {
        {
          name = "Default",
          opts = {
            sticky = true,
            title_icon = "󱎫",
            text_icon = "󰄉",
          },
        },
        { name = "System" },
      },
      timers = {
        Break = {
          { name = "System" },
        },
      },
      sessions = {
        pomodoro = {
          { name = "Work",        duration = "25m" },
          { name = "Short Break", duration = "5m" },
          { name = "Work",        duration = "25m" },
          { name = "Short Break", duration = "5m" },
          { name = "Work",        duration = "25m" },
          { name = "Long Break",  duration = "15m" },
        },
      },
      update_interval = 1000, -- Update timer every second
    },
    config = function(_, opts)
      require("pomo").setup(opts)
      require("telescope").load_extension "pomodori"
    end,
  },
}
