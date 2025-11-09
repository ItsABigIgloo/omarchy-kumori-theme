return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1e1e2e", -- Default background
                base01 = "#83588b", -- Lighter background (status bars)
                base02 = "#1e1e2e", -- Selection background
                base03 = "#83588b", -- Comments, invisibles
                base04 = "#775080", -- Dark foreground
                base05 = "#dc8add", -- Default foreground
                base06 = "#dc8add", -- Light foreground
                base07 = "#775080", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#2b253a", -- Variables, errors, red
                base09 = "#905f97", -- Integers, constants, orange
                base0A = "#443451", -- Classes, types, yellow
                base0B = "#372c45", -- Strings, green
                base0C = "#6a4974", -- Support, regex, cyan
                base0D = "#513b5d", -- Functions, keywords, blue
                base0E = "#5d4268", -- Keywords, storage, magenta
                base0F = "#a96dae", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
