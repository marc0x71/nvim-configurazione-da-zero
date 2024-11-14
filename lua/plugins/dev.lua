return {
    'nvim-treesitter/playground',
    requires = {'nvim-treesitter/nvim-treesitter'},
    cmd = 'TSPlaygroundToggle',
    config = function() require('nvim-treesitter.configs').setup{} end
}
