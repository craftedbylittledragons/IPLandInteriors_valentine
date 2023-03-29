
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("SaloonRoom1B_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "SaloonRoom1B:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoom1B:turnon')
AddEventHandler('SaloonRoom1B:turnon', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("SaloonRoom1B_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "SaloonRoom1B:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoom1B:turnoff')
AddEventHandler('SaloonRoom1B:turnoff', function(no_String)  
	DisableResourcesYMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
