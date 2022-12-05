local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LightHack = Instance.new("ScreenGui")
local mapGui = Instance.new("ScreenGui")
local mapImage = Instance.new("ImageLabel")
local mapFrame = Instance.new("Frame")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ScrapsText = Instance.new("TextLabel")
local ScrapsValue = Instance.new("TextLabel")
local FlareGunText = Instance.new("TextLabel")
local FlareGunValue = Instance.new("TextLabel")
local HPText = Instance.new("TextLabel")
local HPValue = Instance.new("TextLabel")
local PowerLevel = Instance.new("TextLabel")
local PowerLevelValue = Instance.new("TextLabel")
local HalfEndTime = Instance.new("TextLabel")
local HalfEndTimeValue = Instance.new("TextLabel")
local RakeDistance = Instance.new("TextLabel")
local RakeDistanceValue = Instance.new("TextLabel")
local PlayerCoords = Instance.new("TextLabel")
local PlayerCoordsValue = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Btn1 = Instance.new("TextButton")
local Btn2 = Instance.new("TextButton")
local Btn3 = Instance.new("TextButton")
local Btn4 = Instance.new("TextButton")
local Btn5 = Instance.new("TextButton")
local Btn6 = Instance.new("TextButton")
local Btn7 = Instance.new("TextButton")

local Player = Players.LocalPlayer
local ScrapsCount = 0
local flareGunFound = false
local newColor = Color3.new(0.666667, 0, 0)

local function round(x)
    return x >= 0 and math.floor(x+0.5) or math.ceil(x-0.5)
end
 
LightHack.Name = "RakeHack"
LightHack.Parent = game.CoreGui
 
BG.Name = "BG"
BG.Parent = LightHack
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.3, 0)
BG.Size = UDim2.new(0, 190, 0, 500)
BG.Active = true
BG.Draggable = true
 
Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(31, 149, 134)
Title.BorderColor3 = Color3.new(31, 149, 134)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 190, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Rake Hack"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeTransparency = 0
 
Btn1.Parent = BG
Btn1.BackgroundColor3 = Color3.new(31, 149, 134)
Btn1.BorderColor3 = Color3.new(31, 149, 134)
Btn1.BorderSizePixel = 2
Btn1.Position = UDim2.new(0.152380958, 0, 0.17, 0)
Btn1.Size = UDim2.new(0, 130, 0, 35)
Btn1.Font = Enum.Font.Highway
Btn1.FontSize = Enum.FontSize.Size28
Btn1.Text = "Light & Fog Hack"
Btn1.TextColor3 = Color3.new(1, 1, 1)
Btn1.TextSize = 17
Btn1.TextStrokeTransparency = 0

Btn2.Parent = BG
Btn2.BackgroundColor3 = Color3.new(31, 149, 134)
Btn2.BorderColor3 = Color3.new(31, 149, 134)
Btn2.BorderSizePixel = 2
Btn2.Position = UDim2.new(0.152380958, 0, 0.24, 0)
Btn2.Size = UDim2.new(0, 130, 0, 35)
Btn2.Font = Enum.Font.Highway
Btn2.FontSize = Enum.FontSize.Size28
Btn2.Text = "Speed & Stamina Hack"
Btn2.TextColor3 = Color3.new(1, 1, 1)
Btn2.TextSize = 17
Btn2.TextStrokeTransparency = 0
Btn2.TextWrapped = true

Btn3.Parent = BG
Btn3.BackgroundColor3 = Color3.new(31, 149, 134)
Btn3.BorderColor3 = Color3.new(31, 149, 134)
Btn3.BorderSizePixel = 2
Btn3.Position = UDim2.new(0.152380958, 0, 0.31, 0)
Btn3.Size = UDim2.new(0, 130, 0, 35)
Btn3.Font = Enum.Font.Highway
Btn3.FontSize = Enum.FontSize.Size28
Btn3.Text = "Delete Other"
Btn3.TextColor3 = Color3.new(1, 1, 1)
Btn3.TextSize = 20
Btn3.TextStrokeTransparency = 0

Btn4.Parent = BG
Btn4.BackgroundColor3 = Color3.new(31, 149, 134)
Btn4.BorderColor3 = Color3.new(31, 149, 134)
Btn4.BorderSizePixel = 2
Btn4.Position = UDim2.new(0.152380958, 0, 0.10, 0)
Btn4.Size = UDim2.new(0, 130, 0, 35)
Btn4.Font = Enum.Font.Highway
Btn4.FontSize = Enum.FontSize.Size28
Btn4.Text = "Delete Trees"
Btn4.TextColor3 = Color3.new(1, 1, 1)
Btn4.TextSize = 20
Btn4.TextStrokeTransparency = 0

