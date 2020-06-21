ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("cam", function(source, args, raw)          -- Camera Man and Boss Access only
    local src = source                                      -- Added 'xPlayer.job.name == 'Journalist' to prevent other jobs from accessing said props.'
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.name == 'Journalist' then
        if xPlayer.job.grade == 1 or xPlayer.job.grade == 4 then
        TriggerClientEvent("Mic:ToggleBMic", src)
        end
    end 
end)

RegisterCommand("bmic", function(source, args, raw)         -- Crew Access and Boss Access only
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.name == 'Journalist' then
        if xPlayer.job.grade == 0 or xPlayer.job.grade == 4 then
        TriggerClientEvent("Mic:ToggleBMic", src)
        end
    end
end)

RegisterCommand("mic", function(source, args, raw)          -- Anchor, Reporter Access and Boss Access only
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.name == 'Journalist' then
        if xPlayer.job.grade == 2 or xPlayer.job.grade == 3 or xPlayer.job.grade == 4 then
        TriggerClientEvent("Mic:ToggleMic", src)
        end
    end
end)
