Citizen.CreateThread(function()
	for i = 1, 12 do
		Citizen.InvokeNative(0xDC0F817884CDD856, i, false)
	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3000)
       
        if GetPlayerWantedLevel(PlayerId()) ~= 0 then
            SetPlayerWantedLevel(PlayerId(), 0, false)
            SetPlayerWantedLevelNow(PlayerId(), false)
        end
    end
end)

--Enleve toute les voiture de pnj police

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(20)
        local myCoords = GetEntityCoords(GetPlayerPed(-1))
        ClearAreaOfCops(myCoords.x, myCoords.y, myCoords.z, 100.0, 0)
    end
end)

--Enleve les armes de toute les vehicule de police 

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(20)
        DisablePlayerVehicleRewards(PlayerId())
    end
end)