config = {

    -- The distance in which the sign and its speed limits will load/unload at
    loadDistance = 400,

    -- This will enable debug printing on both the client and the server. This should be set to false most of the time.
    developerMode = false,

    -- This is the control used to close the menu - you can find a list of control references at https://docs.fivem.net/docs/game-references/controls/
    closeMenuButton = {0, 177},

	selectSignCommandName = "selectsign",

	-- This allows you to enable Discord logging for the signs
	-- You must add your webhook in sv_utils.lua
	logging = {
		enabled = true,
		displayName = "National Highways",
		colour = 31487,
		title = "**New Sign Log**",
		icon = "https://i.imgur.com/dcOQmpA.jpg",
		footerIcon = "https://i.imgur.com/n3n7JNW.png",
		dateFormat = "%d-%m-%Y %H:%M:%S", -- Day-Month-Year Hour-Minute-Second
	},

	-- These are the job checks for the /selectsign command
	permissions = {
		acePermissionsEnabled = false,
		ESX = {
			enabled = false,
			checkJob = {
				enabled = true, -- Enable this to use ESX job check
				jobs = {"fire", "firefighter"} -- A user can have any of the following jobs, allowing you to add multiple
			}
		},
		-- We've added vRP integration. All you need to do is enable it below. Then, configure if you wish to check for groups or permissions, or even both
		vRP = {
			enabled = false,
			checkGroup = {
				enabled = false, -- Enable this to use vRP group check
				groups = {"fire", "admin"}, -- A user can have any of the following groups, meaning you can add different jobs
			},
			checkPermission = {
				enabled = false, -- Enable this to use vRP permission check
				permissions = {"player.kick"} -- A user can have any of the following permissions, allowing you to add multiple
			},
		},
		-- We've added QBCore integration. All you need to do is enable it below. Then, configure if you wish to check for jobs or permissions, or even both
		QBCore = {
			enabled = false,
			checkJob = {
				enabled = false, -- Enable this to use QBCore job check
				jobs = {"fire"}, -- A user can have any of the following jobs, meaning you can add different jobs
			},
			checkPermission = {
				enabled = false, -- Enable this to use QBCore permission check
				permissions = {"god"}, -- A user can have any of the following permissions, allowing you to add multiple
			},
		},
	},

	directionColours = {
        ["North"] = 17,
        ["South"] = 18,
        ["East"] = 17,
        ["West"] = 18,
    },


	-- Here you can translate the resource into another language
	translations = {
		selectSignHelp = "Select a smart motorways sign",
		editingSign = "Now editing sign ID: ",
		hasBeenSetTo = " has been set to: ",
		speedLimitOfLane = "Speed limit of lane ",
		symbolOfLane = "Symbol of lane ",
		speedUnit = "mph",
        resetAll = "All lanes have been reset."
	},

	-- We do not recommend editing below this section:


	-- The offsets which the signs are placed at in comparison to the sign
    spawnOffsets = {

        -- Offsets for two lane setups
        [2] = {
            [1] = {x = -3.9, y = -2.09, z = 3.65},
            [2] = {x = 1.61, y = -2.09, z = 3.65}
        },

        -- Offsets for three lane setups
        [3] = {
            [1] = {x = -6.04, y = -2.09, z = 3.65},
            [2] = {x = -0.091, y = -2.09, z = 3.65},
            [3] = {x = 3.82, y = -2.09, z = 3.65}
        },

        -- Offsets for four lane setups
        [4] = {
            [1] = {x = -9.7801, y = -2.09, z = 3.65},
            [2] = {x = -3.21, y = -2.09, z = 3.65},
            [3] = {x = 2.52, y = -2.09, z = 3.65},
            [4] = {x = 8.0501, y = -2.09, z = 3.65}
        }
    },

	-- Here you can define the various locations of the signs around the map.
    signs = {
        {
            -- The coordinates and heading of the sign
            position = vec3(-2445.1735839844,-239.94598388672,20.512878417969),
            heading = 241.4535,
            lanes = 2,
            direction = "North",

            -- If set to true, the sign will show the defined speeds by default
            -- Options for default speeds are as follows:
            -- 1 >> Arrow left
            -- 2 >> Arrow right
            -- 3 >> Red cross/no access
            -- 20 >> 20mph sign
            -- 30 >> 30mph sign
            -- 40 >> 40mph sign
            -- 50 >> 50mph sign
            -- 60 >> 60mph sign
            -- 70 >> National speed limit sign
            useDefaultSpeeds = false,
            defaultSpeeds = {50, 20},

        },
        {
            -- The coordinates and heading of the sign
            position = vec3(-2441.1635742188,-224.05526733398,20.616523742676),
            heading = 61.4535,
            lanes = 2,
            direction = "South",
            useDefaultSpeeds = false,
            defaultSpeeds = {50, 20},

        },
        {
            position = vec3(866.64459228516, 113.41372680664, 74.137504577637), 
            heading = 324.0, 
            lanes = 3, 
            direction = 'North', 
            useDefaultSpeeds = false, 
            defaultSpeeds = {}, 
        },
        {
            position = vec3(846.37182617188, 126.39654541016, 74.367546081543), 
            heading = 143.99937438965, 
            lanes = 3, 
            direction = 'South', 
            useDefaultSpeeds = false, 
            defaultSpeeds = {}, 
        },
		{
			position = vec3(759.09362792969, -51.060974121094, 62.997459411621), 
			heading = 329.87878417969, 
			lanes = 3, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(737.96551513672, -40.44270324707, 63.025829315186), 
			heading = 150.12088012695, 
			lanes = 3, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1074.6544189453, 353.201171875, 86.898506164551), 
			heading = 316.38916015625, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1060.3553466797, 364.42834472656, 86.92015838623), 
			heading = 136.67422485352, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1307.2299804688, 587.32318115234, 84.046501159668), 
			heading = 314.92535400391, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1294.2138671875, 598.41705322266, 84.04369354248), 
			heading = 134.54676818848, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1513.341796875, 838.5087890625, 80.929405212402), 
			heading = 331.09521484375, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1496.8972167969, 845.97436523438, 80.869888305664), 
			heading = 150.54127502441, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1626.7584228516, 1164.6633300781, 87.710273742676), 
			heading = 163.40785217285, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1724.3403320313, 1551.8553466797, 88.827644348145), 
			heading = 349.15078735352, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1707.7869873047, 1553.4233398438, 88.737609863281), 
			heading = 169.83969116211, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1643.5639648438, 1161.2736816406, 87.698875427246), 
			heading = 344.19052124023, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1933.9105224609, 2456.9162597656, 58.586437225342), 
			heading = 331.36633300781, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1912.9523925781, 2468.3923339844, 58.635456085205), 
			heading = 147.00569152832, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1947.1739501953, 2449.6015625, 58.573337554932), 
			heading = 330.89031982422, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1898.6031494141, 2477.64453125, 58.562393188477), 
			heading = 147.36569213867, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2155.5847167969, 2724.6701660156, 52.006153106689), 
			heading = 129.84548950195, 
			lanes = 3, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2174.5778808594, 2703.4704589844, 51.776515960693), 
			heading = 308.1921081543, 
			lanes = 3, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2505.1896972656, 2971.5659179688, 45.334854125977), 
			heading = 310.74795532227, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2486.9487304688, 2991.078125, 45.139671325684), 
			heading = 130.25679016113, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2725.9020996094, 3227.7458496094, 58.303108215332), 
			heading = 328.71841430664, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2702.6254882813, 3240.4577636719, 58.291194915771), 
			heading = 147.90644836426, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2616.0051269531, 3116.3342285156, 52.746078491211), 
			heading = 136.52366638184, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2807.1455078125, 3468.9677734375, 59.270217895508), 
			heading = 157.1784362793, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2832.369140625, 3459.8276367188, 59.078372955322), 
			heading = 337.16818237305, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2918.9819335938, 3725.9965820313, 56.477844238281), 
			heading = 344.42691040039, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2893.6525878906, 3732.0625, 56.678035736084), 
			heading = 163.3518371582, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2935.8937988281, 3984.3718261719, 55.597808837891), 
			heading = 8.5211057662964, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2910.5200195313, 3979.3095703125, 55.405120849609), 
			heading = 189.54809570313, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2778.140625, 4521.29296875, 50.677711486816), 
			heading = 15.7815284729, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2745.3615722656, 4513.1206054688, 50.770862579346), 
			heading = 194.19596862793, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2721.5249023438, 4758.8173828125, 48.271869659424), 
			heading = 13.947827339172, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2613.6945800781, 5219.5405273438, 48.72972869873), 
			heading = 14.281940460205, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2578.6630859375, 5213.9931640625, 48.742183685303), 
			heading = 195.44187927246, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2529.2807617188, 5496.484375, 48.643726348877), 
			heading = 19.732233047485, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2503.6958007813, 5485.91796875, 48.638519287109), 
			heading = 199.41258239746, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2404.4284667969, 5783.4443359375, 49.699733734131), 
			heading = 27.565465927124, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2295.4809570313, 5940.6323242188, 52.545223236084), 
			heading = 35.313751220703, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2054.4528808594, 6138.58984375, 53.329551696777), 
			heading = 43.468086242676, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2023.1791992188, 6106.7861328125, 51.560192108154), 
			heading = 224.70202636719, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1935.9916992188, 6325.3608398438, 47.436019897461), 
			heading = 51.7839012146, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1911.3327636719, 6293.8076171875, 46.394641876221), 
			heading = 220.69221496582, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 
			
		},
		{
			position = vec3(1677.5375976563, 6389.3530273438, 34.579658508301), 
			heading = 72.784942626953, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1671.0911865234, 6365.4453125, 35.153251647949), 
			heading = 253.76034545898, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 
			
		},
		{
			position = vec3(-1858.8168945313, -576.39270019531, 15.560019493103), 
			heading = 231.2281036377, 
			lanes = 3, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-1846.4693603516, -558.85552978516, 15.568922996521), 
			heading = 51.003074645996, 
			lanes = 3, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-1093.986328125, -640.76702880859, 18.244945526123), 
			heading = 300.55642700195, 
			lanes = 3, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-1107.5875244141, -621.17889404297, 18.304691314697), 
			heading = 121.05030059814, 
			lanes = 3, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-935.19195556641, -564.61822509766, 22.25500869751), 
			heading = 288.32223510742, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-946.19268798828, -536.88153076172, 22.177400588989), 
			heading = 109.26947021484, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-675.52288818359, -530.15203857422, 29.042020797729), 
			heading = 268.92132568359, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-676.49884033203, -500.34124755859, 29.031398773193), 
			heading = 89.613243103027, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-431.21676635742, -528.29791259766, 29.134519577026), 
			heading = 271.14266967773, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-464.77862548828, -499.75323486328, 28.923223495483), 
			heading = 88.730155944824, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-114.44525146484, -526.06976318359, 33.978309631348), 
			heading = 268.29916381836, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-115.05896759033, -496.54284667969, 33.891849517822), 
			heading = 88.427391052246, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(171.00531005859, -524.69183349609, 37.881423950195), 
			heading = 269.75247192383, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(170.46536254883, -494.96978759766, 37.87007522583), 
			heading = 87.154525756836, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(377.41119384766, -524.75109863281, 38.336700439453), 
			heading = 267.15139770508, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(377.08685302734, -495.47958374023, 38.313541412354), 
			heading = 88.097991943359, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(623.52282714844, -583.46051025391, 39.779769897461), 
			heading = 240.82891845703, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(622.82574462891, -549.849609375, 39.59549331665), 
			heading = 59.637348175049, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(893.15393066406, -744.98785400391, 44.96683883667), 
			heading = 222.49557495117, 
			lanes = 4, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(914.10229492188, -723.80499267578, 45.065013885498), 
			heading = 42.857555389404, 
			lanes = 4, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1039.5318603516, -1027.9493408203, 32.87308883667), 
			heading = 193.79200744629, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1054.5899658203, -1019.8641357422, 32.909091949463), 
			heading = 13.523041725159, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1053.3195800781, -1335.8708496094, 32.091995239258), 
			heading = 182.63455200195, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1069.5157470703, -1330.6262207031, 32.070121765137), 
			heading = 3.4341299533844, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1061.8354492188, -1623.3127441406, 33.339477539063), 
			heading = 191.94657897949, 
			lanes = 3, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1085.0715332031, -1617.1546630859, 33.421955108643), 
			heading = 11.236631393433, 
			lanes = 3, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1121.3424072266, -1818.2872314453, 33.082950592041), 
			heading = 200.96479797363, 
			lanes = 3, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1143.6198730469, -1808.775390625, 33.091011047363), 
			heading = 19.708343505859, 
			lanes = 3, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-413.90274047852, -891.091796875, 41.117252349854), 
			heading = 180.78680419922, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-395.45944213867, -889.48376464844, 41.114200592041), 
			heading = 0.82911360263824, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-395.66265869141, -647.11364746094, 40.704635620117), 
			heading = 0.46030440926552, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-421.15924072266, -713.45025634766, 41.09965133667), 
			heading = 177.06407165527, 
			lanes = 4, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-413.70666503906, -1054.7072753906, 40.828742980957), 
			heading = 178.15693664551, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-395.52603149414, -1053.8743896484, 40.970767974854), 
			heading = 358.73300170898, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-413.76849365234, -1177.8887939453, 41.041282653809), 
			heading = 179.5972442627, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-395.51284790039, -1176.3170166016, 40.846641540527), 
			heading = 0.72061628103256, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-413.98876953125, -1337.0279541016, 41.162315368652), 
			heading = 179.59761047363, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-395.51861572266, -1335.4055175781, 41.137744903564), 
			heading = 1.1831079721451, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-422.67367553711, -1519.0324707031, 41.338691711426), 
			heading = 163.92967224121, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-400.27868652344, -1504.0886230469, 41.218814849854), 
			heading = 348.27621459961, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-579.00537109375, -1691.1568603516, 41.246547698975), 
			heading = 115.47527313232, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-565.22314453125, -1717.5162353516, 41.31755065918), 
			heading = 294.10021972656, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-765.24420166016, -1725.2095947266, 43.66040802002), 
			heading = 95.324600219727, 
			lanes = 2, 
			direction = 'Easat', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-762.30194091797, -1742.9619140625, 43.717388153076), 
			heading = 274.8010559082, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-841.25225830078, -2036.9411621094, 31.9450340271), 
			heading = 236.70526123047, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(-832.88818359375, -2021.7081298828, 31.942331314087), 
			heading = 56.351089477539, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(98.564666748047, -1230.6013183594, 41.294364929199), 
			heading = 273.27893066406, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(77.490730285645, -1189.8101806641, 41.052272796631), 
			heading = 92.456886291504, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(440.29373168945, -1225.7888183594, 44.772201538086), 
			heading = 270.31903076172, 
			lanes = 4, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(437.6279296875, -1182.6043701172, 44.035953521729), 
			heading = 88.984077453613, 
			lanes = 4, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(695.36938476563, -1208.2502441406, 47.670238494873), 
			heading = 271.97802734375, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(695.95947265625, -1224.3057861328, 47.620311737061), 
			heading = 272.23989868164, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(956.41912841797, -1197.3363037109, 54.4381980896), 
			heading = 270.47128295898, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(954.91619873047, -1179.0067138672, 54.486961364746), 
			heading = 90.514877319336, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1125.0904541016, -1190.5701904297, 59.368316650391), 
			heading = 272.25500488281, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1123.087890625, -1172.3508300781, 59.474578857422), 
			heading = 92.021018981934, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1604.5703125, -974.76184082031, 65.249824523926), 
			heading = 300.16732788086, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1594.8934326172, -961.26501464844, 65.258850097656), 
			heading = 121.20148468018, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1789.5242919922, -855.05609130859, 77.240730285645), 
			heading = 304.42572021484, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1778.8930664063, -842.16955566406, 77.257934570313), 
			heading = 125.37330627441, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1983.9162597656, -705.73870849609, 94.94263458252), 
			heading = 305.49340820313, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1972.6005859375, -692.89404296875, 95.045478820801), 
			heading = 127.78154754639, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2199.5092773438, -524.33514404297, 97.176689147949), 
			heading = 310.54092407227, 
			lanes = 2, 
			direction = 'West', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2187.6904296875, -512.73913574219, 97.077499389648), 
			heading = 131.07962036133, 
			lanes = 2, 
			direction = 'East', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2358.2067871094, -341.24758911133, 89.37979888916), 
			heading = 325.74533081055, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2343.7351074219, -333.09414672852, 89.398658752441), 
			heading = 146.29606628418, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2483.6501464844, -108.71048736572, 94.174095153809), 
			heading = 333.28466796875, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2461.416015625, -99.747146606445, 93.988655090332), 
			heading = 162.46527099609, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2564.5344238281, 779.19055175781, 93.971519470215), 
			heading = 22.765754699707, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2349.7038574219, 1090.6613769531, 84.562347412109), 
			heading = 42.141494750977, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2338.4638671875, 1078.4353027344, 84.585006713867), 
			heading = 221.3650970459, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2023.0352783203, 1565.4241943359, 79.180221557617), 
			heading = 21.716274261475, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(2008.2099609375, 1557.8455810547, 79.22688293457), 
			heading = 202.61572265625, 
			lanes = 2, 
			direction = 'South', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		{
			position = vec3(1890.8657226563, 2043.3959960938, 59.229057312012), 
			heading = 8.7973203659058, 
			lanes = 2, 
			direction = 'North', 
			useDefaultSpeeds = false, 
			defaultSpeeds = {}, 

		},
		
	},
    -- Here you can configure the sound effect which is played when a sign is successfully updated
    soundEffect = {
        enabled = true,
        name = "CONFIRM_BEEP",
        dict = "HUD_MINI_GAME_SOUNDSET",
    },

    signModels = {
        [2] = `2_lane`,
        [3] = `3_lane`,
        [4] = `4_lane`,
    },

    -- You can add other symbools here
    -- If you are using this for a British community it is unlikely you will need to change this
    symbolModels = {
        [1] = "arrow_left",
        [2] = "arrow_right",
        [3] = "red_x",
        [20] = "speed_20",
        [30] = "speed_30",
        [40] = "speed_40",
        [50] = "speed_50",
        [60] = "speed_60",
        [70] = "national_speed"
    }



}