local M = {}


M.keys = function(_table) 
    local keys = {}

    for key, _ in pairs(_table) do
        table.insert(keys, key)
    end

    return keys
end

M.merge = function(tableOne, tableTwo) 
    local merged = {}

    for key, value in pairs(tableOne) do
        merged[key] = value
    end

    for key, value in pairs(tableTwo) do
        merged[key] = value
    end

    return merged
end


return M
