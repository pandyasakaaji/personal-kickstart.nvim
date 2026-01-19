local transparent_groups = {
  -- Telescope
  'TelescopeNormal',
  'TelescopeBorder',
  'TelescopePromptNormal',
  'TelescopePromptBorder',
  'TelescopeResultsNormal',
  'TelescopeResultsBorder',
  'TelescopePreviewNormal',
  'TelescopePreviewBorder',

  -- Neo-tree
  'NeoTreeNormal',
  'NeoTreeNormalNC',
  'NeoTreeVertSplit',
  'NeoTreeWinSeparator',
  'NeoTreeEndOfBuffer',
  'NeoTreeFloatNormal',
  'NeoTreeFloatBorder',

  -- Fidget (LSP Status)
  'FidgetNormal',
  'FidgetTask',

  -- Lualine
  'StatusLine',
  'StatusLineNC',
  'WinSeparator',

  -- Notify
  'NormalFloat',
  'NotifyBackground',
  'NotifyERRORBody',
  'NotifyWARNBody',
  'NotifyINFOBody',
  'NotifyDEBUGBody',
  'NotifyTRACEBody',
  'NoiceCmdlinePopup',
  'NoiceCmdlinePopupBorder',
  'NoicePopupmenu',
  'NoicePopupmenuBorder',
  'Pmenu',
  'FloatBorder',
  'NormalFloat',
}

for _, group in ipairs(transparent_groups) do
  vim.api.nvim_set_hl(0, group, { bg = 'none', ctermbg = 'none', force = true })
end
