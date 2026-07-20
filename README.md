<![CDATA[<div align="center">

# ⚡ VibeVim

**a vibe coded neovim configuration**

![Lua](https://img.shields.io/badge/Lua-2C2D72?style=flat&logo=lua&logoColor=white)
![Neovim](https://img.shields.io/badge/Neovim-57A143?style=flat&logo=neovim&logoColor=white)

<pre>
██╗   ██╗██╗██████╗ ███████╗██╗   ██╗██╗███╗   ███╗
██║   ██║██║██╔══██╗██╔════╝██║   ██║██║████╗ ████║
██║   ██║██║██████╔╝█████╗  ██║   ██║██║██╔████╔██║
╚██╗ ██╔╝██║██╔══██╗██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║
 ╚████╔╝ ██║██████╔╝███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═══╝  ╚═╝╚═════╝ ╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
</pre>

</div>

## ✨ Features

- **🎨 Dracula Theme** — Easy on the eyes, dark and vibrant
- **📂 nvim-tree** — File explorer with git status icons
- **🔍 Telescope** — Fuzzy find everything (files, grep, buffers, help)
- **📝 Treesitter** — Better syntax highlighting and indentation
- **🛠️ Built-in LSP** — Powered by Mason + lspconfig (no auto-formatting)
- **🏠 Alpha Dashboard** — Welcome screen with quick actions
- **🧩 Modular** — Clean, organized file structure
- **🚀 lazy.nvim** — Blazing fast plugin management

## 📁 Structure

```
~/.config/nvim/
├── init.lua                  # Entry point
├── lazy-lock.json            # Plugin lockfile
└── lua/
    ├── core/
    │   ├── init.lua          # Loads options, keymaps, lazy
    │   ├── options.lua       # Editor settings
    │   ├── keymaps.lua       # Key mappings
    │   └── lazy.lua          # lazy.nvim bootstrap
    └── plugins/
        ├── alpha.lua         # Dashboard / welcome screen
        ├── lsp.lua           # LSP config (formatting disabled)
        ├── mason.lua         # LSP server installer
        ├── nvim-tree.lua     # File explorer
        ├── telescope.lua     # Fuzzy finder
        ├── theme.lua         # Dracula colorscheme
        └── treesitter.lua    # Syntax highlighting
```

## 🚀 Installation

```bash
# Backup your existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone VibeVim
git clone https://github.com/yourusername/VibeVim ~/.config/nvim

# Start neovim — plugins install automatically
nvim
```

> **Prerequisites:** [Neovim 0.10+](https://github.com/neovim/neovim/releases), [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope live grep), [make & gcc](https://gcc.gnu.org/) (for Telescope fzf-native build)

## ⌨️ Keymaps

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | List buffers |
| `<leader>fh` | Help tags |
| `<leader>fr` | Recent files |
| `<leader>f.` | Resume last picker |
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>Q` | Force quit |
| `gd` | Go to definition |
| `K` | Hover documentation |
| `gr` | Find references |
| `gi` | Go to implementation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `[d` / `]d` | Previous / next diagnostic |
| `<leader>d` | Show diagnostic float |
| `<Alt+j>` / `<Alt+k>` | Move line up/down |

## 🛠️ LSP Servers

Automatically installed by Mason:
- `clangd` (C/C++)
- `lua_ls` (Lua)
- `pyright` (Python)
- `rust_analyzer` (Rust)
- `ts_ls` (TypeScript/JavaScript)

> Formatting is **disabled** — no auto-formatting on save. You're in full control.

## 🎨 Customization

Every plugin has its own file under `lua/plugins/`. Add new ones by creating a file there — lazy.nvim auto-discovers them.

```lua
-- lua/plugins/my-plugin.lua
return {
  "author/plugin-name",
  config = function()
    -- your setup
  end,
}
```

## 📄 License

MIT — do whatever you want with it.

---

<p align="center"><strong>VibeVim</strong> — code with good vibes ✌️</p>
]]>