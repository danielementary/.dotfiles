return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'moll/vim-bbye',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        themable = true,
        numbers = 'none',
        close_command = 'Bdelete! %d',
        right_mouse_command = nil,
        left_mouse_command = nil,
        middle_mouse_command = nil,
        indicator = {
          icon = '▎',
          style = 'icon',
        },
        buffer_close_icon = ' ',
        modified_icon = '●',
        close_icon = ' ',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 30,
        max_prefix_length = 30,
        tab_size = 21,
        diagnostics = false,
        diagnostics_update_in_insert = false,
        diagnostics_update_on_event = false,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true,
        duplicates_across_groups = true,
        persist_buffer_sort = true,
        move_wraps_at_ends = true,
        separator_style = "slant",
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        sort_by = 'insert_at_end',
      },
      highlights = {
        fill = {
          bg = "#44475A",
          fg = "#44475A",
        },
        separator = {
          fg = "#44475A",
        },
        separator_selected = {
          fg = "#44475A",
        },
        separator_visible = {
          fg = "#44475A",
        },
        buffer_selected = {
          bold = false,
          italic = false,
        },
      },
    }
  end,
}
