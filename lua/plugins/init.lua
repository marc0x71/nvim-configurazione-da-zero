return {
    "folke/which-key.nvim", {"folke/neoconf.nvim", cmd = "Neoconf"}, {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                {path = "luvit-meta/library", words = {"vim%.uv"}}
            }
        }
    }, {"Bilal2453/luvit-meta", lazy = true}, -- optional `vim.uv` typings
    { -- optional completion source for require statements and module annotations
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            opts.sources = opts.sources or {}
            table.insert(opts.sources, {
                name = "lazydev",
                group_index = 0 -- set group index to 0 to skip loading LuaLS completions
            })
        end
    }, {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        init = function()
            vim.cmd.colorscheme "catppuccin"
            vim.cmd.hi 'Comment gui=none'
        end,
        opts = {transparent_background = true}
    }, {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)"
            }, {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer Diagnostics (Trouble)"
            }, {
                "<leader>cs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols (Trouble)"
            }, {
                "<leader>cl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP Definitions / references / ... (Trouble)"
            }, {
                "<leader>xL",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location List (Trouble)"
            }, {
                "<leader>xQ",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix List (Trouble)"
            }
        }
    }, {
        'sbdchd/neoformat',
        keys = {{"<leader>cf", "<cmd>Neoformat<cr>", desc = "Code format"}}
    }, {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }, {'nanotee/luv-vimdocs'}, {'milisims/nvim-luaref'}, {
        'linrongbin16/lsp-progress.nvim',
        config = function() require('lsp-progress').setup() end
    }, {
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup({notification = {window = {winblend = 0}}})
        end
    }, {"andrejlevkovitch/vim-lua-format"}, {"tpope/vim-fugitive"}
}

