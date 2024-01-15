# { config, ... }:
{
  # Import all your configuration modules here
  imports = [
    {
      config = {
        globals.mapleader = " ";
        extraConfigLua = "
          vim.opt.isfname:append(\"@-@\")
          vim.opt.clipboard:append { 'unnamedplus' }
        ";
        options = {
          number = true;
          relativenumber = true;
          tabstop = 4;
          softtabstop = 4;
          shiftwidth = 4;
          autoindent = true;
          expandtab = true;
          smartcase = true;
          smartindent = true;
          wrap = false;
          swapfile = false;

          # undodir = "${config.home.homeDirectory}/.vim/undodir";
          undofile = true;
          hlsearch = false;
          incsearch = true;

          # highlights
          termguicolors = true;
          cursorline = true;
          winblend = 0;
          wildoptions = "pum";
          pumblend = 5;

          scrolloff = 8;
          signcolumn = "yes";

          updatetime = 50;
          colorcolumn = "80";

          hidden = true;
          whichwrap = "b,s,<,>,[,],h,l";
          pumheight = 8;
          fileencoding = "utf-8";
          cmdheight = 1;
          splitbelow = true;
          splitright = true;
          conceallevel = 0;
          showtabline = 2;
          showmode = false;
          backup = false;
          writebackup = false;
          timeoutlen = 100;
          clipboard = "unnamedplus";
          ignorecase = true; # Case insensitive searching UNLESS /C or capital in search
          sidescrolloff = 5;
          mouse = "a";
        };
      };
    }
    ./editor.nix
    ./bufferline.nix
    ./keymaps.nix
    ./lsp.nix
    ./cmp.nix
    ./ui.nix
  ];
}
