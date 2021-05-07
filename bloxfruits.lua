local CoastingLibrary = loadstring(game:HttpGet("https://pastebin.com/raw/3gQQtaKX"))()

local MainTab = CoastingLibrary:CreateTab("Main")
local AutofarmsSection = MainTab:CreateSection("Autofarms")
local StatsSection = MainTab:CreateSection("Stats")
local TeleportsSection = MainTab:CreateSection("Teleports")
local CreditsSection = MainTab:CreateSection("Credits")

        --//Vars\\--
        local QName = "";
        local Num = "";
        local Mob = "";
        local virtualUser = game:GetService('VirtualUser')
    
        --//Tools\\--
        local ToolTBL = {};
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            table.insert(ToolTBL, v.Name)
            end;
        end;
        --//End\\--

		--//Quests\\--
        local QUEST = {"Bandit [Lv. 5]","Monkey [Lv. 14]", "Gorilla [Lv. 20]","Pirate [Lv. 35]", "Brute [Lv. 45]", "Desert Bandit [Lv. 60]", "Desert Officer [Lv. 70]", "Snow Bandit [Lv. 90]", "Snowman [Lv. 100]","Chief Petty Officer [Lv. 120]" ,"Sky Bandit [Lv. 150]", "Toga Warrior [Lv. 225]", "Gladiator [Lv. 275]", "Military Soldier [Lv. 300]", "Military Spy [Lv. 330]", "God's Guard [Lv. 450]","Shanda [Lv. 475]", "Galley Pirate [Lv. 625]"};
    
        --//Mobs\\--
        local Mobs = {"Bandit [Lv. 5]","Monkey [Lv. 14]", "Gorilla [Lv. 20]","Pirate [Lv. 35]", "Brute [Lv. 45]", "Desert Bandit [Lv. 60]", "Desert Officer [Lv. 70]", "Snow Bandit [Lv. 90]", "Snowman [Lv. 100]","Chief Petty Officer [Lv. 120]" ,"Sky Bandit [Lv. 150]", "Toga Warrior [Lv. 225]", "Gladiator [Lv. 275]", "Military Soldier [Lv. 300]", "Military Spy [Lv. 330]", "God's Guard [Lv. 450]","Shanda [Lv. 475]", "Galley Pirate [Lv. 625]"};
		
AutofarmsSection:CreateDropdown("Mob", {"Mobs"}, 1, function(value)
   Mob = value
end)

AutofarmsSection:CreateDropdown("Quest", {"QUEST"}, 1, function(value)
   QName = value
end)

AutofarmsSection:CreateToggle("Autofarm", function(value)
 _G.Autofarm = value
    
            while _G.Autofarm and wait() do
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if game.Players.LocalPlayer.Character and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                        if v.Name == Mob and v.Humanoid.Health > 0 then
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            repeat wait()
                            v.Humanoid.HipHeight = 10 v.HumanoidRootPart.Size = Vector3.new(20, 20, 20) v.HumanoidRootPart.Transparency = 1 v.HumanoidRootPart.CanCollide = false
                            virtualUser:CaptureController() virtualUser:Button1Down(Vector2.new(), CFrame.new())
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Head.CFrame + (v.Head.CFrame.lookVector * -10)
                            until v.Humanoid.Health <= 0 or _G.Autofarm == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end);

