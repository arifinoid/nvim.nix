{ ... }:
let
  defaultOptions = {
    silent = true;
    noremap = true;
  };
  normal = "n";
  insert = "i";

  map = { mode, key, action, options ? { }, lua ? false }:
    {
      mode = mode;
      key = key;
      action = action;
      options = options;
      lua = lua;
    };
in
{
  keymaps = [
    (map { mode = normal; key = "<C-s>"; action = "<cmd>w<CR>"; options = defaultOptions; })
    {
      mode = normal;
      key = "<C-b>";
      action = "<cmd>NvimTreeToggle<CR>";
      options = defaultOptions;
    }

    # navigation
    {
      mode = normal;
      key = "<C-p>";
      action = "<cmd>Telescope find_files<CR>";
      options = defaultOptions;
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<C-f>";
      options = defaultOptions;
      mode = normal;
    }
    {
      action = "<cmd>BufferLineCyclePrev<CR>";
      key = "<S-Tab>";
      options = defaultOptions;
      mode = normal;
    }
    {
      action = "<cmd>BufferLineCycleNext<CR>";
      key = "<Tab>";
      options = defaultOptions;
      mode = normal;
    }
    {
      action = "<cmd>BufferLinePickClose<CR>";
      key = "<C-w>";
      options = defaultOptions;
      mode = normal;
    }
    {
      action = "<cmd>BufferLinePickClose<CR>";
      key = "<C-w>";
      options = defaultOptions;
      mode = normal;
    }

    (map { mode = normal; key = "<C-1>"; action = "<Cmd>BufferLineGoto 1<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-2>"; action = "<Cmd>BufferLineGoto 2<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-3>"; action = "<Cmd>BufferLineGoto 3<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-4>"; action = "<Cmd>BufferLineGoto 4<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-5>"; action = "<Cmd>BufferLineGoto 5<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-6>"; action = "<Cmd>BufferLineGoto 6<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-7>"; action = "<Cmd>BufferLineGoto 7<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-8>"; action = "<Cmd>BufferLineGoto 8<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-9>"; action = "<Cmd>BufferLineGoto 9<CR>"; options = defaultOptions; })
    (map { mode = normal; key = "<C-0>"; action = "<Cmd>BufferLineGotoLast<CR>"; options = defaultOptions; })

    # lsp
    {
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
      key = "gd";
      options = defaultOptions;
      mode = normal;
    }
    {
      action = "<cmd>lua vim.lsp.buf.declaration()<CR>";
      key = "gD";
      options = defaultOptions;
      mode = normal;
    }
    {
      action = "<cmd>lua vim.lsp.buf.references()<CR>";
      key = "gr";
      options = defaultOptions;
      mode = normal;
    }
    {
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
      key = "gR";
      options = defaultOptions;
      mode = normal;
    }
    {
      action = "<cmd>lua vim.lsp.buf.signature_help()<CR>";
      key = "gh";
      options = defaultOptions;
      mode = normal;
    }


    # (map { mode = "n"; key = "<leader>pv"; action = "vim.cmd.Ex"; options = { }; lua = true; })
    (map { mode = normal; key = "<leader>pv"; action = "<cmd>lua vim.cmd.Ex()<CR>"; options = { }; })
    # keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    # keymap.set("n", "J", "mzJ`z")
    # keymap.set("n", "<C-d>", "<C-d>zz")
    # keymap.set("n", "<C-u>", "<C-u>zz")
    # keymap.set("n", "n", "nzzzv")
    # keymap.set("n", "N", "Nzzzv")
    # keymap.set("x", "<leader>p", '"_dP')

    # keymap.set("n", "<leader>y", '"+y')
    # keymap.set("v", "<leader>y", '"+y')
    # keymap.set("n", "<leader>Y", '"+Y')

    # keymap.set("v", "J", ":m '>+1<CR>gv=gv")
    # keymap.set("v", "K", ":m '>-2<CR>gv=gv")

    # keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
    # keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
    # keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
    # keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

    # keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
    # keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
    # keymap.set("n", "<leader>v", ":MarkdownPreviewToggle<CR>", { silent = true })
  ];
}
