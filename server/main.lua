local QBCore = exports['qb-core']:GetCoreObject()

for k, v in pairs(Config.ChameleonColors) do
    QBCore.Functions.CreateUseableItem('chameleonpaint_'..k, function(source, item)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if Player.Functions.RemoveItem('chameleonpaint_'..k, 1) then
            TriggerClientEvent('qb-chameleonpaint:client:sprayVehicle', src, item.name, k)
        end
    end)
end


local function IsVehicleOwned(plate)
    local retval = false
    local result = MySQL.Sync.fetchScalar('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
    if result then retval = true end
    return retval
end


RegisterNetEvent("qb-chameleonpaint:server:setMods", function(myCar)
    if IsVehicleOwned(myCar.plate) then
        MySQL.Async.execute('UPDATE player_vehicles SET mods = ? WHERE plate = ?', {json.encode(myCar), myCar.plate})
    end
end)