Btn5.Parent = BG
Btn5.BackgroundColor3 = Color3.new(31, 149, 134)
Btn5.BorderColor3 = Color3.new(31, 149, 134)
Btn5.BorderSizePixel = 2
Btn5.Position = UDim2.new(0.152380958, 0, 0.38, 0)
Btn5.Size = UDim2.new(0, 130, 0, 35)
Btn5.Font = Enum.Font.Highway
Btn5.FontSize = Enum.FontSize.Size28
Btn5.Text = "AutoCollect Scraps"
Btn5.TextColor3 = Color3.new(1, 1, 1)
Btn5.TextSize = 17
Btn5.TextStrokeTransparency = 0
Btn5.TextWrapped = true

Btn6.Parent = BG
Btn6.BackgroundColor3 = Color3.new(31, 149, 134)
Btn6.BorderColor3 = Color3.new(31, 149, 134)
Btn6.BorderSizePixel = 2
Btn6.Position = UDim2.new(0.152380958, 0, 0.45, 0)
Btn6.Size = UDim2.new(0, 130, 0, 35)
Btn6.Font = Enum.Font.Highway
Btn6.FontSize = Enum.FontSize.Size28
Btn6.Text = "PickUp FlareGun"
Btn6.TextColor3 = Color3.new(1, 1, 1)
Btn6.TextSize = 17
Btn6.TextStrokeTransparency = 0
Btn6.TextWrapped = true

Btn7.Parent = BG
Btn7.BackgroundColor3 = Color3.new(31, 149, 134)
Btn7.BorderColor3 = Color3.new(31, 149, 134)
Btn7.BorderSizePixel = 2
Btn7.Position = UDim2.new(0.152380958, 0, 0.52, 0)
Btn7.Size = UDim2.new(0, 130, 0, 35)
Btn7.Font = Enum.Font.Highway
Btn7.FontSize = Enum.FontSize.Size28
Btn7.Text = "Toggle Map"
Btn7.TextColor3 = Color3.new(1, 1, 1)
Btn7.TextSize = 17
Btn7.TextStrokeTransparency = 0
Btn7.TextWrapped = true

mapGui.Name = "RakeHack_Map"
mapGui.Parent = game.CoreGui
mapGui.Enabled = false
 
mapFrame.Name = "Frame"
mapFrame.Parent = mapGui
mapFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
mapFrame.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
mapFrame.BorderSizePixel = 2
mapFrame.Position = UDim2.new(0, 0, 0.72, 0)
mapFrame.Size = UDim2.new(0, 250, 0, 250)
mapFrame.Active = true
mapFrame.Draggable = true
 
mapImage.Name = "Image"
mapImage.Parent = mapFrame
mapImage.Image = "rbxassetid://2504538514"
mapImage.Size = UDim2.new(1, 0, 1, 0)
mapImage.Position = UDim2.new(0, 0, 0, 0)
 
Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.15, 0, 0.95, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "by defriz"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0

ScrapsText.Name = "Scraps"
ScrapsText.Parent = BG
ScrapsText.BackgroundColor3 = Color3.new(1, 1, 1)
ScrapsText.BackgroundTransparency = 1
ScrapsText.Position = UDim2.new(0.04, 0, 0.6, 0)
ScrapsText.Size = UDim2.new(0, 128, 0, 17)
ScrapsText.Font = Enum.Font.SourceSans
ScrapsText.FontSize = Enum.FontSize.Size18
ScrapsText.Text = "Scraps count:"
ScrapsText.TextColor3 = Color3.new(1, 1, 1)
ScrapsText.TextSize = 20
ScrapsText.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ScrapsText.TextStrokeTransparency = 0

ScrapsValue.Name = "ScrapsValue"
ScrapsValue.Parent = BG
ScrapsValue.BackgroundColor3 = Color3.new(1, 1, 1)
ScrapsValue.BackgroundTransparency = 1
ScrapsValue.Position = UDim2.new(0.45, 0, 0.6, 0)
ScrapsValue.Size = UDim2.new(0, 128, 0, 17)
ScrapsValue.Font = Enum.Font.SourceSans
ScrapsValue.FontSize = Enum.FontSize.Size18
ScrapsValue.Text = "0"
ScrapsValue.TextColor3 = Color3.new(0,185,0)
ScrapsValue.TextSize = 20
ScrapsValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ScrapsValue.TextStrokeTransparency = 0

