--------------------------------------------------
-- Printed Messages on Screen --------------------
--------------------------------------------------
--- These are from syn_county scripts, and have not been modified
--- This one stays positioned in the center of the screen largish text.
function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    Citizen.InvokeNative(0xADA9255D, 10);
    DisplayText(str, x, y)
 end 
 
 --- This one is smaller and attached to a fixed point, regardless of camera angle. 
 function DrawText3D(x, y, z, text)
     local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
     local px,py,pz=table.unpack(GetGameplayCamCoord())  
     local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
     local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
     if onScreen then
       SetTextScale(0.30, 0.30)
       SetTextFontForCurrentCommand(1)
       SetTextColor(255, 255, 255, 215)
       SetTextCentre(1)
       DisplayText(str,_x,_y)
       local factor = (string.len(text)) / 225
       DrawSprite("feeds", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 35, 35, 35, 190, 0)
     end
 end