-- __   _  _____  _______ _____ _______ __   __
-- | \  | |     |    |      |   |______   \_/  
-- |  \_| |_____|    |    __|__ |          |   

require("notify").setup({
    stages = "slide",
    on_open = nil,
    on_close = nil,

    render = "default", -- or minimal
    timeout = 5000,
})
