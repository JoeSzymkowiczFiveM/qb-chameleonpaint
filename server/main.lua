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