
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("SaloonRoom1A_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "SaloonRoom1A:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoom1A:turnon')
AddEventHandler('SaloonRoom1A:turnon', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("SaloonRoom1A_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "SaloonRoom1A:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('SaloonRoom1A:turnoff')
AddEventHandler('SaloonRoom1A:turnoff', function(no_String)  
	DisableResourcesYMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
