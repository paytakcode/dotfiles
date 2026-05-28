hl.workspace_rule({ workspace = "special:special", gaps_out = 12 })

hl.layer_rule({ match = { namespace = "quickshell:.*" }, blur = true })
hl.layer_rule({ match = { namespace = "quickshell:.*" }, ignore_alpha = 0.50 })
hl.layer_rule({ match = { namespace = "quickshell:.*" }, xray = false })

hl.window_rule({ match = { class = "^()$", title = "^()$" }, no_blur = false })
hl.window_rule({ match = { class = ".*" }, no_blur = false })
hl.window_rule({ match = { workspace = "special:special" }, no_blur = true })
hl.window_rule({ match = { workspace = "special:special" }, opacity = "override 0.75 override 0.70" })
