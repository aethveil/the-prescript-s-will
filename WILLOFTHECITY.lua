local Ranks = loadstring(game:HttpGet("https://raw.githubusercontent.com/aethveil/the-prescript-s-will/refs/heads/main/Ranks.lua", true))()
local plrName = game.Players.LocalPlayer.Name
if Ranks[plrName] then
if Ranks[plrName] >= 2 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/aethveil/the-prescript-s-will/refs/heads/main/INDEX:DEVICE.lua", true))()
end
if Ranks[plrName] >= 3 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/aethveil/the-prescript-s-will/refs/heads/main/INDEX:OUTPOST.lua", true))()
end
end
