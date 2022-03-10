vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

  -- Neovim tree lua
--[[  $QT_IM_MODULE use {]]
    --[['kyazdani42/nvim-tree.lua',]]
    --[[requires = {]]
      --[['kyazdani42/nvim-web-devicons',  optional, for file icon]]
    --[[},]]
    --[[config = function() require'nvim-tree'.setup {} end]]
  --[[}]]

  use "projekt0n/github-nvim-theme"

end)
