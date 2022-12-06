
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
RegisterCommand("ValDoctor_turnon", function(source, args)    
    if Config.Commands == true then   
        TriggerEvent( "ValDoctor:turnon", "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValDoctor:turnon')
AddEventHandler('ValDoctor:turnon', function(no_String)  
	EnableResouresIMAP() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  
RegisterCommand("ValDoctor_turnoff", function(source, args)  
    if Config.Commands == true then       
        TriggerEvent( "ValDoctor:turnoff", "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)
RegisterNetEvent('ValDoctor:turnoff')
AddEventHandler('ValDoctor:turnoff', function(no_String)  
	DisableResourcesIMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
