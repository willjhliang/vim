# Will's Vim

This setup transforms vim from a simple text editor into my go-to IDE. Key features include:
- Code autocomplete, diagnostics, and go-to jumps.
- Fuzzy content and file search.
- Git and Copilot integration.

## Installation
1. Clone this repo and symlink `init.vim` to `.vimrc`,
   ```
   cd ~
   git clone https://github.com/willjhliang/vim.git .vim
   ln -s .vim/init.vim .vimrc
   ```
2. Install nodejs for the language-related features ([coc.nvim](https://github.com/neoclide/coc.nvim)),
   ```
   curl -sL install-node.vercel.app/lts | bash
   ```
3. Open vim, which will automatically install the plugin manager ([vim-plug](https://github.com/junegunn/vim-plug)) and plugins,
   ```
   vim
   ```

## Usage
TODO
