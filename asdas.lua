local Whitelist = {
    "Gyraz", -- Имя игрока 1
    "TreaxxDS", -- Имя игрока 2
}

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function isWhitelisted()
    for _, name in pairs(Whitelist) do
        if player.Name == name then
            return true
        end
    end
    return false
end

if isWhitelisted() then
    print("[WHITELIST] Доступ разрешён!")
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Flamez-spec/grays/refs/heads/main/asdas.lua"))() -- Ваш чит-код
else
    print("[WHITELIST] Доступ запрещён!")
end
