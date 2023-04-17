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
 



--------------------------------------------------
-- Teleporters -----------------------------------
-------------------------------------------------- 
-- Enter Scene 
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)    
        local player_coords = GetEntityCoords(PlayerPedId())   
        if Config.TeleportEnter_On == true then       
            if (Vdist(player_coords.x, player_coords.y, player_coords.z, Config.EnterStoreRoom.x, Config.EnterStoreRoom.y, Config.EnterStoreRoom.z) < Config.TeleportDistance) then -- cords for door go here                
                DrawTxt(Config.TeleporterPrompt, 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
                if IsControlJustReleased(0, Config.definedkey.hash) then -- Checks for key pressed
                    local player = PlayerPedId() 
                    DoScreenFadeOut(Config.FadeTimer)
                    Wait(Config.WaitTimer) 		
                    FreezeEntityPosition(player, true) -- freeze player  -- Player can fall through the map in certain situations	
                    SetEntityCoords(player, Config.ExitStoreRoom.x, Config.ExitStoreRoom.y, Config.ExitStoreRoom.z)
                    SetEntityHeading(player, Config.EnterStoreRoom.h)

                    Wait(Config.WaitTimer) -- wait for ymap to load 
                    DoScreenFadeIn(Config.FadeTimer) 
                    FreezeEntityPosition(player, false) -- unfreeze player. 
                end
            end
        end
    end
end)  -- close thread 
            
           
-- Exit Scene
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1) 
        local player_coords = GetEntityCoords(PlayerPedId())  
        if Config.TeleportExit_On == true then   
            if (Vdist(player_coords.x, player_coords.y, player_coords.z, Config.ExitStoreRoom.x, Config.ExitStoreRoom.y, Config.ExitStoreRoom.z) < Config.TeleportDistance) then -- cords for door go here
                DrawTxt(Config.TeleporterPrompt, 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
                if IsControlJustReleased(0, Config.definedkey.hash) then -- Checks for key pressed
                    local player = PlayerPedId() 
                    DoScreenFadeOut(Config.FadeTimer)
                    Wait(Config.WaitTimer) 		
                    FreezeEntityPosition(player, true) -- freeze player  -- Player can fall through the map in certain situations	
                    SetEntityCoords(player, Config.EnterStoreRoom.x, Config.EnterStoreRoom.y, Config.EnterStoreRoom.z)
                    SetEntityHeading(player, Config.ExitStoreRoom.h)

                    Wait(Config.WaitTimer) -- wait for ymap to load 
                    DoScreenFadeIn(Config.FadeTimer) 
                    FreezeEntityPosition(player, false) -- unfreeze player. 
                end
            end
        end
    end
end)  -- close thread 
