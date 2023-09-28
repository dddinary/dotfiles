-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bp"] = { "<cmd>bp<cr>", desc = "Previous Buffer" },
    ["<leader>bn"] = { "<cmd>bn<cr>", desc = "Next Buffer" },
    ["<S-h>"] = { "<cmd>bp<cr>", desc = "Previous Buffer" },
    ["<S-l>"] = { "<cmd>bn<cr>", desc = "Next Buffer" },
    ["<leader>bx"] = { "<cmd>bd<cr>", desc = "Close Buffer" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },

    -- tab
    ["<leader>a"] = { name = "Tab" },
    ["<leader>aN"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>an"] = { "<cmd>tabnext<cr>", desc = "Next tab" },
    ["<leader>ap"] = { "<cmd>tabprevious<cr>", desc = "Previous tab" },
    ["<leader>af"] = { "<cmd>tabfirst<cr>", desc = "First tab" },
    ["<leader>al"] = { "<cmd>tablast<cr>", desc = "Last tab" },
    ["<leader>ad"] = { "<cmd>tabclose<cr>", desc = "Close current tab" },
    ["<leader>ao"] = { "<cmd>tabonly<cr>", desc = "Close tabs except current" },

    -- Move Lines
    ["<A-j>"] = { "<cmd>m .+1<cr>==", desc = "Move down" },
    ["<A-k>"] = { "<cmd>m .-2<cr>==", desc = "Move up" },
    ["∆"] = { "<cmd>m .+1<cr>==", desc = "Move down" },
    ["˚"] = { "<cmd>m .-2<cr>==", desc = "Move up" },

    -- quick save
    ["<C-s>"] = { ":w<cr>", desc = "Save File" },  -- change description but the same command

    -- Clear search, diff update and redraw
    -- taken from runtime/lua/_editor.lua
    ["<leader>ur"] = { "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>", desc = "Clear search, diff update and redraw" },

    -- telescope file browser
    ["<leader>fe"] = { ":Telescope file_browser<CR>", desc = "File browser"},

    ["<leader>h"] = false,
    ["<leader>w"] = false,

  },
  i = {
    ["<A-j>"] = { "<esc><cmd>m .+1<cr>==gi", desc = "Move down" },
    ["<A-k>"] = { "<esc><cmd>m .-2<cr>==gi", desc = "Move up" },
    ["∆"] = { "<esc><cmd>m .+1<cr>==gi", desc = "Move down" },
    ["˚"] = { "<esc><cmd>m .-2<cr>==gi", desc = "Move up" },
  },
  v = {
    ["<A-j>"] = { ":m '>+1<cr>gv=gv", desc = "Move down" },
    ["<A-k>"] = { ":m '<-2<cr>gv=gv", desc = "Move up" },
    ["∆"] = { ":m '>+1<cr>gv=gv", desc = "Move down" },
    ["˚"] = { ":m '<-2<cr>gv=gv", desc = "Move up" },
  },
}
