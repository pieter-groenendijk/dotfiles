return {
    "leoluz/nvim-dap-go",
    dependencies = {
        "mfussenegger/nvim-dap",
    },
    config = function ()
        local goDap = require("dap-go")

        goDap.setup()
    end
}
