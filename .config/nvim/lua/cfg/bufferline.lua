-- ______  _     _ _______ _______ _______  ______        _____ __   _ _______
-- |_____] |     | |______ |______ |______ |_____/ |        |   | \  | |______
-- |_____] |_____| |       |       |______ |    \_ |_____ __|__ |  \_| |______

require "bufferline".setup {
  options = {
    indicator = {
      style = '▍'
    },
    mode = "buffers", -- can also be set to "tabs" to see tabpages
    --themable = false -- whether or not the highlights for this plugin can be overriden.
    themable = true, -- whether or not the highlights for this plugin can be overriden.
    --numbers = "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    ----- @deprecated, please specify numbers as a function to customize the styling
    --number_style = "superscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
    --mappings = true | false,
    --close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    --right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    --left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    --middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    --buffer_close_icon= "",
    --modified_icon = "●",
    --close_icon = "",
    --left_trunc_marker = "",
    --right_trunc_marker = "",
    ----- name_formatter can be used to change the buffer's label in the bufferline.
    ----- Please note some names can/will break the
    ----- bufferline so use this at your discretion knowing that it has
    ----- some limitations that will NOT be fixed.
    --name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
    ---- remove extension from markdown files for example
    --if buf.name:match('%.md') then
    --return vim.fn.fnamemodify(buf.name, ':t:r')
    --end
    --end,
    --max_name_length = 18,
    --max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    --tab_size = 18,
    --diagnostics = false | "nvim_lsp" | "coc"
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      if level == "error" then
        --return " "..count
        return " "
      elseif level == "warning" then
        --return " "..count
        return " "
      elseif level == "hint" then
        return ""
      end
    end,
    --groups = {} -- see :h bufferline-groups for details
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_buffer_default_icon = true,
    show_close_icon = true,
    --show_tab_indicators = true | false
    --persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    ---- can also be a table containing 2 custom separators
    ---- [focused and unfocused]. eg: { "|", "|" }
    --separator_style = "slant" | "padded_slant" | "thick" | "thin" | { "any", "any" },
    separator_style = "thin",
    --enforce_regular_tabs = false | true,
    --always_show_bufferline = true | false,
    offsets = { { filetype = "NvimTree", text = "", text_align = "left" } },
    --sort_by = "id" | "extension" | "relative_directory" | "directory" | "tabs" | function(buffer_a, buffer_b)
    ---- add custom logic
    --return buffer_a.modified > buffer_b.modified
    --end
  },

  --highlights = {
  --fill = {
  --ctermbg = 'NONE',
  --guibg = 'NONE'
  --}
  --},
}

vim.cmd [[hi BufferLineFill NONE]]
