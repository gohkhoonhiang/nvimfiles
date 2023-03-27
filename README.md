# Setting up nvim from scratch

## Background

I've decided to build nvim from source instead of installing from Homebrew because I've had the experience of
running `brew install <package>` which attempted to update all existing packages, thus breaking something in my nvim.
Since nvim is such a critical tool I use for my living, I want to minimize the risk of it breaking and having to
spend time figuring out how to fix it.

## Building from source

Reference: https://github.com/neovim/neovim/wiki/Building-Neovim

The steps from the official wiki are mostly applicable as-is. A few things to note when building in MacOS:

- Remember to have xcode-select installed.
- Remember to have Homebrew installed.
- Remember to have git installed

After building nvim successfully, you should see that the executable is installed under `/usr/local/bin/nvim`.
Make sure you have set your `$PATH` to `/usr/local/bin` and restarted your bash session.
Then you should be able to launch nvim.

## Configuring

Reference: https://github.com/neovim/neovim/wiki/Configuration

I decided to start from scratch, so I didn't use the nvim-from-vim guide. Here's how I configure from scratch.

- Create a `nvimfiles` directory (that is this repository) in my usual workspace.
- Then create a symbolink `.config/nvim` pointing to the `nvimfiles` directory above.
This will tell nvim where to load its configurations.
- I use https://github.com/folke/lazy.nvim for plugin management, so the directory structure is setup accordingly.
(This is my personal convention according to my own usage logic.)

```bash
├── init.lua // entry point for loading plugins
├── lazy-lock.json // lock file for plugins
├── lua // lua scripts
│   └── conf // plugin configurations
│       ├── lazy.lua // package manager configs
│       ├── mappings.lua // functions for key mappings
│       ├── settings.lua // global key bindings
│       ├── <...>.lua // plugin specific key bindings and configs
│       └── telescope.lua // plugin specific key bindings and configs
└── plugins // plugin installation, should be .gitignore-d
    ├── diffview.nvim
    ├── ...
    └── telescope.nvim
```
