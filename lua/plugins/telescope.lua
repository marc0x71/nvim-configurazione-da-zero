return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {'nvim-lua/plenary.nvim'},
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files,
                           {desc = 'Telescope find files'})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep,
                           {desc = 'Telescope live grep'})
            vim.keymap.set('n', '<leader><leader>', builtin.buffers,
                           {desc = 'Telescope buffers'})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags,
                           {desc = 'Telescope help tags'})
        end
    }, {
        "allaman/emoji.nvim",
        version = "1.0.0", -- optionally pin to a tag
        ft = "markdown", -- adjust to your needs
        dependencies = {
            -- util for handling paths
            "nvim-lua/plenary.nvim", -- optional for nvim-cmp integration
            "hrsh7th/nvim-cmp", -- optional for telescope integration
            "nvim-telescope/telescope.nvim"
        },
        opts = {
            -- default is false
            enable_cmp_integration = true,
            -- optional if your plugin installation directory
            -- is not vim.fn.stdpath("data") .. "/lazy/
            -- plugin_path = vim.fn.expand("$HOME/plugins/")
        },
        config = function(_, opts)
            require("emoji").setup(opts)
            -- optional for telescope integration
            local ts = require('telescope').load_extension 'emoji'
            vim.keymap.set('n', '<leader>fe', ts.emoji,
                           {desc = 'Search [E]moji'})
        end
    }
}
