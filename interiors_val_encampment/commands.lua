
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("ValEncampment_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "ValEncampment:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValEncampment:turnon')
AddEventHandler('ValEncampment:turnon', function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("ValEncampment_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "ValEncampment:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValEncampment:turnoff')
AddEventHandler('ValEncampment:turnoff', function(no_String)  
	DisableResourcesYMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
