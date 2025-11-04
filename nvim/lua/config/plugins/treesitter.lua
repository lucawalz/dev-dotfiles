return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({ 
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = {
        "lua",           -- Neovim config
        "vim",           -- Vim script
        "vimdoc",        -- Vim documentation
        "python",        -- Python 
        "java",          -- Java 
        "nix",           -- Nix 
        "bash",          -- Shell scripts
        "dockerfile",    -- Docker
        "yaml",          -- YAML configs
        "json",          -- JSON
        "toml",          -- TOML configs
        "markdown",      -- Markdown
        "markdown_inline", -- Inline markdown
        "gitignore",     -- .gitignore files
        "git_config",    -- Git config
        "git_rebase",    -- Git rebase
        "gitcommit",     -- Git commits
        "query",         -- Treesitter queries
        "regex",         -- Regular expressions
        "c",             -- C (dependencies/system tools)
        "hcl",           -- Terraform/HCL
        "terraform",     -- Terraform
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    vim.treesitter.language.register("bash", "zsh")
  end,
}