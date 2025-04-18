local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local function setEgoValue()
    if LocalPlayer and LocalPlayer:FindFirstChild("PlayerGui") then
        local PlayerGui = LocalPlayer.PlayerGui
        if PlayerGui:FindFirstChild("GeneralGUI") then
            local GeneralGUI = PlayerGui.GeneralGUI
            if GeneralGUI:FindFirstChild("EGO") then
                local EGO = GeneralGUI.EGO
                if EGO:FindFirstChild("ego") then
                    EGO.ego.Value = 100
                    return true
                end
            end
        end
    end
        return false
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.J then --krch in Enum.KeyCode."key" to the left of krch and then enter there the key that is convenient for you (empty)
setEgoValue()
end
end)
task.spawn(function()
local success = false
local attempts = 0
while not success and attempts < 5 do
success = setEgoValue()
attempts += 1
if not success then
task.wait(1) 
end
end
end)
