local configs = {}

local funcs = require "core.funcs"

-- configs["custom_events"] = function()
--     funcs.augroups({
--         custom_bufs = {
--             {"BufWritePre", "*", ":Neoformat"},
--         }
--     })
-- end

-- Remove function events from configs.global.init
-- configs['events'] = false
--
-- Remove function events from configs.global.init
-- configs['events'] = false

-- Rewrite function events from configs.global.init
-- configs['events'] = function()
--   your code
-- end

-- Add new function
-- configs['my_func'] = function()
--   your code
-- end

return configs