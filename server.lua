--MADE BY DareToDoyle#3835--

local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('bombvest', function(source)

	local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    xPlayer.Functions.RemoveItem("bombvest", 1)
	TriggerClientEvent('D2D-Vest:Use', source)
	
end)

QBCore.Functions.CreateUseableItem('bombdefuse', function(source)

	local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    xPlayer.Functions.RemoveItem("bombdefuse", 1)
	TriggerClientEvent('D2D-Vest:Defuse', source)
	
end)

RegisterServerEvent('D2D-Vest:PlayerExplosion')
AddEventHandler('D2D-Vest:PlayerExplosion', function(coords)
    TriggerClientEvent("D2D-Vest:DetonateIfNearby", -1, coords)
end)

--MADE BY DareToDoyle#3835--
