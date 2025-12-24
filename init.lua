require("user.core.config")
require("user.core.keymap")
require("user.core.copy")
require("user.plugins.colorscheme")
require("user.plugins.lualine")
require("user.plugins.lspconfig")

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Require for packer.nvim plugin

  -- Colorscheme plugin
  use 'folke/tokyonight.nvim' -- tokyonight, tokyonight-day, tokyonight-storm
  use "ellisonleao/gruvbox.nvim" -- gruvbox

  -- UI plugin
  use 'nvim-tree/nvim-web-devicons' -- Icon plugin
  use {
    'nvim-lualine/lualine.nvim', -- Status line plugin
    requires = {
      'nvim-tree/nvim-web-devicons',
      opt = true,
    }
  }

  use "neovim/nvim-lspconfig"

  if packer_bootstrap then
    require('packer').sync()
  end
end)

