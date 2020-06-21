ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("cam", function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.grade == 1 then
        TriggerClientEvent("Cam:ToggleCam", src)
    end 
end)

RegisterCommand("bmic", function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.grade == 0 then
        TriggerClientEvent("Mic:ToggleBMic", src)
    end
end)

RegisterCommand("mic", function(source, args, raw)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer ~= nil and xPlayer.job.grade == 2 then
        TriggerClientEvent("Mic:ToggleMic", src)
    end
end)
