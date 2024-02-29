return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim'
  },
  config = function ()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.buttons.val = {
      dashboard.button("f", "👁️ Find file", ":Telescope find_files <CR>"),
      dashboard.button("e", "🗯 New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "🥰 Recently used files", ":Telescope oldfiles <CR>"),
      dashboard.button("t", "💤 Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", "⚙️  Configuration", ":e C:/Users/Eric/AppData/Local/nvim<CR>"),
      dashboard.button("q", "🏝️ Quit Neovim", ":qa<CR>"),
    }
    dashboard.section.header.val = {

      [[          ▀████▀▄▄              ▄█ ]],
      [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
      [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
      [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
      [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
      [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
      [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
      [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
      [[   █   █  █      ▄▄           ▄▀   ]]

    }

    alpha.setup(dashboard.config)
  end
};
