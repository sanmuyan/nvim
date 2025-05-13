local utils = require("utils")

-- vim.api.nvim_create_user_command("Config", function(opts)
--     local args = opts.fargs
--     if args[1] == "Upload" then
--         utils.config_upload()
--     end
--     if args[1] == "Download" then
--         utils.config_download()
--     end
--     if args[1] == "Init" then
--         utils.config_init()
--     end
-- end, {
--     nargs = 1,
--     complete = function()
--         local commands = {"Upload", "Download", "Init"}
--         return commands
--     end
-- })

vim.api.nvim_create_user_command("ConfigInit", function()
    utils.config_init()
end, {})

vim.api.nvim_create_user_command("ConfigUpload", function()
    utils.config_upload()
end, {})

vim.api.nvim_create_user_command("ConfigDownload", function()
    utils.config_download()
end, {})
