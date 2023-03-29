
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("SaloonRoom2B_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "SaloonRoom2B:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoom2B:turnon')
AddEventHandler('SaloonRoom2B:turnon', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("SaloonRoom2B_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "SaloonRoom2B:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoom2B:turnoff')
AddEventHandler('SaloonRoom2B:turnoff', function(no_String)  
	DisableResourcesYMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
