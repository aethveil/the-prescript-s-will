if workspace:FindFirstChild("IndexMap") then return end
local NewMap = game:GetObjects(131527193730733)[1]
NewMap.Parent = workspace
NewMap.Name = "IndexMap"
NewMap.Doors.PrivServDoor.Prompt.HoldDuration = 5
NewMap.Doors.PrivServDoor.Prompt.Triggered:Connect(function()
game.Players.LocalPlayer.Character:Destroy()
game:GetService("TeleportService"):Teleport(99831550635699, game.Players.LocalPlayer)
end)
local AreaMark = workspace.AreaMarkers["Supply Bunker"]["Maintenance Tunnel"]:Clone()
AreaMark.Name = "Supply Bunker"
AreaMark.CFrame = NewMap.Teleports.EnterTP.CFrame + Vector3.new(0, 50, 0)
AreaMark.Parent = workspace.AreaMarkers["Supply Bunker"]
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
if game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Title.Text == "Supply Bunker" then
	game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Title.Text = "The Index East's Outpost"
	game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Title.Shadow.Text = "The Index East's Outpost"
	game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Description.Text = "The headquarters for The Index East and all their achievements."
	game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Description.Shadow.Text = "The headquarters for The Index East and all their achievements."
end
end)
end)
task.wait(5)
repeat task.wait() until game.Players.LocalPlayer.Character
local PlaySound = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/PlaySound.lua", true))()
local OverlayUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/OverlayUI.lua", true))()
local Subtitle = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/Subtitle.lua", true))()
local function giveItem()
local Character = game.Players.LocalPlayer.Character
local IsInBase = false
local OrigCF = Character.HumanoidRootPart.CFrame
task.spawn(function()
local Skill = Instance.new("Tool")
Skill.Name = "Index Teleportation Device"
Skill.CanBeDropped = false
Skill.RequiresHandle = false
----------EDITING------------------------
Skill.ToolTip = "Teleport to The Index's Base and back." --Description
local SkillTags = {
	"Special"
}
local SkillAttributes = {
	["RealPageName"] = "Index Teleportation Device"
}
---SKILL FUNCTIONS
local player = game.Players.LocalPlayer
local function SkillActivated()
   OverlayUI("Warp")
   if not IsInBase then
	   IsInBase = true
	   OrigCF = Character.HumanoidRootPart.CFrame
	   Character.HumanoidRootPart.CFrame = NewMap.Teleports.EnterTP.CFrame 
   else
     IsInBase = false
	 Character.HumanoidRootPart.CFrame = OrigCF
   end
end
------------------------------------------
for i,v in pairs(SkillTags) do
	local e = Instance.new("Folder")
	e.Parent = Skill
	e.Name = v
end
for i,v in pairs(SkillAttributes) do
	Skill:SetAttribute(i, v)
end
Skill.Equipped:Connect(function()
print("SkillUsed")
task.spawn(function()
SkillActivated()
end)
task.wait(0.15)
Skill.Parent = game.Players.LocalPlayer.Backpack

end)



-----------
Skill.Parent = game.Players.LocalPlayer.Backpack
end)
end
giveItem()
game.Players.LocalPlayer.CharacterAdded:Connect(function()
giveItem()
end)
