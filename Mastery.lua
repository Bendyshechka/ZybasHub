local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Bendyshechka/ZybasHub/refs/heads/main/Library')))()
local Window = OrionLib:MakeWindow({Name = "ZubasHub - Mastery 👏", IntroIcon = "rbxassetid://15315284749", HidePremium = false, SaveConfig = true, ConfigFolder = "ZubasHub"})

if workspace:FindFirstChild("SafeBox") == nil then
local S = Instance.new("Part")
S.Name = "SafeBox"
S.Anchored = true
S.CanCollide = true
S.Transparency = .5
S.Position = Vector3.new(-5500, -5000, -5000)
S.Size = Vector3.new(21, 5, 21)
S.Parent = workspace

local S1 = Instance.new("Part")
S1.Name = "S1"
S1.Anchored = true
S1.CanCollide = true
S1.Transparency = .5
S1.Position = Vector3.new(-5499.91, -4991.5, -4989.09)
S1.Size = Vector3.new(20, 13, 2)
S1.Parent = workspace:FindFirstChild("SafeBox")

local S2 = Instance.new("Part")
S2.Name = "S2"
S2.Anchored = true
S2.CanCollide = true
S2.Transparency = .5
S2.Position = Vector3.new(-5510.27979, -4991.5, -5000.08984, -4.47034836e-07, 0, 0.999999881, 0, 1, 0, -0.999999881, 0, -3.69319451e-07)
S2.Size = Vector3.new(21, 14, 2)
S2.Rotation = Vector3.new(0, -90, 0)
S2.Parent = workspace:FindFirstChild("SafeBox")

local S3 = Instance.new("Part")
S3.Name = "S3"
S3.Anchored = true
S3.CanCollide = true
S3.Transparency = .5
S3.Position = Vector3.new(-5499.3, -4991.5, -5011.12)
S3.Size = Vector3.new(21, 13, 2)
S3.Parent = workspace:FindFirstChild("SafeBox")

