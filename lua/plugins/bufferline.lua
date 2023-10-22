return {
  "akinsho/bufferline.nvim",
  version = "*",
  event = 'BufEnter',
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    'ojroques/nvim-bufdel',
  },
  config = function()
    require("bufdel").setup({
      next = 'alternate',
      quit = false,
    })
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
            or (e == "warning" and " " or "󰌶 ")
            s = s .. sym .. n .. ' '
          end
          return s
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text_align = "left",
            separator = true
          },
          {
            filetype = "undotree",
            text = "Undo Tree",
            text_align = "left",
            highlight = "Directory"
          }
        },
        color_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = true,
        sort_by = "relative_directory",
      }
    })
    -- Bufferline Keymaps
    local keymap = vim.keymap
    keymap.set("n", "<S-l>", ":BufferLineCycleNext<cr>", { silent = true })
    keymap.set("n", "<S-h>", ":BufferLineCyclePrev<cr>", { silent = true })
    keymap.set('n', '<leader>bo', ':BufDelOthers<cr>', { desc = 'Close all other buffers', silent = true })
    keymap.set("n", "<leader>bd", ":BufDel!<cr>", { desc = "Close file without saving", silent = true })
    keymap.set("n", "<leader>x", ":w<cr>:BufDel<cr>", { desc = "Write file and close", silent = true })
    keymap.set("n", "<leader>bx", ":w<cr>:BufDel<cr>", { desc = "Write file and close", silent = true })
    keymap.set("n", "<leader>bq", ":w<cr>:BufDelAll<cr>", { desc = "Close all buffers", silent = true })
    keymap.set("n", "<leader>bQ", ":w<cr>:BufDelAll!<cr>", { desc = "Force close all buffers", silent = true })
  end
}
