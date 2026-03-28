# 🚀 My Neovim Configuration

A highly configured, "10/10" Neovim setup based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). This configuration provides a robust development environment with LSP, formatting, linting, and debugging support for a wide range of languages.

## ✨ Features
- **⚡ Blazing Fast**: Optimized for performance with lazy loading.
- **🎨 UI**: Beautiful [Tokyonight](https://github.com/folke/tokyonight.nvim) theme with [Mini.nvim](https://github.com/echasnovski/mini.nvim) components.
- **🧠 LSP Support**: Full Language Server Protocol support for:
  - Python (`pyright`)
  - JavaScript / TypeScript (`ts_ls`)
  - Go (`gopls`)
  - Rust (`rust_analyzer`)
  - C / C++ (`clangd`)
  - HTML / CSS / JSON / YAML / Markdown / Docker / Terraform
- **✨ Formatting**: Auto-formatting on save via [conform.nvim](https://github.com/stevearc/conform.nvim) using standard tools (`prettier`, `black`, `isort`, `clang-format`, `gofumpt`, etc.).
- **🚨 Linting**: Real-time linting with [nvim-lint](https://github.com/mfussenegger/nvim-lint) (`eslint_d`, `pylint`, `markdownlint`, etc.).
- **📦 Package Management**: Automatic tool installation via [Mason](https://github.com/williamboman/mason.nvim).
- **🔭 Fuzzy Finding**: Powerful file and text search with [Telescope](https://github.com/nvim-telescope/telescope.nvim).
- **🌳 File Explorer**: [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for file management.
- **🤖 Autocompletion**: Fast completion with [blink.cmp](https://github.com/saghen/blink.cmp).

## 🛠️ Prerequisites

- **Neovim** >= 0.10.0
- **Git**
- **Make**, **GCC**, **Rippergrep**, **fd** (for Telescope and build dependencies)
- A **Nerd Font** (recommended for icons)
- **Node.js**, **Python**, **Go**, **Rust** (depending on which language tools you need)

## 📥 Installation

1.  **Backup your existing config:**

    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    mv ~/.local/state/nvim ~/.local/state/nvim.bak
    mv ~/.cache/nvim ~/.cache/nvim.bak
    ```

2.  **Clone this repository:**

    ```bash
    git clone https://github.com/Pujan-Dev/Nvim.git ~/.config/nvim
    ```

3.  **Start Neovim:**

    ```bash
    nvim
    ```

    _Lazy.nvim will automatically install all plugins. Mason will install LSPs, formatters, and linters._

## ⌨️ Keymaps

The Leader key is set to `<Space>`.

| Key              | Action                          |
| :--------------- | :------------------------------ |
| `<Space>sf`      | Search Files                    |
| `<Space>sg`      | Search by Grep                  |
| `<Space><Space>` | Find Buffers                    |
| `<Space>f`       | Format Buffer                   |
| `<Space>e`       | Toggle File Explorer (Neo-tree) |
| `gd`             | Go to Definition                |
| `gr`             | Go to References                |
| `K`              | Hover Documentation             |

_Press `<Space>sk` to search all keymaps._

## 📂 Structure

```text
~/.config/nvim
├── init.lua              # Main configuration file
├── lazy-lock.json        # Plugin lockfile
├── lua/
│   ├── custom/           # Your custom plugins and configs
│   │   └── plugins/      # Add new plugins here
│   └── kickstart/        # Core Kickstart modules
│       └── plugins/      # Core plugins (LSP, Autoformat, etc.)
└── README.md
```

## 🔧 Customization

- **Indentation**: Configured for 2 spaces by default.
- **Adding Plugins**: Create a new file in `lua/custom/plugins/` (e.g., `lua/custom/plugins/my-plugin.lua`) and return a table with the plugin spec.

## 👏 Credits

- Based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) by TJ DeVries.

