return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#191613", -- Default background
                base01 = "#b8a494", -- Lighter background (status bars)
                base02 = "#191613", -- Selection background
                base03 = "#b8a494", -- Comments, invisibles
                base04 = "#d1cbc7", -- Dark foreground
                base05 = "#ded8d3", -- Default foreground
                base06 = "#ded8d3", -- Light foreground
                base07 = "#d1cbc7", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#bf8f69", -- Variables, errors, red
                base09 = "#ddbfa7", -- Integers, constants, orange
                base0A = "#cc9f7a", -- Classes, types, yellow
                base0B = "#cd956a", -- Strings, green
                base0C = "#d4a884", -- Support, regex, cyan
                base0D = "#ce8c57", -- Functions, keywords, blue
                base0E = "#c89b77", -- Keywords, storage, magenta
                base0F = "#e7cfba", -- Deprecated, brown/yellow
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
