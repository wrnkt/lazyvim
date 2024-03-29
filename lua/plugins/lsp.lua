return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        -- "vue",
        -- "svelte",

        -- low level
        "c",
        "cpp",
        "rust",
        "zig",

        -- high level
        "java",
        "kotlin",
        "python",
        "go",
        "haskell",

        -- scripting
        "bash",
        "awk",

        -- build
        "cmake",
        "dockerfile",

        -- config
        "json",
        "xml",
        "yaml",
        "toml",

        -- docs
        "doxygen",
        "markdown",
        "markdown_inline",

        -- git
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",

        -- misc
        "query", -- for treesitter queries
        "regex",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    lazy = false,
    opts = function(_, opts)
      local none_ls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources, {
        none_ls.builtins.formatting.clang_format.with({
          extra_args = {
            "-style=file:" .. vim.fn.expand("~/.clang-format"),
          },
          filetype = { "c", "cpp", "java" },
        }),
      })
    end,
  },
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^3", -- Recommended
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
  },
}
