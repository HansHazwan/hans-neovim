vim.g.mapleader = ' '

local keymap = vim.keymap.set

keymap('n', '<leader>s', function()
  vim.cmd [[ :wq ]]
end, { silent = true })

keymap('n', '<leader>ct', function()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end, { silent = true })

