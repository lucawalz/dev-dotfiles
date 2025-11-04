return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- list of servers for mason to install
      ensure_installed = {
        "lua_ls",        -- Lua 
        "pyright",       -- Python 
        "jdtls",         -- Java 
        -- TODO: FIX --> "nil_ls",        -- Nix 
        "bashls",        -- Bash/Shell scripts
        "dockerls",      -- Dockerfile
        "docker_compose_language_service", -- Docker Compose
        "yamlls",        -- YAML 
        "jsonls",        -- JSON
        "marksman",      -- Markdown
        "terraformls",   -- Terraform (if you use it in sdi-notes)

      },
    },
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        },
      },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "stylua",        -- Lua formatter
        "black",         -- Python formatter
        "isort",         -- Python import sorter
        "pylint",        -- Python linter
        "shfmt",         -- Shell script formatter
        "shellcheck",    -- Shell script linter
        "yamlfmt",       -- YAML formatter
        "yamllint",      -- YAML linter
        "prettier",      -- General formatter (JSON, YAML, Markdown)
        -- TODO: Java tools
        -- "google-java-format", -- Java formatter
      },
    },
    dependencies = {
      "williamboman/mason.nvim",
    },
  },
}