FlareGunText.Name = "FlareGun"
FlareGunText.Parent = BG
FlareGunText.BackgroundColor3 = Color3.new(1, 1, 1)
FlareGunText.BackgroundTransparency = 1
FlareGunText.Position = UDim2.new(0.04, 0, 0.65, 0)
FlareGunText.Size = UDim2.new(0, 128, 0, 17)
FlareGunText.Font = Enum.Font.SourceSans
FlareGunText.FontSize = Enum.FontSize.Size18
FlareGunText.Text = "FlareGun:"
FlareGunText.TextColor3 = Color3.new(1, 1, 1)
FlareGunText.TextSize = 20
FlareGunText.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
FlareGunText.TextStrokeTransparency = 0

FlareGunValue.Name = "FlareGunValue"
FlareGunValue.Parent = BG
FlareGunValue.BackgroundColor3 = Color3.new(1, 1, 1)
FlareGunValue.BackgroundTransparency = 1
FlareGunValue.Position = UDim2.new(0.45, 0, 0.65, 0)
FlareGunValue.Size = UDim2.new(0, 128, 0, 17)
FlareGunValue.Font = Enum.Font.SourceSans
FlareGunValue.FontSize = Enum.FontSize.Size18
FlareGunValue.Text = "false"
FlareGunValue.TextColor3 = Color3.new(0.666667, 0, 0)
FlareGunValue.TextSize = 20
FlareGunValue.TextStrokeColor3 = Color3.new(0.666667, 0, 0)
FlareGunValue.TextStrokeTransparency = 0

HPText.Name = "HP"
HPText.Parent = BG
HPText.BackgroundColor3 = Color3.new(1, 1, 1)
HPText.BackgroundTransparency = 1
HPText.Position = UDim2.new(0.04, 0, 0.7, 0)
HPText.Size = UDim2.new(0, 128, 0, 17)
HPText.Font = Enum.Font.SourceSans
HPText.FontSize = Enum.FontSize.Size18
HPText.Text = "HP:"
HPText.TextColor3 = Color3.new(1, 1, 1)
HPText.TextSize = 20
HPText.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
HPText.TextStrokeTransparency = 0

HPValue.Name = "HPValue"
HPValue.Parent = BG
HPValue.BackgroundColor3 = Color3.new(1, 1, 1)
HPValue.BackgroundTransparency = 1
HPValue.Position = UDim2.new(0.45, 0, 0.7, 0)
HPValue.Size = UDim2.new(0, 128, 0, 17)
HPValue.Font = Enum.Font.SourceSans
HPValue.FontSize = Enum.FontSize.Size18
HPValue.Text = "0"
HPValue.TextColor3 = Color3.new(0,185,0)
HPValue.TextSize = 20
HPValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
HPValue.TextStrokeTransparency = 0

PlayerCoords.Name = "PlayerCoords"
PlayerCoords.Parent = BG
PlayerCoords.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerCoords.BackgroundTransparency = 1
PlayerCoords.Position = UDim2.new(0.04, 0, 0.75, 0)
PlayerCoords.Size = UDim2.new(0, 128, 0, 17)
PlayerCoords.Font = Enum.Font.SourceSans
PlayerCoords.FontSize = Enum.FontSize.Size18
PlayerCoords.Text = "Coords:"
PlayerCoords.TextColor3 = Color3.new(1, 1, 1)
PlayerCoords.TextSize = 20
PlayerCoords.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PlayerCoords.TextStrokeTransparency = 0

PlayerCoordsValue.Name = "PlayerCoordsValue"
PlayerCoordsValue.Parent = BG
PlayerCoordsValue.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerCoordsValue.BackgroundTransparency = 1
PlayerCoordsValue.Position = UDim2.new(0.4, 0, 0.75, 0)
PlayerCoordsValue.Size = UDim2.new(0, 128, 0, 17)
PlayerCoordsValue.Font = Enum.Font.SourceSans
PlayerCoordsValue.FontSize = Enum.FontSize.Size18
PlayerCoordsValue.Text = "0"
PlayerCoordsValue.TextColor3 = Color3.new(0,185,0)
PlayerCoordsValue.TextSize = 20
PlayerCoordsValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PlayerCoordsValue.TextStrokeTransparency = 0

