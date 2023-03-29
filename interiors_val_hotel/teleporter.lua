-----------------------------------------------------
-- Telport admin to the hosue location
-----------------------------------------------------
RegisterCommand(Config.ScriptName..":"..Config.Teleporter.name, function(source, args)    
    if args ~= nil then   
        local data =  source 
        local ped = PlayerPedId() 
        local coords = GetEntityCoords(ped) 

        if Config.Teleporter.trigger == true then 
            TriggerEvent( Config.ScriptName..":"..Config.Teleporter.name, Config.x, Config.y, Config.z )
        else 
            print("Teleport Me is disabled in "..Config.ScriptName)
        end 
    end
end)

RegisterNetEvent(Config.ScriptName..":"..Config.Teleporter.name)
AddEventHandler(Config.ScriptName..":"..Config.Teleporter.name, function(x,y,z)  
    if Config.Teleporter.trigger == true then 
        local player = PlayerPedId() 
        Wait(800)
        DoScreenFadeOut(5000) 
        Wait(10000)
        SetEntityCoords(player, x, y, z)
        DoScreenFadeIn(5000)           
    else 
        print("Teleport Me is disabled in "..Config.ScriptName)    
    end
end)
 
