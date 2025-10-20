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
2. [Install nodejs](https://nodejs.org/en/download) for the language-related features ([coc.nvim](https://github.com/neoclide/coc.nvim)) and LLM autocomplete ([copilot.vim](https://github.com/github/copilot.vim)).
3. Open vim, which will automatically install the plugin manager ([vim-plug](https://github.com/junegunn/vim-plug)) and plugins,
   ```
   vim
   ```
4. To use Copilot, login with `:Copilot setup`.

## Usage
TODO
