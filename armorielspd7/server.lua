ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('seven:flashlight')
AddEventHandler('seven:flashlight', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('flashlight', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)




RegisterNetEvent('seven:nightstick')
AddEventHandler('seven:nightstick', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('nightstick', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)




RegisterNetEvent('seven:stungun')
AddEventHandler('seven:stungun', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('stungun', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('seven:combatpistol')
AddEventHandler('seven:combatpistol', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('combatpistol', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


RegisterNetEvent('seven:smg')
AddEventHandler('seven:smg', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('smg', 1) 
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


RegisterNetEvent('seven:pumpshotgun')
AddEventHandler('seven:pumpshotgun', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('pumpshotgun', 1) 
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('seven:sawnoffshotgun')
AddEventHandler('seven:sawnoffshotgun', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('sawnoffshotgun', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


RegisterNetEvent('seven:smokegrenade')
AddEventHandler('seven:smokegrenade', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('smokegrenade', 1) 
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


RegisterNetEvent('seven:pistol_ammo')
AddEventHandler('seven:pistol_ammo', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('pistol_ammo', 10)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)


RegisterNetEvent('seven:smg_ammo')
AddEventHandler('seven:smg_ammo', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('smg_ammo', 30) 
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('seven:shotgun_ammo')
AddEventHandler('seven:shotgun_ammo', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 0
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('shotgun_ammo', 8) 
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)
