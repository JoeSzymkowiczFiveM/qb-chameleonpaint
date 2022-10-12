local QBCore = exports['qb-core']:GetCoreObject()
local gameBuild = GetGameBuildNumber()

local function setMods()
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local veh = QBCore.Functions.GetClosestVehicle(pedCoords)
    local myCar = QBCore.Functions.GetVehicleProperties(veh)
    TriggerServerEvent('qb-chameleonpaint:server:setMods', myCar)
end


RegisterNetEvent('qb-chameleonpaint:client:sprayVehicle')
AddEventHandler('qb-chameleonpaint:client:sprayVehicle', function(name, index)
    local ped = PlayerPedId()
    if not IsPedInAnyVehicle(ped, false) then
        local dict1, anim1 = 'switch@franklin@lamar_tagging_wall', 'lamar_tagging_wall_loop_lamar'
		local anim2 = 'lamar_tagging_exit_loop_lamar'
        local can_model = `prop_cs_spray_can`
        RequestModel(can_model)
        while not HasModelLoaded(can_model) do
            Citizen.Wait(1)
            RequestModel(can_model)
        end
        local prop = CreateObject(can_model, GetEntityCoords(ped), true, true, true)
		AttachEntityToEntity(prop, ped, GetPedBoneIndex(ped, 57005), 0.12, 0.0, -0.04, -70.0, 0.0, -10.0, true, true, false, false, 1, true)
        QBCore.Functions.Progressbar("shaking", 'Shaking can', 15000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = dict1,
            anim = anim1,
            flags = 1,
        }, {}, {}, function()
            ClearPedTasks(ped)
            TriggerServerEvent("InteractSound_SV:PlayOnSource", "spraypaint", 0.3)
            QBCore.Functions.Progressbar("painting", 'Painting', 15000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = dict1,
                anim = anim2,
                flags = 1,
            }, {}, {}, function()
                local pedCoords = GetEntityCoords(ped)
                local vehicle = QBCore.Functions.GetClosestVehicle(pedCoords)
                SetVehicleModKit(vehicle, 0)
                SetVehicleColours(vehicle, Config.ChameleonColors[index][gameBuild], Config.ChameleonColors[index][gameBuild])
                setMods()
                DeleteObject(prop)
                ClearPedTasks(ped)
            end, function() -- Cancel
                DeleteObject(prop)
                ClearPedTasks(ped)
            end)
        end, function() -- Cancel
            DeleteObject(prop)
            ClearPedTasks(ped)
        end)
    end
end)

