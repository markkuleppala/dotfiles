local modules = {}

-- Remove plugin from modules.global.init
-- modules['kevinhwang91/rnvimr'] = false

-- Rewrite plugin settings from modules.global.init
-- modules['kevinhwang91/rnvimr'] = {
--     your code
-- }

-- Add new plugin
-- modules['sheerun/vim-polyglot'] = {
--     your code
-- }

local ui_config = require("modules.global.configs.ui")

modules['akinsho/nvim-bufferline.lua'] = {
    config = ui_config.nvim_bufferline, 
    requires = "kyazdani42/nvim-web-devicons"
}

return modules
