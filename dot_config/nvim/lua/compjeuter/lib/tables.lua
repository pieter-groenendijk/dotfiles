local M = {}


M.keys = function(_table) 
    local keys = {}

    for key, _ in pairs(_table) do
        table.insert(keys, key)
    end
end


return M
