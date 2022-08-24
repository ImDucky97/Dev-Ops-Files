
function SetData()
	players = {}
	for _, player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
		table.insert( players, player )
end

	
	local name = GetPlayerName(PlayerId())
	local id = GetPlayerServerId(PlayerId())
	--Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', '~y~CaliVice ~t~| ~g~Discord:https://discord.gg/calivice~t~ | ' .. id .. ' ~t~| ~b~Nom: ~b~' .. name .. " ~t~| ~r~Joueurs: " .. #players .. "/80")
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', "~b~Miami World RP~s~ | Discord : ~g~https://discord.gg/jUzxWj8Qcd~s~ | "..id.." | ~r~".. #players .." Players")
end

Citizen.CreateThread(function() 
	while true do
		Citizen.Wait(100)
		SetData()
	end
end)

Citizen.CreateThread(function()
    AddTextEntry("PM_PANE_LEAVE", "~r~Disconnect From ~w~~y~Miami World~s~ 😭")
end)

Citizen.CreateThread(function()
    AddTextEntry("PM_PANE_QUIT", "~r~Never Gonna Give You Up ~o~🐌")
end)
