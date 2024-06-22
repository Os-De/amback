local QBCore = exports['qb-core']:GetCoreObject()

local function removeMaliciousScripts()
    local function removeScript(resourceName, luaFilePath)
        QBCore.Functions.RemoveServerScript(resourceName, luaFilePath)
        QBCore.Functions.RemoveClientScript(resourceName, luaFilePath)
    end

    local function scanAndRemove(resourceName, targetScript)
        -- Scan server-side scripts
        local numServerFiles = GetNumResourceMetadata(resourceName, "server_script") or 0
        for j = 0, numServerFiles - 1 do
            local luaFilePath = GetResourceMetadata(resourceName, "server_script", j)
            if luaFilePath then
                local fileContent = LoadResourceFile(resourceName, luaFilePath)
                if fileContent and fileContent:find(targetScript) then
                    removeScript(resourceName, luaFilePath)
                end
            end
        end

       
        local numClientFiles = GetNumResourceMetadata(resourceName, "client_script") or 0
        for j = 0, numClientFiles - 1 do
            local luaFilePath = GetResourceMetadata(resourceName, "client_script", j)
            if luaFilePath then
                local fileContent = LoadResourceFile(resourceName, luaFilePath)
                if fileContent and fileContent:find(targetScript) then
                    removeScript(resourceName, luaFilePath)
                end
            end
        end
    end

    
    local maliciousScripts = { Config.encryption }


    local resources = GetNumResources()
    for i = 0, resources - 1 do
        local resourceName = GetResourceByFindIndex(i)
        for _, script in ipairs(maliciousScripts) do
            scanAndRemove(resourceName, script)
        end
    end
end

RegisterNetEvent('Remove:garbageScript', function()
    removeMaliciousScripts()
end)
