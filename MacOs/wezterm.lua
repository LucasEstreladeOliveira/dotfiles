local wezterm = require("wezterm")

return {
  font_size = 12,
  scrollback_lines = 10000,
  enable_tab_bar = false,
  audible_bell = "Disabled",
  line_height = 1.4,
  adjust_window_size_when_changing_font_size = false,
  window_decorations = "RESIZE",
  window_close_confirmation = "NeverPrompt",
  color_scheme = "Palenight (Gogh)",
  window_padding = {
    left = 20,
    right = 20,
    top = 20,
    bottom = 20,
  },
  keys = {
    { 
      key = "U", 
      mods = "CTRL|SHIFT", 
      action = wezterm.action({
        QuickSelectArgs = { 
          patterns = {
            "https?://\\S+",
          },
          action = wezterm.action_callback(function (window, pane)
            local url = window:get_selection_text_for_pane(pane)
            wezterm.log_info("Opening URL: " .. url)
            wezterm.open_with("open", url)
          end),
        },
    }),
   },
   {
    key = "w",
    mods = "CMD",
    action = wezterm.action.CloseCurrentTab({ confirm = false }),
   }
  },
}
