
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("SaloonRoomB_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "SaloonRoomB:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoomB:turnon')
AddEventHandler('SaloonRoomB:turnon', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("SaloonRoomB_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "SaloonRoomB:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoomB:turnoff')
AddEventHandler('SaloonRoomB:turnoff', function(no_String)  
	DisableResourcesIMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
