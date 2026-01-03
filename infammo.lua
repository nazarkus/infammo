-- Бесконечные патроны для всех пушек
local ACS_GUNS = game:GetService("ReplicatedStorage"):WaitForChild("Configurations"):WaitForChild("ACS_Guns")

for _, module in pairs(ACS_GUNS:GetDescendants()) do
    if module:IsA("ModuleScript") and module.Name == "Settings" then
        local success, settings = pcall(require, module)
        if success and type(settings) == "table" then
            settings.Ammo = math.huge  -- Бесконечные патроны
            settings.FastReload = true -- Мгновенная перезарядка
            settings.IncludeChamberedBullet = true
        end
    end
end
