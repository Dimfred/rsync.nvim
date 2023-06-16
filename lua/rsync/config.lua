local config = {}
config.values = {
    project_config_path = ".nvim/rsync.toml",
    auto_sync = true,
    log = true,
    on_exit = function(code, command)
    end,
    on_error = function(output, command)
    end
}

function config.set_defaults(user_defaults)
    user_defaults = vim.F.if_nil(user_defaults, {})

    for key, value in pairs(user_defaults) do
        config.values[key] = value
    end
end

return config
