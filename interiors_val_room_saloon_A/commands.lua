
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("SaloonRoomA_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "SaloonRoomA:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoomA:turnon')
AddEventHandler('SaloonRoomA:turnon', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("SaloonRoomA_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "SaloonRoomA:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoomA:turnoff')
AddEventHandler('SaloonRoomA:turnoff', function(no_String)  
	DisableResourcesYMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
