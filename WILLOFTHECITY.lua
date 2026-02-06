local Ranks = loadstring(game:HttpGet("https://raw.githubusercontent.com/aethveil/the-prescript-s-will/refs/heads/main/Ranks.lua", true))()
local plrName = game.Players.LocalPlayer.Name
game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = true
if Ranks[plrName] then
if Ranks[plrName] >= 2 then
task.spawn(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/aethveil/the-prescript-s-will/refs/heads/main/INDEX:DEVICE.lua", true))()
end)
end
if Ranks[plrName] >= 3 then
task.spawn(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/aethveil/the-prescript-s-will/refs/heads/main/INDEX:OUTPOST.lua", true))()
end)
end
end
task.wait(0.25)
game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = false
