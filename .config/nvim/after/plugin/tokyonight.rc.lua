local status, tokyonight = pcall(require, "tokyonight")
if (not status) then return end

tokyonight.setup({
  style = "moon",
  transparent = true,
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  darkSidebar = true,
  darkFloat = true,
  day_brightness = 0.5,
});

vim.cmd[[colorscheme tokyonight]]