AutofarmsSection:CreateToggle("Auto Quest", function(value)
_G.AutoQ = value
    
            while _G.AutoQ and wait() do
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                repeat wait()
                    if QName == "Bandit [Lv. 5]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NPCs["Bandit Quest Giver"].HumanoidRootPart.CFrame wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BanditQuest1",1)
                        elseif QName == "Monkey [Lv. 14]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NPCs.Adventurer.HumanoidRootPart.CFrame wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","JungleQuest",1)
                        elseif QName == "Gorilla [Lv. 20]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1600.50122, 36.8779411, 153.310196, 0.0300687663, -1.05255404e-08, -0.999547899, 1.07905e-08, 1, -1.0205695e-08, 0.999547899, -1.04787468e-08, 0.0300687663) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","JungleQuest",2)
                        elseif QName == "Pirate [Lv. 35]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1140.31445, 4.77785587, 3828.89331, -0.971619725, -4.04230853e-08, 0.236548603, -5.81681121e-08, 1, -6.8037636e-08, -0.236548603, -7.98663109e-08, -0.971619725) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BuggyQuest1",1)
                        elseif QName == "Brute [Lv. 45]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1140.31445, 4.77785587, 3828.89331, -0.971619725, -4.04230853e-08, 0.236548603, -5.81681121e-08, 1, -6.8037636e-08, -0.236548603, -7.98663109e-08, -0.971619725) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BuggyQuest1",2)
                        elseif QName == "Desert Bandit [Lv. 60]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(896.173096, 6.46426821, 4390.53418, -0.809399545, 9.13879958e-08, 0.587258399, 7.05387322e-08, 1, -5.8396747e-08, -0.587258399, -5.84183768e-09, -0.809399545) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","DesertQuest",1)
                        elseif QName == "Desert Officer [Lv. 70]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(896.173096, 6.46426821, 4390.53418, -0.809399545, 9.13879958e-08, 0.587258399, 7.05387322e-08, 1, -5.8396747e-08, -0.587258399, -5.84183768e-09, -0.809399545) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","DesertQuest",2)
                        elseif QName == "Snow Bandit [Lv. 90]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1391.94434, 87.2985916, -1299.81482, -0.403577954, -1.16358194e-07, 0.914945245, -8.48047765e-09, 1, 1.23434333e-07, -0.914945245, 4.20562039e-08, -0.403577954) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","SnowQuest",1)
                        elseif QName == "Snowman [Lv. 100]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1391.94434, 87.2985916, -1299.81482, -0.403577954, -1.16358194e-07, 0.914945245, -8.48047765e-09, 1, 1.23434333e-07, -0.914945245, 4.20562039e-08, -0.403577954) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","SnowQuest",2)
                        elseif QName == "Chief Petty Officer [Lv. 120]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5037.3999, 28.6778412, 4324.73145, 0.00520073576, 6.9433149e-08, 0.99998641, 6.0223897e-08, 1, -6.97473013e-08, -0.99998641, 6.0585819e-08, 0.00520073576) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","MarineQuest2",1)
                        elseif QName == "Sky Bandit [Lv. 150]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4840.52197, 717.695374, -2621.18481, -0.88410145, 1.23148197e-07, -0.467294961, 1.18970128e-07, 1, 3.84479435e-08, 0.467294961, -2.16022595e-08, -0.88410145) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","SkyQuest",1)
                        elseif QName == "Toga Warrior [Lv. 225]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1577.51843, 7.41514301, -2985.13721, 0.501454055, 9.87559261e-08, 0.865184307, -6.08054265e-08, 1, -7.89020262e-08, -0.865184307, -1.3042162e-08, 0.501454055) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","ColosseumQuest",1)
                        elseif QName == "Gladiator [Lv. 275]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1577.51843, 7.41514301, -2985.13721, 0.501454055, 9.87559261e-08, 0.865184307, -6.08054265e-08, 1, -7.89020262e-08, -0.865184307, -1.3042162e-08, 0.501454055) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","ColosseumQuest",2)
                        elseif QName == "Military Soldier [Lv. 300]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5315.37158, 12.2626343, 8516.5752, 0.521885574, -3.06323393e-08, -0.853015542, 6.98466351e-09, 1, -3.1637331e-08, 0.853015542, 1.05530384e-08, 0.521885574) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","MagmaQuest",1)
                        elseif QName == "Military Spy [Lv. 330]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5315.37158, 12.2626343, 8516.5752, 0.521885574, -3.06323393e-08, -0.853015542, 6.98466351e-09, 1, -3.1637331e-08, 0.853015542, 1.05530384e-08, 0.521885574) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","MagmaQuest",2)
                        elseif QName == "God's Guard [Lv. 450]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4721.53662, 845.302979, -1952.62, -0.998197973, 6.45860609e-08, 0.0600069761, 6.20202556e-08, 1, -4.46208901e-08, -0.0600069761, -4.08188328e-08, -0.998197973) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","SkyExp1Quest",1)
                        elseif QName == "Shanda [Lv. 475]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4721.53662, 845.302979, -1952.62, -0.998197973, 6.45860609e-08, 0.0600069761, 6.20202556e-08, 1, -4.46208901e-08, -0.0600069761, -4.08188328e-08, -0.998197973) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","SkyExp1Quest",2)
                        elseif QName == "Galley Pirate [Lv. 625]" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5257.77148, 38.5269432, 4049.80347, -0.0350184143, -8.86951241e-08, -0.999386668, -7.2408092e-08, 1, -8.62123883e-08, 0.999386668, 6.9344658e-08, -0.0350184143) wait(0.6)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","FountainQuest",1)
                        end;
                    until game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true or _G.AutoQ == false
                end;
            end;
        end);