local S4 = Instance.new("Part")
S4.Name = "S4"
S4.Anchored = true
S4.CanCollide = true
S4.Transparency = .5
S4.Position = Vector3.new(-5489.97559, -4991.5, -4999.52637, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
S4.Size = Vector3.new(22, 13, 2)
S4.Rotation = Vector3.new(0, -90, 0)
S4.Parent = workspace:FindFirstChild("SafeBox")

local S5 = Instance.new("Part")
S5.Name = "S5"
S5.Anchored = true
S5.CanCollide = true
S5.Transparency = .5
S5.Position = Vector3.new(-5499.39, -4984, -5000.07)
S5.Size = Vector3.new(24, 3, 24)
S5.Parent = workspace:FindFirstChild("SafeBox")
end

---Bed---

if workspace:FindFirstChild("Bed") == nil then
local Bed = Instance.new("Part")
Bed.Name = "Bed"
Bed.Anchored = true
Bed.Position = Vector3.new(-100019.5, 104, -1500)
Bed.Size = Vector3.new(0.01, 0.01, 10)
Bed.Parent = workspace

local B1 = Instance.new("Part")
B1.Name = "Bed1"
B1.Anchored = true
B1.Position = Vector3.new(-100025, 104, -1500)
B1.Size = Vector3.new(1, 6, 7)
B1.BrickColor = BrickColor.new("Burnt Sienna")
B1.Parent = workspace:FindFirstChild("Bed")

local B2 = Instance.new("Part")
B2.Name = "Bed2"
B2.Anchored = true
B2.Position = Vector3.new(-100023, 104.5, -1500)
B2.Size = Vector3.new(2, 1, 6)
B2.BrickColor = BrickColor.new("Mid gray")
B2.Parent = workspace:FindFirstChild("Bed")

local B3 = Instance.new("Part")
B3.Name = "Bed3"
B3.Anchored = true
B3.Position = Vector3.new(-100019, 104, -1500)
B3.Size = Vector3.new(11, 1, 7)
B3.BrickColor = BrickColor.new("Crimson")
B3.Parent = workspace:FindFirstChild("Bed")

local B4 = Instance.new("Part")
B4.Name = "Bed4"
B4.Anchored = true
B4.Position = Vector3.new(-100013, 104, -1500)
B4.Size = Vector3.new(1, 6, 7)
B4.BrickColor = BrickColor.new("Burnt Sienna")
B4.Parent = workspace:FindFirstChild("Bed")

local B5 = Instance.new("Part")
B5.Name = "Bed5"
B5.Anchored = true
B5.Position = Vector3.new(-100019, 103, -1500)
B5.Size = Vector3.new(11, 1, 7)
B5.BrickColor = BrickColor.new("Dark orange")
B5.Parent = workspace:FindFirstChild("Bed")
end

---SafeSpot---

if workspace:FindFirstChild("Safespot") == nil then
local Safespot = Instance.new("Part",workspace)
Safespot.Name = "Safespot"
Safespot.Position = Vector3.new(10000,-50,10000)
Safespot.Size = Vector3.new(500,10,500)
Safespot.Anchored = true
Safespot.CanCollide = true
Safespot.Transparency = .5

local Safespot1 = Instance.new("Part",workspace)
Safespot1.Name = "DefendPart"
Safespot1.Position = Vector3.new(10000.2, 13, 9752.45)
Safespot1.Size = Vector3.new(500, 117, 5)
Safespot1.Anchored = true
Safespot1.CanCollide = true
Safespot1.Transparency = .5
Safespot1.Parent = game.workspace.Safespot

local Safespot2 = Instance.new("Part",workspace)
Safespot2.Name = "DefendPart1"
Safespot2.Position = Vector3.new(10248.2, 13, 10002.4)
Safespot2.Size = Vector3.new(5, 117, 496)
Safespot2.Anchored = true
Safespot2.CanCollide = true
Safespot2.Transparency = .5
Safespot2.Parent = game.workspace.Safespot

local Safespot3 = Instance.new("Part",workspace)
Safespot3.Name = "DefendPart2"
Safespot3.Position = Vector3.new(9998.13, 13, 10247.2)
Safespot3.Size = Vector3.new(497, 117, 6)
Safespot3.Anchored = true
Safespot3.CanCollide = true
Safespot3.Transparency = .5
Safespot3.Parent = game.workspace.Safespot

local Safespot4 = Instance.new("Part",workspace)
Safespot4.Name = "DefendPart3"
Safespot4.Position = Vector3.new(9752.71, 13, 9999.28)
Safespot4.Size = Vector3.new(7, 117, 490)
Safespot4.Anchored = true
Safespot4.CanCollide = true
Safespot4.Transparency = .5
Safespot4.Parent = game.workspace.Safespot

local Safespot5 = Instance.new("Part",workspace)
Safespot5.Name = "DefendPart4"
Safespot5.Position = Vector3.new(10001.1, 76, 9999.66)
Safespot5.Size = Vector3.new(491, 10, 491)
Safespot5.Anchored = true
Safespot5.CanCollide = true
Safespot5.Transparency = .5
Safespot5.Parent = game.workspace.Safespot
end














local FortTab = Window:MakeTab({
	Name = "Fort",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FortTab:AddButton({
	Name = "Выполнить первое задание",
	Callback = function()
      	if game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" and not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 4031317971987872) then
			OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 97, 4)
			wait(0.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(0.3)
			game:GetService("ReplicatedStorage").Fortlol:FireServer()
			wait(3.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			wait(0.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 106, -6)
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
		else
			OrionLib:MakeNotification({Name = "Ошибка",Content = "У тебя не экипирован форт или у тебя уже есть бейдж [ Не выключать шифт лок ]",Image = "rbxassetid://7733658504",Time = 5})
		end
  	end    
})
FortTab:AddToggle({
    Name = "Фарм второго задания",
    Default = false,
    Callback = function(Value)
        if confort2 then
            confort2:Disconnect()
            confort2 = nil
        end
        
        local Can = true
        local oldpos
        local Farmfort2 = false -- Объявляем локально, чтобы избежать глобальных переменных
        
        if Value then
            oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        end
        
        if Value then
            if Farmfort2 then
                return
            else
                Farmfort2 = true
            end
            
            confort2 = game:GetService("RunService").RenderStepped:Connect(function()
                if Can then
                    Can = false
                    
                    -- Проверяем, есть ли у игрока перчатка Fort
                    if game.Players.LocalPlayer.leaderstats.Glove.Value ~= "Fort" then
                        fireclickdetector(workspace.Lobby.Fort.ClickDetector)
                    end
                    
                    -- Телепортируем на точку фарма
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Safespot"].CFrame * CFrame.new(0, 10, 0)
                    task.wait(0.3)
                    
                    -- Запускаем фарм
                    game:GetService("ReplicatedStorage"):WaitForChild("Fortlol"):FireServer()
                    task.wait(1.3)
                    
                    -- Отмена отбрасывания
                    game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0, ["Direction"] = Vector3.new(0, 0.01, 0)})
                    
                    -- Перемещаем все Part с Sound к игроку
                    for _, part in pairs(workspace:GetChildren()) do
                        if part.Name == "Part" and part:FindFirstChild("Sound") then
                            part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                    
                    task.wait(4)
                    Can = true -- Разрешаем следующий цикл
                end
            end)
        else
            -- Ждём, пока Can станет true перед телепортацией
            local waitingForCan = true
            local connection
            
            connection = game:GetService("RunService").Heartbeat:Connect(function()
                if Can or not waitingForCan then
                    waitingForCan = false
                    connection:Disconnect()
                    
                    -- Телепортируем обратно
                    if oldpos then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position = oldpos
                    end
                    
                    Farmfort2 = false
                end
            end)
        end
    end
})
FortTab:AddToggle({
	Name = "Фарм третьего задания",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
