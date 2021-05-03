ESX = nil
RMenu.Add('seven', 'main', RageUI.CreateMenu("Armurerie LSPD", "Armes"))
RMenu.Add('seven', 'armes', RageUI.CreateSubMenu(RMenu:Get('seven', 'main'), "Armes", "Armes LSPD"))
RMenu.Add('seven', 'munitions', RageUI.CreateSubMenu(RMenu:Get('seven', 'main'), "Munitions", "Munitions LSPD"))


--local blips = {
--
--     {title="Armurerie", colour=45, id=110, x = -1102.09,      y = -828.28,   z = 28.80},
--
-- }


 
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.9)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('seven', 'main'), true, true, true, function()

            RageUI.Button("Armes LSPD", "Prends ton équipement ~g~".. GetPlayerName(PlayerId()) .. '', {RightLabel = "→→→"},true, function()
            end, RMenu:Get('seven', 'armes'))

            RageUI.Button("Munitions", "Prends ton équipement ~g~".. GetPlayerName(PlayerId()) .. '', {RightLabel = "→→→"},true, function()
            end, RMenu:Get('seven', 'munitions'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('seven', 'armes'), true, true, true, function()

            RageUI.Button("Lampe Torche", "Arme 1", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('seven:flashlight')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end

                
            end)

           RageUI.Button("Matraque", "Arme 2", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('seven:nightstick')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end

                
            end)

         RageUI.Button("Tazer", "Arme 3", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('seven:stungun')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end

                
            end)

          RageUI.Button("Pistolet de combat", "Arme 4", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('seven:combatpistol')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end


            end)

          RageUI.Button("SMG", "Arme 5", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('seven:smg') 
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end

                
            end)

          RageUI.Button("Pompe", "Arme 6", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('seven:pumpshotgun')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end


            end)

          RageUI.Button("Pompe FlashBall", "Arme 7", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('seven:sawnoffshotgun')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end


            end)

          RageUI.Button("Gaz", "Arme 8", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('seven:smokegrenade')
                    local playerPed = GetPlayerPed(-1)
                    RequestAnimDict('weapons@pistol@')
                       while not HasAnimDictLoaded('weapons@pistol@') do
                          Citizen.Wait(0)
                        end
                     TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                     Citizen.Wait(300)
                     holstered = true
                end


            end)
        end, function()
               end)

                


            RageUI.IsVisible(RMenu:Get('seven', 'munitions'), true, true, true, function()

                RageUI.Button("Munitions de 9mm", "10 Balle pour pistolet", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent('seven:pistol_ammo')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                           while not HasAnimDictLoaded('weapons@pistol@') do
                              Citizen.Wait(0)
                            end
                         TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                         Citizen.Wait(300)
                         holstered = true
                    end
                 end)

                RageUI.Button("Munitions de 45mm", "30 Balle pour SMG", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent('seven:smg_ammo')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                           while not HasAnimDictLoaded('weapons@pistol@') do
                              Citizen.Wait(0)
                            end
                         TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                         Citizen.Wait(300)
                         holstered = true
                    end
                 end)

                RageUI.Button("Munitions de Cal.12", "8 Balle pour pompe", {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent('seven:shotgun_ammo')
                        local playerPed = GetPlayerPed(-1)
                        RequestAnimDict('weapons@pistol@')
                           while not HasAnimDictLoaded('weapons@pistol@') do
                              Citizen.Wait(0)
                            end
                         TaskPlayAnim(playerPed, 'weapons@pistol@', 'aim_2_holster',8.0, -8.0, -1, 0, 0, false, false, false )
                         Citizen.Wait(300)
                         holstered = true
                    end
                 end)

                    end, function()
             
                    end, 1)
            
                    Citizen.Wait(0)
                end
            end)



local position = {
        {x = -1102.06 , y = -828.97, z = 14.20, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parler avec ~g~l'armurier")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('seven', 'main'), not RageUI.Visible(RMenu:Get('seven', 'main')))
                    end
                end
            end
        end
    end)

    local coord = {
        {-1103.85, -827.72, 13.27,"Drogendealer",215.8,1657546978,"s_m_y_armymech_01"}
    }
    
    Citizen.CreateThread(function()
    
        for _,v in pairs(coord) do
          RequestModel(GetHashKey(v[7]))
          while not HasModelLoaded(GetHashKey(v[7])) do
            Wait(1)
          end
      
          RequestAnimDict("mini@strip_club@idles@bouncer@base")
          while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
            Wait(1)
          end
          ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
          SetEntityHeading(ped, v[5])
          FreezeEntityPosition(ped, true)
          SetEntityInvincible(ped, true)
          SetBlockingOfNonTemporaryEvents(ped, true)
          TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
        end
    end)

    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(100)
        end
    end)
    
    