RakeDistance.Name = "RakeDistance"
RakeDistance.Parent = BG
RakeDistance.BackgroundColor3 = Color3.new(1, 1, 1)
RakeDistance.BackgroundTransparency = 1
RakeDistance.Position = UDim2.new(0.04, 0, 0.8, 0)
RakeDistance.Size = UDim2.new(0, 128, 0, 17)
RakeDistance.Font = Enum.Font.SourceSans
RakeDistance.FontSize = Enum.FontSize.Size18
RakeDistance.Text = "Rake distance:"
RakeDistance.TextColor3 = Color3.new(1, 1, 1)
RakeDistance.TextSize = 20
RakeDistance.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
RakeDistance.TextStrokeTransparency = 0

RakeDistanceValue.Name = "RakeDistanceValue"
RakeDistanceValue.Parent = BG
RakeDistanceValue.BackgroundColor3 = Color3.new(1, 1, 1)
RakeDistanceValue.BackgroundTransparency = 1
RakeDistanceValue.Position = UDim2.new(0.45, 0, 0.8, 0)
RakeDistanceValue.Size = UDim2.new(0, 128, 0, 17)
RakeDistanceValue.Font = Enum.Font.SourceSans
RakeDistanceValue.FontSize = Enum.FontSize.Size18
RakeDistanceValue.Text = "0"
RakeDistanceValue.TextColor3 = Color3.new(0,185,0)
RakeDistanceValue.TextSize = 20
RakeDistanceValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
RakeDistanceValue.TextStrokeTransparency = 0

HalfEndTime.Name = "Time"
HalfEndTime.Parent = BG
HalfEndTime.BackgroundColor3 = Color3.new(1, 1, 1)
HalfEndTime.BackgroundTransparency = 1
HalfEndTime.Position = UDim2.new(0.04, 0, 0.85, 0)
HalfEndTime.Size = UDim2.new(0, 128, 0, 17)
HalfEndTime.Font = Enum.Font.SourceSans
HalfEndTime.FontSize = Enum.FontSize.Size18
HalfEndTime.Text = "Time Left:"
HalfEndTime.TextColor3 = Color3.new(1, 1, 1)
HalfEndTime.TextSize = 20
HalfEndTime.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
HalfEndTime.TextStrokeTransparency = 0

HalfEndTimeValue.Name = "TimeValue"
HalfEndTimeValue.Parent = BG
HalfEndTimeValue.BackgroundColor3 = Color3.new(1, 1, 1)
HalfEndTimeValue.BackgroundTransparency = 1
HalfEndTimeValue.Position = UDim2.new(0.45, 0, 0.85, 0)
HalfEndTimeValue.Size = UDim2.new(0, 128, 0, 17)
HalfEndTimeValue.Font = Enum.Font.SourceSans
HalfEndTimeValue.FontSize = Enum.FontSize.Size18
HalfEndTimeValue.Text = "0"
HalfEndTimeValue.TextColor3 = Color3.new(0,185,0)
HalfEndTimeValue.TextSize = 20
HalfEndTimeValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
HalfEndTimeValue.TextStrokeTransparency = 0

PowerLevel.Name = "PowerLevel"
PowerLevel.Parent = BG
PowerLevel.BackgroundColor3 = Color3.new(1, 1, 1)
PowerLevel.BackgroundTransparency = 1
PowerLevel.Position = UDim2.new(0.04, 0, 0.9, 0)
PowerLevel.Size = UDim2.new(0, 128, 0, 17)
PowerLevel.Font = Enum.Font.SourceSans
PowerLevel.FontSize = Enum.FontSize.Size18
PowerLevel.Text = "Power Level:"
PowerLevel.TextColor3 = Color3.new(1, 1, 1)
PowerLevel.TextSize = 20
PowerLevel.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PowerLevel.TextStrokeTransparency = 0

PowerLevelValue.Name = "PowerLevelValue"
PowerLevelValue.Parent = BG
PowerLevelValue.BackgroundColor3 = Color3.new(1, 1, 1)
PowerLevelValue.BackgroundTransparency = 1
PowerLevelValue.Position = UDim2.new(0.45, 0, 0.9, 0)
PowerLevelValue.Size = UDim2.new(0, 128, 0, 17)
PowerLevelValue.Font = Enum.Font.SourceSans
PowerLevelValue.FontSize = Enum.FontSize.Size18
PowerLevelValue.Text = "0"
PowerLevelValue.TextColor3 = Color3.new(0,185,0)
PowerLevelValue.TextSize = 20
PowerLevelValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PowerLevelValue.TextStrokeTransparency = 0
 
