-- GENERAL


lvim.format_on_save = true
lvim.colorscheme = "dracula"
vim.diagnostic.config({ virtual_text = false })
vim.opt.cmdheight = 1
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss" })


-- KEYBINDINGS


lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<leader><Space>"] = ":noh<cr>"
lvim.keys.normal_mode["H"] = ":BufferLineCyclePrev<cr>"
lvim.keys.normal_mode["L"] = ":BufferLineCycleNext<cr>"
lvim.keys.insert_mode["jk"] = "<ESC>"


-- ADDITIONAL PLUGINS


lvim.plugins = {
  { 'Mofiqul/dracula.nvim' },
  --   { "norcalli/nvim-colorizer.lua" },
  --   { "lukas-reineke/indent-blankline.nvim" },
  --   { "mfussenegger/nvim-dap" },
  --   { "theHamsta/nvim-dap-virtual-text" },
  --   { "nvim-telescope/telescope-dap.nvim" },
  --   { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
}


-- LSP CONFIGURATRION


-- Formatters

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "black",
    filetypes = { "python" }
  },
  {
    command = "isort",
    filetypes = { "python" }
  },
  -- {
  --   command = "prettier",
  --   args = { "--print-width", "80" },
  --   filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "css", "json" },
  -- },
  {
    command = "prettierd",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "css", "json" },
  }
}

-- Linters

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "flake8", filetypes = { "python" } },
  {
    command = "shellcheck",
    args = { "--severity", "warning" },
  },
  -- {
  --   command = "eslint_d",
  --   filetypes = { "javascript, typescript" }
  -- },
  {
    command = "codespell",
    filetypes = { "javascript", "python", "typescript", "typescriptreact" },
  },
}


-- PLUGIN CONF



lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.alpha.dashboard.section.header.val = {
  [[          _______  _        _______                   _________ _______ ]],
  [[|\     /|(  ___  )( (    /|(  ____ \|\     /||\     /|\__   __/(       )]],
  [[| )   ( || (   ) ||  \  ( || (    \/( \   / )| )   ( |   ) (   | () () |]],
  [[| (___) || |   | ||   \ | || (__     \ (_) / | |   | |   | |   | || || |]],
  [[|  ___  || |   | || (\ \) ||  __)     \   /  ( (   ) )   | |   | |(_)| |]],
  [[| (   ) || |   | || | \   || (         ) (    \ \_/ /    | |   | |   | |]],
  [[| )   ( || (___) || )  \  || (____/\   | |     \   /  ___) (___| )   ( |]],
  [[|/     \|(_______)|/    )_)(_______/   \_/      \_/   \_______/|/     \|]],
  [[                                                                        ]],
  [[                                                                        ]],
  [[                                                                        ]],
  [[                                                                        ]],

}
lvim.builtin.alpha.dashboard.section.footer.val = "© Shashank Singh 2023"
lvim.builtin.treesitter.ignore_install = { "haskell" }


local lualine_config = require("lualine_conf")
lvim.builtin.lualine.options = lualine_config.options
lvim.builtin.lualine.sections = lualine_config.sections
lvim.builtin.lualine.inactive_sections = lualine_config.inactive_sections