AutofarmsSection:CreateDropdown("Tool", {"ToolTBL"}, 1, function(value)
    UseTool = value
end)

AutofarmsSection:CreateToggle("Auto Equip", function(value)
        _G.AutoEquip = value
        
            while _G.AutoEquip and wait() do
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.name == UseTool then
                        v.Parent = game.Players.LocalPlayer.Character
                    end;
                end;
            end;
        end);
StatsSection:CreateSlider("Stat Point Amount", 0, 1524, 1, false, function(value)
        print("Amount:",value)
        _G.StatPA = value
        end);
    
        StatsSection:CreateToggle("Auto Melee", nil, function(value)
        while value and wait() do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.StatPA)
            end;
        end);
    
        StatsSection:CreateToggle("Auto Defense", nil, function(value)
            while value and wait() do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.StatPA)
            end;
        end);
    
        StatsSection:CreateToggle("Auto Sword", nil, function(value)
            while value and wait() do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.StatPA)
            end;
        end);
    
        StatsSection:CreateToggle("Auto Gun", nil, function(value)
            while value and wait() do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.StatPA)
            end;
        end);
    
        StatsSection:CreateToggle("Auto Blox Fruit", nil, function(value)
            while value and wait() do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",_G.StatPA)
            end;
        end);
    
    
        TeleportsSection:CreateButton("The Colosseum", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1461.09448, 7.28632164, -2862.42725)
        end);
    
        TeleportsSection:CreateButton("The Desert", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(911.543213, 6.60186195, 4143.49561)
        end);
    
        TeleportsSection:CreateButton("Fishman Island", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61352.3828, 14.71875, 1502.90918)
        end);
    
        TeleportsSection:CreateButton("Snow Island", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1111.27, 7.30361, -1159.95)
        end);
    
        TeleportsSection:CreateButton("Jungle Island", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1454.78, 11.852, 440.674)
        end);
    
        TeleportsSection:CreateButton("Magma Island", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5237.77, 8.59014, 8443.45)
        end);
    
        TeleportsSection:CreateButton("Marine Island", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4808.52, 20.7623, 4360.04)
        end);
    
        TeleportsSection:CreateButton("Marine Starter Base", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2877.62, 41.4389, 2274.58)
        end);
    
        TeleportsSection:CreateButton("Boss Island", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2843.11, 7.39225, 5328.86)
        end);
    
        TeleportsSection:CreateButton("Pirate island", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1115.73, 4.75205, 3831.72)
        end);
    
        TeleportsSection:CreateButton("Prison Base", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4851.15, 5.65206, 734.877)
        end);
    
        TeleportsSection:CreateButton("Sky Island", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4847.87, 717.696, -2631.52)
        end);
    
        TeleportsSection:CreateButton("Village", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(782.739, 5.77678, 1428.92)
        end);
    
        TeleportsSection:CreateButton("Fountin City", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5231.15, 38.5011, 4069.96)
        end);