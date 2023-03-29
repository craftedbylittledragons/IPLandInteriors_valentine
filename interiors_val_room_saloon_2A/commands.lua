
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("SalooonRoom2A_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "SalooonRoom2A:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SalooonRoom2A:turnon')
AddEventHandler('SalooonRoom2A:turnon', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("SalooonRoom2A_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "SalooonRoom2A:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SalooonRoom2A:turnoff')
AddEventHandler('SalooonRoom2A:turnoff', function(no_String)  
	DisableResourcesYMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
