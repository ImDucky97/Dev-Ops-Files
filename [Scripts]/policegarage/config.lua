Config = {}

Config.KeyToOpenCarGarage = 38			-- default 38 is E

Config.PoliceDatabaseName = 'police'	-- set the exact name from your jobs database for police


--Police Car Garage:
Config.CarZones = {
	PoliceCarGarage = {
		Pos = {
			{x = 452.41,  y = -1020.67, z = 28.35},--Raw
			{x = 476.87,  y = -1022.04, z = 28.03},--Raw posterriore
			{x = 454.7,  y = -976.97, z = 25.7},--Raw garage
			{x = 431.92,  y = -976.35, z = 25.7},--Raw garage2
			{x = -4129.28,  y = -1682.21, z = 5.43},--PD 1
			{x = -4355.61,  y = -3164.93, z = 5.2},--PD 2
			{x = -3119.37,  y = 3015.64, z = 6.28}, --PD 3
	
		}
	}
}

-- Police Car Garage Blip Settings:
Config.CarGarageSprite = 357
Config.CarGarageDisplay = 4
Config.CarGarageScale = 0.65
Config.CarGarageColour = 38
Config.CarGarageName = "Police Car Garage"
Config.EnableCarGarageBlip = true

-- Police Car Garage Marker Settings:
Config.PoliceCarMarker = 27 												 27
Config.PoliceCarMarkerColor = { r = 50, g = 50, b = 204, a = 100 } 			 { r = 50, g = 50, b = 204, a = 100 }
Config.PoliceCarMarkerScale = { x = 1.5, y = 1.5, z = 1.0 }  				{ x = 1.5, y = 1.5, z = 1.0 
Config.CarDraw3DText = "Press ~g~[E]~s~ to open ~y~garage~s~"			 "Press ~g~[E]~s~ to open ~y~garage~s~"

-- -- Police Cars:
Config.PoliceVehicles = {
	{ model = '2leo9', label = 'Charger Pattuglia', price = 0 },
	{ model = 'c3bmwbike', label = 'FHP Bike', price = 0 }, 

	{ model = '20explo', label = 'Explorer Unmarked' ,  price = 0 }, 
	{ model = '10charger', label = 'Charger MPD', price = 0 },
	{ model = 'fpis', label = 'MPD FPIS' ,  price = 0 }, --
	{ model = 'polmp4', label = 'Alta Velocità', price = 0 },
	{ model = 'pd1', label = 'MPD Explorer' ,  price = 0 }, 
	{ model = 'swattahoe', label = 'Swat SUV' ,  price = 0 }, 
	{ model = 'Vic', label = 'FHP Vic' ,  price = 0 }, --
}

-- Commands:
Config.RepairCommand = 'fix'
Config.CleanCommand = 'clean'

-- Menu Labels & Titles:
Config.LabelStoreVeh = "Deposit the vehicle"
Config.LabelGetVeh = "Get a vehicle"
Config.TitlePoliceGarage = "GARAGE"
Config.TitleValues = "Value"

-- ESX.ShowNotifications:
Config.VehicleParked = "~b~The vehicle was parked!"
Config.NoVehicleNearby = "~b~No~s~ vehicle near!"
Config.CarOutFromPolGar = "~b~Adam~s~ ~y~Operating~s~!"
Config.HeliOutFromPolGar = "~b~Eagle~s~ ~y~Operating~s~!"
Config.BoatOutFromPolGar = "~b~Bonito~s~ ~y~Operating~s~!"
Config.VehRepNotify = "Your ~b~vehicle~s~ is about to be ~y~repaired~s~, please wait!"
Config.VehRepDoneNotify = "Your ~b~vehicle~s~ it was ~y~repaired~s~!"
Config.VehCleanNotify = "Your ~b~vehicle~s~ is about to be ~y~clean~s~, please wait!"
Config.VehCleanDoneNotify = "Your ~b~vehicle~s~ it was ~y~clean~s~!"

-- ProgressBars text
Config.Progress1 = "REPAIR VEHICLE"
Config.Progress2 = "CLEAN VEHICLE"

-- ProgressBar Timers, in seconds:
Config.RepairTime = 5					5
Config.CleanTime = 3.5					3.5

Config.VehicleLoadText = "Wait for the ~r~vehicle!"			"Wait for the ~r~vehicle!"

-- Distance from garage marker to the point where /fix and /clean shall work
Config.Distance = 20

Config.DrawDistance      = 100.0
Config.TriggerDistance 	 = 3.0
Config.Marker 			 = {Type = 27, r = 0, g = 127, b = 22}
