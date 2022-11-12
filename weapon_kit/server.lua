local lafingo = exports.ox_inventory
ESX = exports.es_extended:getSharedObject()

-- register item 
ESX.RegisterUsableItem('weaponkit', function(source) 
    local i = source 
    if lafingo:GetCurrentWeapon(i) then
        if lafingo:GetCurrentWeapon(i).metadata.durability < 100 then 
            TriggerClientEvent('checkclient', i)
            Wait(10000)
            lafingo:SetDurability(i, 'weaponkit', 100)
            lafingo:RemoveItem(i, 'weaponkit', 1)

        end
    end
end)


