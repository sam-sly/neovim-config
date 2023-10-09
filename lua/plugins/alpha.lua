return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    keys = {
      { '<leader>a', ':Alpha<cr>', desc = 'Alpha startup', silent = true }
    },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
};
