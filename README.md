<div align="center">

# ⚡ VibeVim

**a vibe coded neovim configuration**

![Lua](https://img.shields.io/badge/Lua-2C2D72?style=flat&logo=lua&logoColor=white)
![Neovim](https://img.shields.io/badge/Neovim-57A143?style=flat&logo=neovim&logoColor=white)

</div>

```
██╗   ██╗██╗██████╗ ███████╗██╗   ██╗██╗███╗   ███╗
██║   ██║██║██╔══██╗██╔════╝██║   ██║██║████╗ ████║
██║   ██║██║██████╔╝█████╗  ██║   ██║██║██╔████╔██║
╚██╗ ██╔╝██║██╔══██╗██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║
 ╚████╔╝ ██║██████╔╝███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═══╝  ╚═╝╚═════╝ ╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
```

## Features

- Dracula theme — dark, vibrant, easy on the eyes
- nvim-tree — file explorer with git status icons
- Telescope — fuzzy find files, grep, buffers, help
- Treesitter — better syntax highlighting & indentation
- Built-in LSP — Mason + lspconfig (formatting disabled)
- Alpha dashboard — welcome screen with quick actions
- Modular structure — clean, organized file layout
- lazy.nvim — fast plugin management

## Structure

```
~/.config/nvim/
├── init.lua
├── lazy-lock.json
└── lua/
    ├── core/
    │   ├── init.lua       (loads options, keymaps, lazy)
    │   ├── options.lua    (editor settings)
    │   ├── keymaps.lua    (key mappings)
    │   └── lazy.lua       (lazy.nvim bootstrap)
    └── plugins/
        ├── alpha.lua      (dashboard / welcome screen)
        ├── lsp.lua        (LSP config, formatting disabled)
        ├── mason.lua      (LSP server installer)
        ├── nvim-tree.lua  (file explorer)
        ├── telescope.lua  (fuzzy finder)
        ├── theme.lua      (Dracula colorscheme)
        └── treesitter.lua (syntax highlighting)
```

## Installation

```bash
# backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# clone VibeVim
git clone https://github.com/yourusername/VibeVim ~/.config/nvim

# start neovim — plugins install automatically
nvim
```

**Prerequisites:** Neovim 0.10+, [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope live grep), make & gcc (for Telescope fzf-native build)

## Keymaps

| Key | Action |
|-----|--------|
| `Space` + `e` | Toggle file explorer |
| `Space` + `ff` | Find files |
| `Space` + `fg` | Live grep |
| `Space` + `fb` | List buffers |
| `Space` + `fh` | Help tags |
| `Space` + `fr` | Recent files |
| `Space` + `f.` | Resume last picker |
| `Space` + `w` | Save file |
| `Space` + `q` | Quit |
| `Space` + `Q` | Force quit |
| `gd` | Go to definition |
| `K` | Hover documentation |
| `gr` | Find references |
| `gi` | Go to implementation |
| `Space` + `rn` | Rename symbol |
| `Space` + `ca` | Code actions |
| `[d` / `]d` | Previous / next diagnostic |
| `Space` + `d` | Show diagnostic float |
| `Alt` + `j` / `Alt` + `k` | Move line up/down |

## LSP Servers

Automatically installed by Mason:

- `clangd` (C/C++)
- `lua_ls` (Lua)
- `pyright` (Python)
- `rust_analyzer` (Rust)
- `ts_ls` (TypeScript/JavaScript)

> Formatting is **disabled** — no auto-formatting on save.

## Customization

Each plugin has its own file under `lua/plugins/`. Add new ones by creating a file there:

```lua
-- lua/plugins/my-plugin.lua
return {
  "author/plugin-name",
  config = function()
    -- your setup
  end,
}
```

## License

MIT

---

<p align="center">VibeVim — code with good vibes</p>
