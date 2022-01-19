function give49Gems(items, result, player)
    player:getInventory():AddItems("GemScrap",49)
end
function give1GoldBar(items, result, player)
    player:getInventory():AddItem("GoldBar")
end
function give1SilverBar(items, result, player)
    player:getInventory():AddItem("SilverBar")
end
function give3GoldBar(items, result, player)
    player:getInventory():AddItems("GoldBar",3)
end
function give2Gold1SilverBar(items, result, player)
    player:getInventory():AddItems("GoldBar",2)
    player:getInventory():AddItem("SilverBar")
end
function give74Gems(items, result, player)
    player:getInventory():AddItems("GemScrap",74)
end
function give24Gems(items, result, player)
    player:getInventory():AddItems("GemScrap",24)
end
function getItemTypesForSellingBulletBox(scriptItems)
    local allScriptItems = getScriptManager():getAllItems();
    for i=1,allScriptItems:size() do
        local scriptItem = allScriptItems:get(i-1);
        if (scriptItem:getDisplayCategory() == "Ammo") and string.contains(scriptItem:getDisplayName(), "Box of ") then
            scriptItems:add(scriptItem);
        end
    end
end
function getItemTypesForSellingMilitaryClothing(scriptItems)
    local allScriptItems = getScriptManager():getAllItems();
    for i=1,allScriptItems:size() do
        local scriptItem = allScriptItems:get(i-1);
        if (scriptItem:getType() == Type.Clothing) and string.contains(scriptItem:getDisplayName(), "Military") then
            scriptItems:add(scriptItem);
        end
    end
end
function getItemTypesForSellingHandgun(scriptItems)
    local allScriptItems = getScriptManager():getAllItems();
    for i=1,allScriptItems:size() do
        local scriptItem = allScriptItems:get(i-1);
        if (scriptItem:getDisplayCategory() == "Weapon") and (scriptItem:getSwingAnim() == "Handgun") then
            scriptItems:add(scriptItem);
        end
    end
end
function getItemTypesForSellingShotgun(scriptItems)
    local allScriptItems = getScriptManager():getAllItems();
    for i=1,allScriptItems:size() do
        local scriptItem = allScriptItems:get(i-1);
        if (scriptItem:getDisplayCategory() == "Weapon") and string.contains(scriptItem:getDisplayName(), "Shotgun") then
            scriptItems:add(scriptItem);
        end
    end
end
function getItemTypesForSellingVehicleParts(scriptItems)
    local allScriptItems = getScriptManager():getAllItems();
    for i=1,allScriptItems:size() do
        local scriptItem = allScriptItems:get(i-1);
        if (scriptItem:getDisplayCategory() == "VehicleMaintenance") and (not string.contains(scriptItem:getName(),"EngineParts")) and (not string.contains(scriptItem:getName(),"EmptyPetrolCan")) and (not string.contains(scriptItem:getName(),"PetrolCan")) then
            scriptItems:add(scriptItem);
        end
    end
end