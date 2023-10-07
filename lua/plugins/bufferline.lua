return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require('bufferline').setup({
      options = {
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
            or (e == "warning" and " " or "" )
            s = s .. n .. sym
          end
          return s
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text_align = "left",
            separator = true
          }
        },
        color_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = true,
        sort_by = "relative_directory"
      }
    })
    -- Bufferline Keymaps
    local keymap = vim.keymap
    keymap.set("n", "<S-l>", ":BufferLineCycleNext<cr>", { silent = true })
    keymap.set("n", "<S-h>", ":BufferLineCyclePrev<cr>", { silent = true })
  end
}
