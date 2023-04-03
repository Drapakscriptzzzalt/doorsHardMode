-- zrobione przez drapaka i przetłumaczone 
local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))() -- nie zmieniac !!

-- Stworz Entity

local entityTable = Spawner.createEntity({

    CustomName = "TUTAJ NAZWA ENTITY", -- nazwa entity

    Model = "https://github.com/RegularVynixu/Utilities/blob/main/Doors%20Entity%20Spawner/Models/Rush.rbxm?raw=true", -- ROBLOX ASSET ID (ID OBRAZKA)

    Speed = 100, -- PREDKOSC, 100 = PREDKOSC RUSHA

    DelayTime = 2, -- ile sekund zanim zacznie robic cykle

    HeightOffset = 0, -- NIE ZMIENIAC

    CanKill = true, -- czy moze zabic, false = nie, true = tak

    KillRange = 50, -- z jak daleka zabija 50 = rush

    BackwardsMovement = false, -- NIE ZMIENIAC

    BreakLights = true, -- czy niszczy swiatla

    FlickerLights = {

        true, -- czy migaja swiatla, true = tak, false = nie

        1, -- ile sekund migaja swiatla

    },

    Cycles = {

        Min = 1, -- ile cykli minimalnie

        Max = 4, -- ile cykli maksymalnie

        WaitTime = 2, -- ile czekac zanim robi cykl

    },

    CamShake = {

        true, -- czy trzesie sie kamera, 

        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)

        100, -- Shake start distance (from Entity to you)

    },

    Jumpscare = {

        true, -- czy jumpscare, true = tak , false = nie

        {

            Image1 = "rbxassetid://10483855823", -- Image1 url

            Image2 = "rbxassetid://10483999903", -- Image2 url

            Shake = true,

            Sound1 = {

                10483790459, -- SoundId

                { Volume = 0.5 }, -- Sound properties

            },

            Sound2 = {

                10483837590, -- SoundId

                { Volume = 0.5 }, -- Sound properties

            },

            Flashing = {

                true, -- Enabled/Disabled

                Color3.fromRGB(255, 255, 255), -- Color

            },

            Tease = {

                true, -- Enabled/Disabled

                Min = 1,

                Max = 3,

            },

        },

    },

    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message

})

-----[[  Debug -=- Advanced  ]]-----

entityTable.Debug.OnEntitySpawned = function()

    print("Entity has spawned:", entityTable)

end

entityTable.Debug.OnEntityDespawned = function()

    print("Entity has despawned:", entityTable)

end

entityTable.Debug.OnEntityStartMoving = function()

    print("Entity has started moving:", entityTable)

end

entityTable.Debug.OnEntityFinishedRebound = function()

    print("Entity has finished rebound:", entityTable)

end

entityTable.Debug.OnEntityEnteredRoom = function(room)

    print("Entity:", entityTable, "has entered room:", room)

end

entityTable.Debug.OnLookAtEntity = function()

    print("Player has looked at entity:", entityTable)

end

entityTable.Debug.OnDeath = function()

    warn("Player has died.")

end

------------------------------------

-- Run the created entity

Spawner.runEntity(entityTable)
