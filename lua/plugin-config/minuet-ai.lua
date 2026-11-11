local api_key = os.getenv("NVIM_AI_API_KEY")
if not api_key or api_key == "" then
    return
end
local endpoint = os.getenv("NVIM_AI_ENDPOINT")
if not endpoint or endpoint == "" then
    endpoint = "https://openai.com/v1/chat/completions"
end
local model = os.getenv("NVIM_AI_MODEL")
if not model or model == "" then
    model = "gpt-6-sol"
end

require('minuet').setup {
    provider = "openai_compatible",
    -- 请求控制
    request_timeout = 5,
    throttle = 1500, -- 请求触发限制
    debounce = 600, -- 请求防抖
    n_completions = 1, -- 候选建议数量
    provider_options = {
        openai_compatible = {
            api_key = 'NVIM_AI_API_KEY',
            end_point = endpoint,
            model = model,
            name = 'DefaultProvider',
            stream = true,
            optional = {
                max_tokens = 128, -- 控制补全长度
                top_p = 0.9, -- 采样策略
                provider = {
                    sort = 'throughput', -- 选择模型的策略
                },
                reasoning_effort = 'none' -- 推理策略
            },
        }
    },
    virtualtext = {
        auto_trigger_ft = { "*" },
        keymap = {
            accept = "nil",
            accept_line = "<C-j>",
            next = "<A-]>",
            prev = "<A-[>",
            dismiss = "<C-e>",
        },
    },
}

-- 智能补全
vim.keymap.set("i", "<Tab>", function()
    local vt = require("minuet.virtualtext").action

    if vt.is_visible() then
        vt.accept()
        return ""
    end

    return "<Tab>"
end, {
    expr = true,
    desc = "Accept Minuet or Tab"
})

