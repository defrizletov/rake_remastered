local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LightHack = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle1 = Instance.new("TextButton")
local Toggle2 = Instance.new("TextButton")
local Toggle3 = Instance.new("TextButton")
local Toggle4 = Instance.new("TextButton")
local PowerLevel = Instance.new("TextLabel")
local HalfEndTime = Instance.new("TextLabel")
local PowerLevelValue = Instance.new("TextLabel")
local HalfEndTimeValue = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Player = Players.LocalPlayer
 
LightHack.Name = "Rake Hack"
LightHack.Parent = game.CoreGui
 
BG.Name = "BG"
BG.Parent = LightHack
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.3, 0)
BG.Size = UDim2.new(0, 190, 0, 350)
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
Toggle1.Position = UDim2.new(0.152380958, 0, 0.25, 0)
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
Toggle2.Position = UDim2.new(0.152380958, 0, 0.35, 0)
Toggle2.Size = UDim2.new(0, 130, 0, 35)
Toggle2.Font = Enum.Font.Highway
Toggle2.FontSize = Enum.FontSize.Size28
Toggle2.Text = "Speed"
Toggle2.TextColor3 = Color3.new(1, 1, 1)
Toggle2.TextSize = 20
Toggle2.TextStrokeTransparency = 0

Toggle3.Parent = BG
Toggle3.BackgroundColor3 = Color3.new(31, 149, 134)
Toggle3.BorderColor3 = Color3.new(31, 149, 134)
Toggle3.BorderSizePixel = 2
Toggle3.Position = UDim2.new(0.152380958, 0, 0.45, 0)
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
Toggle4.Position = UDim2.new(0.152380958, 0, 0.17, 0)
Toggle4.Size = UDim2.new(0, 130, 0, 35)
Toggle4.Font = Enum.Font.Highway
Toggle4.FontSize = Enum.FontSize.Size28
Toggle4.Text = "Delete Trees"
Toggle4.TextColor3 = Color3.new(1, 1, 1)
Toggle4.TextSize = 20
Toggle4.TextStrokeTransparency = 0
 
Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by defriz"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0

HalfEndTime.Name = "Time"
HalfEndTime.Parent = BG
HalfEndTime.BackgroundColor3 = Color3.new(1, 1, 1)
HalfEndTime.BackgroundTransparency = 1
HalfEndTime.Position = UDim2.new(0.195238099, 0, 0.68, 0)
HalfEndTime.Size = UDim2.new(0, 128, 0, 17)
HalfEndTime.Font = Enum.Font.SourceSans
HalfEndTime.FontSize = Enum.FontSize.Size18
HalfEndTime.Text = "Time Left: "
HalfEndTime.TextColor3 = Color3.new(1, 1, 1)
HalfEndTime.TextSize = 20
HalfEndTime.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
HalfEndTime.TextStrokeTransparency = 0

HalfEndTimeValue.Name = "TimeValue"
HalfEndTimeValue.Parent = BG
HalfEndTimeValue.BackgroundColor3 = Color3.new(1, 1, 1)
HalfEndTimeValue.BackgroundTransparency = 1
HalfEndTimeValue.Position = UDim2.new(0.5, 0, 0.68, 0)
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
PowerLevel.Position = UDim2.new(0.195238099, 0, 0.76, 0)
PowerLevel.Size = UDim2.new(0, 128, 0, 17)
PowerLevel.Font = Enum.Font.SourceSans
PowerLevel.FontSize = Enum.FontSize.Size18
PowerLevel.Text = "Power Level: "
PowerLevel.TextColor3 = Color3.new(1, 1, 1)
PowerLevel.TextSize = 20
PowerLevel.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PowerLevel.TextStrokeTransparency = 0

PowerLevelValue.Name = "PowerLevelValue"
PowerLevelValue.Parent = BG
PowerLevelValue.BackgroundColor3 = Color3.new(1, 1, 1)
PowerLevelValue.BackgroundTransparency = 1
PowerLevelValue.Position = UDim2.new(0.5, 0, 0.76, 0)
PowerLevelValue.Size = UDim2.new(0, 128, 0, 17)
PowerLevelValue.Font = Enum.Font.SourceSans
PowerLevelValue.FontSize = Enum.FontSize.Size18
PowerLevelValue.Text = "0"
PowerLevelValue.TextColor3 = Color3.new(0,185,0)
PowerLevelValue.TextSize = 20
PowerLevelValue.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
PowerLevelValue.TextStrokeTransparency = 0
 
Toggle1.MouseButton1Click:connect(function()
    ReplicatedStorage.CurrentLightingProperties.FogEnd.Value = 1000;
    if ReplicatedStorage.Night.Value == true then
        ReplicatedStorage.CurrentLightingProperties.Brightness.Value = 50;
    else
        ReplicatedStorage.CurrentLightingProperties.Brightness.Value = 10;
    end
end)

Toggle1.MouseButton2Click:connect(function ()
    LightHack:destroy()
end)

Toggle2.MouseButton1Click:connect(function()
    while true do
		wait(0.1)
        Player.Character.Humanoid.WalkSpeed = 60
    end
end)

Toggle3.MouseButton1Click:connect(function()
    print(Workspace.Map.Other)
    Workspace.Map.Other:destroy()
end)

Toggle4.MouseButton1Click:connect(function()
    Workspace.Map.Trees:destroy()
end)

while true do
    wait(0.5)
    PowerLevelValue.Text = ReplicatedStorage.PowerValues.PowerLevel.Value
    HalfEndTimeValue.Text = ReplicatedStorage.Timer.Value
end