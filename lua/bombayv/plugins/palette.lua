vim.cmd.colorscheme "catppuccin" 
local paletteStatus, palette = pcall(require, "catppuccin.palettes")
if not paletteStatus then
  print("Palette not found")
  return
end

local status, colorscheme = pcall(require, "catppuccin")
if not status then
  print("Colorscheme not found")
  return
end

palette.get_palette "mocha"
colorscheme.setup({
	transparent_background = true,
})
