local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))();

OrionLib:MakeNotification({
	Name = "Rake Remastered Hack",
	Content = "Welcome!",
	Time = 3
});

local ReplicatedStorage = game:GetService("ReplicatedStorage");
local Workspace = game:GetService("Workspace");
local Player = game:GetService("Players").LocalPlayer;
local ScrapsCount = 0;
local flareGunFound = false;
local function round(x)
    return x >= 0 and math.floor(x+0.5) or math.ceil(x-0.5)
end;

local Window = OrionLib:MakeWindow({ Name = "Rake Hack - defriz", IntroEnabled = false });
local MainTab = Window:MakeTab({ Name = "Main" });
local InfoSection = MainTab:AddSection({ Name = "Game Information" });
local ButtonsSection = MainTab:AddSection({ Name = "Hack Buttons" });

local ScrapsLabel = InfoSection:AddLabel("Scraps count:");
local FlareGunLabel = InfoSection:AddLabel("FlareGun:");
local HPLabel = InfoSection:AddLabel("HP:");
local PowerLevelLabel = InfoSection:AddLabel("Power Level:");
local TimeLeftLabel = InfoSection:AddLabel("Time Left:");
local RakeDistanceLabel = InfoSection:AddLabel("Rake Distance:");
local CoordsLabel = InfoSection:AddLabel("Coords:");

ButtonsSection:AddButton({
	Name = "Light & Fog",
	Callback = function ()
        ReplicatedStorage.CurrentLightingProperties.FogEnd.Value = 9999;
        if(ReplicatedStorage.Night.Value) then ReplicatedStorage.CurrentLightingProperties.Brightness.Value = 50; end
	end    
});

ButtonsSection:AddButton({
	Name = "Speed & Stamina",
	Callback = function ()
        for _, gui in pairs(Player.PlayerGui:GetChildren()) do if(gui.DataCost == 631) then gui.Frame.StaminaFrame:destroy(); end; end;
        while true do
            wait(0);
            Player.Character.Humanoid.WalkSpeed = 27;
        end;
	end    
});

ButtonsSection:AddButton({
	Name = "Delete Other & Door HitBox",
	Callback = function ()
        for _, v in pairs(Workspace.Filter:GetChildren()) do if(v.Name:find("Invisible")) then v:destroy(); end; end;
        Workspace.Map.Other:destroy();
        while true do
            wait(0);
            for _, e in pairs(Workspace.Map.SafeHouse.Door:GetChildren()) do if(e.Name == "Door") then e.CanCollide = false; end; end;
        end;
	end    
});

ButtonsSection:AddButton({
	Name = "Delete Trees",
	Callback = function ()
        Workspace.Map.Trees:destroy();
        for _, v in pairs(Workspace.Filter:GetChildren()) do if(v.Name:find("Invisible")) then v:destroy(); end; end;
	end
});

ButtonsSection:AddButton({
	Name = "AutoCollect Scraps",
	Callback = function ()
        for k, v in pairs(Workspace.Filter.ScrapSpawns:GetChildren()) do
            for _, d in pairs(v:GetChildren()) do
                if(d.Name:find("Scrap")) then
                    Player.Character.HumanoidRootPart.CFrame = d.Scrap.CFrame;
                    wait(1.5);
                end;
            end;
        end;
	end    
});

ButtonsSection:AddButton({
	Name = "PickUp FlareGun",
	Callback = function ()
        for _, gun in pairs(Workspace:GetChildren()) do if(gun.Name:find("FlareGun")) then Player.Character.HumanoidRootPart.CFrame = gun.FlareGun.CFrame; end; end;
	end    
});

OrionLib:Init();

while true do
    wait(0);
    PowerLevelLabel:Set("Power Level: "..tostring(ReplicatedStorage.PowerValues.PowerLevel.Value / 10).."%");
	TimeLeftLabel:Set("Time Left: "..tostring(ReplicatedStorage.Timer.Value));
    flareGunFound = false;
    ScrapsCount = 0;
    for k,v in pairs(Workspace.Filter.ScrapSpawns:GetChildren()) do
        for _,d in pairs(v:GetChildren()) do if(d.Name:find("Scrap")) then ScrapsCount += 1; end; end;
        ScrapsLabel:Set("Scraps count: "..tostring(ScrapsCount));
    end;
    for n, c in pairs(Workspace:GetChildren()) do
        if(c.Name:find("FlareGun")) then
            FlareGunLabel:Set("FlareGun: "..tostring(string.find(c.Name, "FlareGun") ~= nil));
            flareGunFound = true;
        elseif(not flareGunFound) then
            FlareGunLabel:Set("FlareGun: "..tostring(string.find(c.Name, "FlareGun") ~= nil));
        end;
        if(c.Name == Player.Name) then
            for m, l in pairs(c:GetChildren()) do
				if(l.Name == "Humanoid") then
					HPLabel:Set("HP: "..string.format("%g",string.format("%.1f",tostring(l.Health))));
				end;
                if(l.Name == "HumanoidRootPart") then
                    CoordsLabel:Set("Coords: "..tostring(round(l.Position.X)).." "..tostring(round(l.Position.Y)).." "..tostring(round(l.Position.Z)));
                    for k,v in pairs(Workspace:GetChildren()) do
                        if(v.Name == "Rake") then
                            for _,d in pairs(v:GetChildren()) do
                                if(d.Name == "HumanoidRootPart") then
                                    RakeDistanceLabel:Set("Rake Distance: "..string.format("%g",string.format("%.1f",math.sqrt(round((math.abs(round(l.Position.X) - round(d.Position.X)))) + (round(math.abs(round(l.Position.Y) - round(d.Position.Y)))) + (round(math.abs(round(l.Position.Z) - round(d.Position.Z))))))));
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
end;