Btn1.MouseButton1Click:connect(function()
    ReplicatedStorage.CurrentLightingProperties.FogEnd.Value = 9999;
    if ReplicatedStorage.Night.Value == true then
        ReplicatedStorage.CurrentLightingProperties.Brightness.Value = 50;
    end
end)

Btn1.MouseButton2Click:connect(function ()
    LightHack:destroy()
    mapGui:destroy()
end)

Btn2.MouseButton1Click:connect(function()
    for k,v in pairs(Player.PlayerGui:GetChildren()) do
        if(v.DataCost == 631) then v.Frame.StaminaFrame:destroy() end
    end
    while true do
		wait(0.0)
        Player.Character.Humanoid.WalkSpeed = 27
    end
end)

Btn3.MouseButton1Click:connect(function()
	Workspace.Map.SafeHouse.Door:destroy()
	Workspace.Map.Other:destroy()
    for k,v in pairs(Workspace.Filter:GetChildren()) do
        if(string.find(v.Name, "Invisible") ~= nil) then
            v:destroy()
        end
    end
end)

Btn4.MouseButton1Click:connect(function()
    Workspace.Map.Trees:destroy()
    for k,v in pairs(Workspace.Filter:GetChildren()) do
        if(string.find(v.Name, "Invisible") ~= nil) then
            v:destroy()
        end
    end
end)

Btn5.MouseButton1Click:connect(function()
    for k,v in pairs(Workspace.Filter.ScrapSpawns:GetChildren()) do
        for _,d in pairs(v:GetChildren()) do
            if(string.find(d.Name, "Scrap") ~= nil) then
                Player.Character.HumanoidRootPart.CFrame = d.Scrap.CFrame
                wait(1.5)
            end
        end
    end
end)

Btn6.MouseButton1Click:connect(function()
    for k,v in pairs(Workspace:GetChildren()) do
        if(string.find(v.Name, "FlareGun") ~= nil) then
            Player.Character.HumanoidRootPart.CFrame = v.FlareGun.CFrame
        end
    end
end)

Btn7.MouseButton1Click:connect(function()
    mapGui.Enabled = not mapGui.Enabled
end)

while true do
    wait(0.0)
    PowerLevelValue.Text = tostring(ReplicatedStorage.PowerValues.PowerLevel.Value / 10)..'%'
	HalfEndTimeValue.Text = ReplicatedStorage.Timer.Value
    flareGunFound = false
    ScrapsCount = 0
    for k,v in pairs(Workspace.Filter.ScrapSpawns:GetChildren()) do
        for _,d in pairs(v:GetChildren()) do
            if(string.find(d.Name, "Scrap") ~= nil) then
                ScrapsCount += 1
            end
        end
        ScrapsValue.Text = ScrapsCount
    end
    for n, c in pairs(Workspace:GetChildren()) do
        if(string.find(c.Name, "FlareGun")) then
            newColor = Color3.new(0,185,0)
            FlareGunValue.TextColor3 = newColor
            FlareGunValue.TextStrokeColor3 = newColor
            FlareGunValue.Text = tostring(string.find(c.Name, "FlareGun") ~= nil)
            flareGunFound = true
        elseif(not flareGunFound) then
            newColor = Color3.new(0.666667, 0, 0)
            FlareGunValue.TextColor3 = newColor
            FlareGunValue.TextStrokeColor3 = newColor
            FlareGunValue.Text = tostring(string.find(c.Name, "FlareGun") ~= nil)
        end
        if(c.Name == Player.Name) then
            for m, l in pairs(c:GetChildren()) do
				if(l.Name == "Humanoid") then
					HPValue.Text = string.format("%g",string.format("%.1f",tostring(l.Health)))
				end
                if(l.Name == "HumanoidRootPart") then
                    PlayerCoordsValue.Text = tostring(round(l.Position.X)).." "..tostring(round(l.Position.Y)).." "..tostring(round(l.Position.Z))
                    for k,v in pairs(Workspace:GetChildren()) do
                        if(v.Name == "Rake") then
                            for _,d in pairs(v:GetChildren()) do
                                if(d.Name == "HumanoidRootPart") then
                                    RakeDistanceValue.Text = string.format("%g",string.format("%.1f",math.sqrt(round((math.abs(round(l.Position.X) - round(d.Position.X)))) + (round(math.abs(round(l.Position.Y) - round(d.Position.Y)))) + (round(math.abs(round(l.Position.Z) - round(d.Position.Z)))))))
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
