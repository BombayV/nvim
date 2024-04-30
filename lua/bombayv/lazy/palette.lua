function SetPalette(color)
  local color = color or "mocha"

  local status, palette = pcall(require, "catppuccin.palettes")
  if not status then
    print(("Could not change palette to %s"):format(color))
    return
  end

  local status2, colorscheme = pcall(require, "catppuccin")
  if not status then
    print("Error changing palette")
    return
  end

  palette.get_palette(color)
  colorscheme.setup({
    transparent_background = true
  })
  
  print("Set palette to " .. color)
end

return { 
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme catppuccin")

    SetPalette()
  end
}
