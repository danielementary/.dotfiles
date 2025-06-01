return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = "all",
        sync_install = false,
        auto_install = true,
        highlight = { enable = true, disable = {} },
        indent = { enable = true, disable = {} },
    },
}
