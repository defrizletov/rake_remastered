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
local PowerLevel = Instance.new("TextLabel")
local PowerLevelValue = Instance.new("TextLabel")
local HalfEndTime = Instance.new("TextLabel")
local HalfEndTimeValue = Instance.new("TextLabel")
local RakeDistance = Instance.new("TextLabel")
local RakeDistanceValue = Instance.new("TextLabel")
local PlayerCoords = Instance.new("TextLabel")
local PlayerCoordsValue = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Toggle1 = Instance.new("TextButton")
local Toggle2 = Instance.new("TextButton")
local Toggle3 = Instance.new("TextButton")
local Toggle4 = Instance.new("TextButton")
local Toggle5 = Instance.new("TextButton")
local Toggle6 = Instance.new("TextButton")
local Toggle7 = Instance.new("TextButton")

local Player = Players.LocalPlayer
local shopVisible = false

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
 
Toggle1.Parent = BG
Toggle1.BackgroundColor3 = Color3.new(31, 149, 134)
Toggle1.BorderColor3 = Color3.new(31, 149, 134)
Toggle1.BorderSizePixel = 2
Toggle1.Position = UDim2.new(0.152380958, 0, 0.17, 0)
Toggle1.Size = UDim2.new(0, 130, 0, 35)
Toggle1.Font = Enum.Font.Highway
Toggle1.FontSize = Enum.FontSize.Size28
Toggle1.Text = "Light"
Toggle1.TextColor3 = Color3.new(1, 1, 1)
Toggle1.TextSize = 20
Toggle1.TextStrokeTransparency = 0

Toggle2.Parent = BG
Toggle2.BackgroundColor3 = Color3.new(31, 149, 134)
Toggle2.BorderColor3 = Color3.new(31, 149, 134)
Toggle2.BorderSizePixel = 2
Toggle2.Position = UDim2.new(0.152380958, 0, 0.24, 0)
Toggle2.Size = UDim2.new(0, 130, 0, 35)
Toggle2.Font = Enum.Font.Highway
Toggle2.FontSize = Enum.FontSize.Size28
Toggle2.Text = "Speed & Stamina Hack"
Toggle2.TextColor3 = Color3.new(1, 1, 1)
Toggle2.TextSize = 17
Toggle2.TextStrokeTransparency = 0
Toggle2.TextWrapped = true

Toggle3.Parent = BG
Toggle3.BackgroundColor3 = Color3.new(31, 149, 134)
Toggle3.BorderColor3 = Color3.new(31, 149, 134)
Toggle3.BorderSizePixel = 2
Toggle3.Position = UDim2.new(0.152380958, 0, 0.31, 0)
Toggle3.Size = UDim2.new(0, 130, 0, 35)
Toggle3.Font = Enum.Font.Highway
Toggle3.FontSize = Enum.FontSize.Size28
Toggle3.Text = "Delete Other"
Toggle3.TextColor3 = Color3.new(1, 1, 1)
Toggle3.TextSize = 20
Toggle3.TextStrokeTransparency = 0

Toggle4.Parent = BG
Toggle4.BackgroundColor3 = Color3.new(31, 149, 134)
Toggle4.BorderColor3 = Color3.new(31, 149, 134)
Toggle4.BorderSizePixel = 2
Toggle4.Position = UDim2.new(0.152380958, 0, 0.10, 0)
Toggle4.Size = UDim2.new(0, 130, 0, 35)
Toggle4.Font = Enum.Font.Highway
Toggle4.FontSize = Enum.FontSize.Size28
Toggle4.Text = "Delete Trees"
Toggle4.TextColor3 = Color3.new(1, 1, 1)
Toggle4.TextSize = 20
Toggle4.TextStrokeTransparency = 0

Toggle5.Parent = BG
Toggle5.BackgroundColor3 = Color3.new(31, 149, 134)
Toggle5.BorderColor3 = Color3.new(31, 149, 134)
Toggle5.BorderSizePixel = 2
Toggle5.Position = UDim2.new(0.152380958, 0, 0.38, 0)
Toggle5.Size = UDim2.new(0, 130, 0, 35)
Toggle5.Font = Enum.Font.Highway
Toggle5.FontSize = Enum.FontSize.Size28
Toggle5.Text = "AutoCollect Scraps"
Toggle5.TextColor3 = Color3.new(1, 1, 1)
Toggle5.TextSize = 17
Toggle5.TextStrokeTransparency = 0
Toggle5.TextWrapped = true

Toggle6.Parent = BG
Toggle6.BackgroundColor3 = Color3.new(31, 149, 134)
Toggle6.BorderColor3 = Color3.new(31, 149, 134)
Toggle6.BorderSizePixel = 2
Toggle6.Position = UDim2.new(0.152380958, 0, 0.45, 0)
Toggle6.Size = UDim2.new(0, 130, 0, 35)
Toggle6.Font = Enum.Font.Highway
Toggle6.FontSize = Enum.FontSize.Size28
Toggle6.Text = "PickUp FlareGun"
Toggle6.TextColor3 = Color3.new(1, 1, 1)
Toggle6.TextSize = 17
Toggle6.TextStrokeTransparency = 0
Toggle6.TextWrapped = true

