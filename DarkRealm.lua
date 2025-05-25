game:GetService("GuiService"):ClearError()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Articles-Hub/ROBLOXScript/refs/heads/main/Library/Orion/Source.lua')))()

local Window = OrionLib:MakeWindow({IntroIcon = "rbxassetid://15315284749",Name = ("Zybas Hub - Dark Realm | ".. identifyexecutor()),IntroToggleIcon = "rbxassetid://7734091286", HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = "slap battles"})

if workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Name = "VoidPart"
VoidPart.Position = Vector3.new(-36, -3, 16)
VoidPart.Size = Vector3.new(2000, 1, 2000)
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false
end

local Tab = Window:MakeTab({
	Name = "Основное",
	Icon = "rbxassetid://7733674079",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Удалить тряску экрана",
	Callback = function()
      		game:GetService("Players").LocalPlayer.PlayerScripts.Screenshake:Destroy()
  	end    
})

local Combat = Tab:AddSection({Name = "Атака"})

Tab:AddToggle({
	Name = "Ударять босса",
	Default = false,
	Callback = function(Value)
_G.DameBossBob = Value
while _G.DameBossBob do
game.Workspace.bobBoss.DamageEvent:FireServer()
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Авто клик тайкун",
	Default = false,
	Callback = function(Value)
		_G.AutoTycoon = Value
while _G.AutoTycoon do
for _, v in pairs(workspace:GetChildren()) do
if string.find(v.Name, "ÅTycoon") and v:FindFirstChild("Click") then
fireclickdetector(v.Click.ClickDetector, 0)
fireclickdetector(v.Click.ClickDetector, 1)
end
end
task.wait()
end
	end   
})
Speed = 0.01
Tab:AddDropdown({
	Name = "Скорость ударов",
	Default = "0.01",
	Options = {"0.11","0.01","0.005", "0.001","0.0005", "0.0001"},
	Callback = function(Value)
		Speed = Value
	end    
})

Tab:AddDropdown({
	Name = "Ударять бобов другой перчаткой",
	Default = "Killstreak",
	Options = {"Killstreak", "Reaper", "God's Hand", "Tycoon"},
	Callback = function(Value)
GloveSlap = Value
	end    
})

Tab:AddToggle({
	Name = "Ударять бобов другой перчаткой",
	Default = false,
	Callback = function(Value)
		_G.SlapBobClone = Value
while _G.SlapBobClone do
if game.Workspace:FindFirstChild("BobClone") then
for _, v in pairs(workspace:GetChildren()) do
if v.Name == "BobClone" then
if GloveSlap == "Killstreak" then
game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Reaper" then
game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "God's Hand" then
game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
elseif GloveSlap == "Tycoon" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
end
end
task.wait(Speed)
end
	end    
})
local RunService = game:GetService("RunService")
local connection

Tab:AddToggle({
    Name = "Ударять бобов др. перчаткой(оптимизировано)",
    Default = false,
    Callback = function(Value)
        _G.SlapBobClone = Value
        if connection then connection:Disconnect() end
        
        if not Value then return end
        
        connection = RunService.Heartbeat:Connect(function()  -- Или RenderStepped
            if not _G.SlapBobClone then
                connection:Disconnect()
                return
            end
            
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "BobClone" and v:FindFirstChild("HumanoidRootPart") then
                    local gloveEvent = ({
                        ["Killstreak"] = "KSHit",
                        ["Reaper"] = "ReaperHit",
                        ["God's Hand"] = "Godshand",
                        ["Tycoon"] = "GeneralHit"
                    })[GloveSlap]
                    
                    if gloveEvent then
                        game:GetService("ReplicatedStorage")[gloveEvent]:FireServer(v.HumanoidRootPart)
                    end
                end
            end
        end)
    end
})
Tab:AddButton({
	Name = "Ударять бобов своей перчаткой",
	Callback = function()
if GloveSlap == "Killstreak" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").KSHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "Reaper" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").ReaperHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "God's Hand" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").Godshand:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
elseif GloveSlap == "Tycoon" then
for _, v in ipairs(workspace:GetDescendants()) do
if v.Name == "BobClone" then
game:GetService("ReplicatedStorage").GeneralHit:FireServer(v:FindFirstChild("HumanoidRootPart"))
end
end
end
  	end    
})

Tab:AddLabel("Скрипты")

Tab:AddButton({
	Name = "Флай",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Fly_V3.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Анти-лаг",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Anti-lag.lua"))()
  	end    
})
local Tab2 = Window:MakeTab({
	Name = "Анти",
	Icon = "rbxassetid://4370318685",
	PremiumOnly = false
})

Tab2:AddButton({
	Name = "Анти VFX",
	Callback = function()
if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener") then
game.Players.LocalPlayer.PlayerScripts:FindFirstChild("VFXListener").Parent = game.ReplicatedStorage
else
game.ReplicatedStorage.VFXListener.Parent = game.Players.LocalPlayer.PlayerScripts
end
  	end    
})

Tab2:AddToggle({
	Name = "Анти ударная волна",
	Default = false,
	Callback = function(Value)
		_G.AntiRing = Value
while _G.AntiRing do
if game.Workspace:FindFirstChild("Ring") then
game.Workspace:FindFirstChild("Ring"):Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Убрать большие метеоры",
	Default = false,
	Callback = function(Value)
		_G.AutoRemoveBigMeteors = Value
while _G.AutoRemoveBigMeteors do
if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("BigExplosion") then
game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.BigExplosion:Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Убрать маленькие метеоры",
	Default = false,
	Callback = function(Value)
		_G.AutoRemoveSmallMeteors = Value
while _G.AutoRemoveSmallMeteors do
if game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener:FindFirstChild("SmallMeteorVFX") then
game:GetService("Players").LocalPlayer.PlayerScripts.VFXListener.SmallMeteorVFX:Destroy()
end
task.wait()
end
	end    
})

Tab2:AddToggle({
	Name = "Анти войд",
	Default = false,
	Callback = function(Value)
game.Workspace["VoidPart"].CanCollide = Value
if Value == true then
game.Workspace["VoidPart"].Transparency = 0.5
else
game.Workspace["VoidPart"].Transparency = 1
end
	end    
})

Tab2:AddToggle({
	Name = "Анти рагдолл",
	Default = false,
	Callback = function(Value)
        _G.AntiRagdoll = Value
while _G.AntiRagdoll do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true then
repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
end
task.wait()
end
	end    
})
