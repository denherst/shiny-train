repeat wait() until game:IsLoaded()
local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
local me = game.Players.LocalPlayer
local currentpos

local s, f = pcall(function()
    workspace["locked parts [do not select]"].nukedoor1:Destroy()
    function getkey()
        workspace["locked parts [do not select]"].keyers.ClickDetector.MaxActivationDistance = 100
        fireclickdetector(workspace["locked parts [do not select]"].keyers.ClickDetector, 0)
        me.Backpack:WaitForChild("Nuclear Key").Parent = me.Character
    end
    
    currentpos = me.Character.HumanoidRootPart.CFrame
    task.wait(0.1)
    me.Character.HumanoidRootPart.CFrame = CFrame.new(-2.16781926, 3.02549911, 112.205048, -0.999847651, 1.13101457e-08, 0.0174543373, 1.12859233e-08, 1, -1.48625978e-09, -0.0174543373, -1.28904509e-09, -0.999847651)
    task.wait(0.1)
    getkey()
    task.wait(0.25)
    me.Character.HumanoidRootPart.CFrame = CFrame.new(2.22531891, 3.42039919, 115.998581, 0.999795794, 3.63750168e-08, -0.0202076808, -3.46687514e-08, 1, 8.47868336e-08, 0.0202076808, -8.40689438e-08, 0.999795794)
    task.wait(0.1)
    getkey()
    task.wait(1)
    fireclickdetector(workspace["locked parts [do not select]"].Button.Button.ClickDetector, 0)
    task.wait(0.1)
    me.Character.HumanoidRootPart.CFrame = currentpos
end)

if not s then
    print(f)
end

game.Players.LocalPlayer.OnTeleport:Connect(function(State)
    queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/denherst/shiny-train/main/w.lua"))()')
end)  

task.wait(1)

game:GetService("TeleportService").TeleportInitFailed:Connect(function(player, teleportResult, errorMessage, placeId, teleportOptions)
    task.wait(1)
    module:Teleport(game.PlaceId)
end)

module:Teleport(game.PlaceId)
