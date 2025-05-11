local function codeium_status()
    local status = require('codeium.virtual_text').status()

    if status.state == 'idle' then
        return '[Codeium: Idle]'
    end

    if status.state == 'waiting' then
        return "[Codeium: Waiting]"
    end

    if status.state == 'completions' and status.total > 0 then
        return string.format('[Codeium: Completions=%d/%d]', status.current, status.total)
    end

    return 'Unknown'
end

require('lualine').setup {
    sections = {
        lualine_c = {'filename', codeium_status}
    }
}