Toggle7.Parent = BG
Toggle7.BackgroundColor3 = Color3.new(31, 149, 134)
Toggle7.BorderColor3 = Color3.new(31, 149, 134)
Toggle7.BorderSizePixel = 2
Toggle7.Position = UDim2.new(0.152380958, 0, 0.52, 0)
Toggle7.Size = UDim2.new(0, 130, 0, 35)
Toggle7.Font = Enum.Font.Highway
Toggle7.FontSize = Enum.FontSize.Size28
Toggle7.Text = "Toggle Map"
Toggle7.TextColor3 = Color3.new(1, 1, 1)
Toggle7.TextSize = 17
Toggle7.TextStrokeTransparency = 0
Toggle7.TextWrapped = true

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
Credit.Position = UDim2.new(0.195238099, 0, 0.95, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "by defriz"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0

PlayerCoords.Name = "PlayerCoords"
PlayerCoords.Parent = BG
PlayerCoords.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerCoords.BackgroundTransparency = 1
PlayerCoords.Position = UDim2.new(0.05, 0, 0.75, 0)
PlayerCoords.Size = UDim2.new(0, 128, 0, 17)
PlayerCoords.Font = Enum.Font.SourceSans
PlayerCoords.FontSize = Enum.FontSize.Size18
PlayerCoords.Text = "Your coords: "
PlayerCoords.TextColor3 = Color3.new(1, 1, 1)
PlayerCoords.TextSize = 17
PlayerCoords.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PlayerCoords.TextStrokeTransparency = 0
PlayerCoords.TextWrapped = true

PlayerCoordsValue.Name = "PlayerCoordsValue"
PlayerCoordsValue.Parent = BG
PlayerCoordsValue.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerCoordsValue.BackgroundTransparency = 1
PlayerCoordsValue.Position = UDim2.new(0.45, 0, 0.75, 0)
PlayerCoordsValue.Size = UDim2.new(0, 128, 0, 17)
PlayerCoordsValue.Font = Enum.Font.SourceSans
PlayerCoordsValue.FontSize = Enum.FontSize.Size18
PlayerCoordsValue.Text = "0"
PlayerCoordsValue.TextColor3 = Color3.new(0,185,0)
PlayerCoordsValue.TextSize = 20
PlayerCoordsValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PlayerCoordsValue.TextStrokeTransparency = 0
PlayerCoordsValue.TextWrapped = true

RakeDistance.Name = "RakeDistance"
RakeDistance.Parent = BG
RakeDistance.BackgroundColor3 = Color3.new(1, 1, 1)
RakeDistance.BackgroundTransparency = 1
RakeDistance.Position = UDim2.new(0.12, 0, 0.8, 0)
RakeDistance.Size = UDim2.new(0, 128, 0, 17)
RakeDistance.Font = Enum.Font.SourceSans
RakeDistance.FontSize = Enum.FontSize.Size18
RakeDistance.Text = "Rake dist. to you: "
RakeDistance.TextColor3 = Color3.new(1, 1, 1)
RakeDistance.TextSize = 17
RakeDistance.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
RakeDistance.TextStrokeTransparency = 0
RakeDistance.TextWrapped = true

RakeDistanceValue.Name = "RakeDistanceValue"
RakeDistanceValue.Parent = BG
RakeDistanceValue.BackgroundColor3 = Color3.new(1, 1, 1)
RakeDistanceValue.BackgroundTransparency = 1
RakeDistanceValue.Position = UDim2.new(0.5, 0, 0.8, 0)
RakeDistanceValue.Size = UDim2.new(0, 128, 0, 17)
RakeDistanceValue.Font = Enum.Font.SourceSans
RakeDistanceValue.FontSize = Enum.FontSize.Size18
RakeDistanceValue.Text = "0"
RakeDistanceValue.TextColor3 = Color3.new(0,185,0)
RakeDistanceValue.TextSize = 20
RakeDistanceValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
RakeDistanceValue.TextStrokeTransparency = 0
RakeDistanceValue.TextWrapped = true

HalfEndTime.Name = "Time"
HalfEndTime.Parent = BG
HalfEndTime.BackgroundColor3 = Color3.new(1, 1, 1)
HalfEndTime.BackgroundTransparency = 1
HalfEndTime.Position = UDim2.new(0.17, 0, 0.85, 0)
HalfEndTime.Size = UDim2.new(0, 128, 0, 17)
HalfEndTime.Font = Enum.Font.SourceSans
HalfEndTime.FontSize = Enum.FontSize.Size18
HalfEndTime.Text = "Time Left: "
HalfEndTime.TextColor3 = Color3.new(1, 1, 1)
HalfEndTime.TextSize = 20
HalfEndTime.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
HalfEndTime.TextStrokeTransparency = 0
HalfEndTime.TextWrapped = true

HalfEndTimeValue.Name = "TimeValue"
HalfEndTimeValue.Parent = BG
HalfEndTimeValue.BackgroundColor3 = Color3.new(1, 1, 1)
HalfEndTimeValue.BackgroundTransparency = 1
HalfEndTimeValue.Position = UDim2.new(0.5, 0, 0.85, 0)
HalfEndTimeValue.Size = UDim2.new(0, 128, 0, 17)
HalfEndTimeValue.Font = Enum.Font.SourceSans
HalfEndTimeValue.FontSize = Enum.FontSize.Size18
HalfEndTimeValue.Text = "0"
HalfEndTimeValue.TextColor3 = Color3.new(0,185,0)
HalfEndTimeValue.TextSize = 20
HalfEndTimeValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
HalfEndTimeValue.TextStrokeTransparency = 0
HalfEndTimeValue.TextWrapped = true

PowerLevel.Name = "PowerLevel"
PowerLevel.Parent = BG
PowerLevel.BackgroundColor3 = Color3.new(1, 1, 1)
PowerLevel.BackgroundTransparency = 1
PowerLevel.Position = UDim2.new(0.17, 0, 0.9, 0)
PowerLevel.Size = UDim2.new(0, 128, 0, 17)
PowerLevel.Font = Enum.Font.SourceSans
PowerLevel.FontSize = Enum.FontSize.Size18
PowerLevel.Text = "Power Level: "
PowerLevel.TextColor3 = Color3.new(1, 1, 1)
PowerLevel.TextSize = 20
PowerLevel.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PowerLevel.TextStrokeTransparency = 0
PowerLevel.TextWrapped = true

PowerLevelValue.Name = "PowerLevelValue"
PowerLevelValue.Parent = BG
PowerLevelValue.BackgroundColor3 = Color3.new(1, 1, 1)
PowerLevelValue.BackgroundTransparency = 1
PowerLevelValue.Position = UDim2.new(0.5, 0, 0.9, 0)
PowerLevelValue.Size = UDim2.new(0, 128, 0, 17)
PowerLevelValue.Font = Enum.Font.SourceSans
PowerLevelValue.FontSize = Enum.FontSize.Size18
PowerLevelValue.Text = "0"
PowerLevelValue.TextColor3 = Color3.new(0,185,0)
PowerLevelValue.TextSize = 20
PowerLevelValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PowerLevelValue.TextStrokeTransparency = 0
PowerLevelValue.TextWrapped = true
 
Toggle1.MouseButton1Click:connect(function()
    ReplicatedStorage.CurrentLightingProperties.FogEnd.Value = 9999;
    if ReplicatedStorage.Night.Value == true then
        ReplicatedStorage.CurrentLightingProperties.Brightness.Value = 50;
    end
end)

Toggle1.MouseButton2Click:connect(function ()
    LightHack:destroy()
    mapGui:destroy()
end)

Toggle2.MouseButton1Click:connect(function()
    for k,v in pairs(Player.PlayerGui:GetChildren()) do
        if(v.DataCost == 631) then v.Frame.StaminaFrame:destroy() end
    end
    while true do
		wait(0.0)
        Player.Character.Humanoid.WalkSpeed = 27
    end
end)

Toggle3.MouseButton1Click:connect(function()
	Workspace.Map.SafeHouse.Door:destroy()
	Workspace.Map.Other:destroy()
    for k,v in pairs(Workspace.Filter:GetChildren()) do
        if(string.find(v.Name, "Invisible") ~= nil) then
            v:destroy()
        end
    end
end)

Toggle4.MouseButton1Click:connect(function()
    Workspace.Map.Trees:destroy()
    for k,v in pairs(Workspace.Filter:GetChildren()) do
        if(string.find(v.Name, "Invisible") ~= nil) then
            v:destroy()
        end
    end
end)

Toggle5.MouseButton1Click:connect(function()
    for k,v in pairs(Workspace.Filter.ScrapSpawns:GetChildren()) do
        for _,d in pairs(v:GetChildren()) do
            if(string.find(d.Name, "Scrap") ~= nil) then
                Player.Character.HumanoidRootPart.CFrame = d.Scrap.CFrame
                wait(1.50)
            end
        end
    end
end)

Toggle6.MouseButton1Click:connect(function()
    for k,v in pairs(Workspace:GetChildren()) do
        if(string.find(v.Name, "FlareGun") ~= nil) then
            Player.Character.HumanoidRootPart.CFrame = v.FlareGun.CFrame
        end
    end
end)

Toggle7.MouseButton1Click:connect(function()
    mapGui.Enabled = not mapGui.Enabled
end)

while true do
    wait(0.0)
    PowerLevelValue.Text = ReplicatedStorage.PowerValues.PowerLevel.Value
    HalfEndTimeValue.Text = ReplicatedStorage.Timer.Value
    for n, c in pairs(Workspace:GetChildren()) do
        if(c.Name == Player.Name) then
            for m, l in pairs(c:GetChildren()) do
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
