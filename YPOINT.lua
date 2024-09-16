local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local PathfindingService = game:GetService("PathfindingService")
local gameData = ReplicatedStorage:WaitForChild("GameData")
local floor = gameData:WaitForChild("Floor")
local latestRoom = gameData:WaitForChild("LatestRoom")
local camera = workspace.CurrentCamera
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer.PlayerGui
local mainUI = playerGui:WaitForChild("MainUI")
local mainGame = mainUI:WaitForChild("Initiator"):WaitForChild("Main_Game")
local mainGameSrc = require(mainGame)
local playerScripts = localPlayer.PlayerScripts
local controlModule = require(playerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

local repo = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'
local Library =   loadstring(game:HttpGet(repo.. 'Library.lua'))()
local SaveManager =  loadstring(game:HttpGet(repo.. 'addons/SaveManager.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo.. 'addons/ThemeManager.lua'))()

local Options = getgenv().Options

local Window = Library:CreateWindow({
    Title = 'YPoint | v6',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0
})

local Tab1 = Window:AddTab("Main")
_G.SelectBoots = 16
Tab1:AddSlider("",{
Text="Speed Boots",
Default=16,
Min=16,
Max=25,
Rounding=1,
Compact=true,
Callback=function(value)
_G.SelectBoots=value
end})
_G.FOV = 70
Tab1:AddSlider("",{
Text="Field Of View",
Default=70,
Min=70,
Max=120,
Rounding=1,
Compact=true,
Callback=function(value)
_G.FOV=value
end})
Tab1:AddToggle("Speed",{
Text="Enabled Speed Boots",
Default = false
})
Toggles.Speed:OnChanged(function(value)
while value do wait()
localplayer.Character.Humanoid.WalkSpeed = _G.SelectBoots
    end
end) 
Tab1:AddToggle("FOV",{
Text="Enabled Field Of View",
Default = false
})
Toggles.FOV:OnChanged(function(value)
while value do wait()
camera.FieldOfView = _G.FOV
    end
end) 
Tab1:AddDivider()
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.NoSlow then if (game.Players.LocalPlayer.Character.Head.Massless==true) then local v451=1726 -(1668 + 58) ;local v452;while true do if (v451==(626 -(512 + 114))) then v452=false;game.Players.LocalPlayer.Character.Head.Massless=v452;game.Players.LocalPlayer.Character.LeftFoot.Massless=v452;game.Players.LocalPlayer.Character.LeftHand.Massless=v452;v451=2 -1 ;end if ((1 -0)==v451) then game.Players.LocalPlayer.Character.LeftLowerArm.Massless=v452;game.Players.LocalPlayer.Character.LeftLowerLeg.Massless=v452;game.Players.LocalPlayer.Character.LeftUpperArm.Massless=v452;game.Players.LocalPlayer.Character.LeftUpperLeg.Massless=v452;v451=6 -4 ;end if (v451==(2 + 1)) then game.Players.LocalPlayer.Character.RightLowerLeg.Massless=v452;game.Players.LocalPlayer.Character.RightUpperArm.Massless=v452;game.Players.LocalPlayer.Character.RightUpperLeg.Massless=v452;game.Players.LocalPlayer.Character.UpperTorso.Massless=v452;break;end if (v451==2) then game.Players.LocalPlayer.Character.LowerTorso.Massless=v452;game.Players.LocalPlayer.Character.RightFoot.Massless=v452;game.Players.LocalPlayer.Character.RightHand.Massless=v452;game.Players.LocalPlayer.Character.RightLowerArm.Massless=v452;v451=3;end end end end end);end);Tab1:AddToggle("",{Text="No Slow",Default=false,Callback=function(value)_G.NoSlow=value;if (_G.NoSlow==false) then game.Players.LocalPlayer.Character.Head.Massless=true;game.Players.LocalPlayer.Character.LeftFoot.Massless=true;game.Players.LocalPlayer.Character.LeftHand.Massless=true;game.Players.LocalPlayer.Character.LeftLowerArm.Massless=true;game.Players.LocalPlayer.Character.LeftLowerLeg.Massless=true;game.Players.LocalPlayer.Character.LeftUpperArm.Massless=true;game.Players.LocalPlayer.Character.LeftUpperLeg.Massless=true;game.Players.LocalPlayer.Character.LowerTorso.Massless=true;game.Players.LocalPlayer.Character.RightFoot.Massless=true;game.Players.LocalPlayer.Character.RightHand.Massless=true;game.Players.LocalPlayer.Character.RightLowerArm.Massless=true;game.Players.LocalPlayer.Character.RightLowerLeg.Massless=true;game.Players.LocalPlayer.Character.RightUpperArm.Massless=true;game.Players.LocalPlayer.Character.RightUpperLeg.Massless=true;game.Players.LocalPlayer.Character.UpperTorso.Massless=true;end end});
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v89)local v90=0 -0 ;while true do if (v90==(0 + 0)) then if  not _G.InstantInteract then return;end if v89.IsA(v89,"ProximityPrompt") then if _G.InstantInteract then local v622=0 + 0 ;while true do if (v622==(0 + 0)) then v89.HoldDuration=0 + 0 ;v89.Enabled=true;break;end end end end break;end end end);Tab1:AddToggle("MyToggle",{Text="Instance Interact",Default=false,Callback=function(v91)local v171=Instance.new("Sound");v171.Parent=game.SoundService;v171.SoundId="rbxassetid://4590657391";v171.Volume=11 -6 ;v171.PlayOnRemove=true;v171:Destroy();local v92=0 -0 ;while true do if (v92==(0 -0)) then _G.InstantInteract=v91;if (_G.InstantInteract==true) then for v519,v520 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do if v520:IsA("ProximityPrompt") then v520.HoldDuration=0 + 0 ;v520.Enabled=true;end end end break;end end end});
