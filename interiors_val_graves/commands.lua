
-----------------------------------------------------
------ admin commands to control the bar ----------
--- add admind perms later
-----------------------------------------------------
print("Registered Command: "..Config.ScriptName..":"..Config.Commands.start)
RegisterCommand( Config.ScriptName..":"..Config.Commands.start, function(source, args)    
    if Config.Commands.trigger == true then   
        TriggerEvent( Config.ScriptName..":"..Config.Commands.start, "ok" ) 
    else 
        print("Turn On IMAP is disabled in script "..Config.Label)
    end
end)

RegisterNetEvent( Config.ScriptName..":"..Config.Commands.start)
AddEventHandler( Config.ScriptName..":"..Config.Commands.start, function(no_String)  
	EnableResouresYMAPS() 
    EnableResouresINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end) 
  

print("Registered Command: "..Config.ScriptName..":"..Config.Commands.stop)
RegisterCommand( Config.ScriptName..":"..Config.Commands.stop, function(source, args)  
    if Config.Commands.trigger == true then       
        TriggerEvent( Config.ScriptName..":"..Config.Commands.stop, "ok" ) 
    else 
        print("Turn Off IMAP is disabled in script "..Config.Label)
    end
end)

RegisterNetEvent( Config.ScriptName..":"..Config.Commands.stop)
AddEventHandler( Config.ScriptName..":"..Config.Commands.stop, function(no_String)  
	DisableResourcesYMAPS()
    DisableResourcesINTERIORS(Config.x, Config.y, Config.z)
    Wait(800) 
end)  
