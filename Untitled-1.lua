
local success, err = pcall(function()
    local function safeDestroy(obj)
        if obj and obj.Destroy then
        obj:Destroy()
    end
end
for _, BN in pairs(game:GetService("Workspace").FE.Settings:GetChildren()) do
        if BN.Name == "BName" then
        safeDestroy(BN)
    end
end
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        wait(0.5)
        for _, char in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if char.Name == " " then
        safeDestroy(char)
        end
    end
end)
    for _, obj in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if obj.Name == " " or (obj:IsA("LocalScript") and (string.match(obj.Name, "%d") or string.match(obj.Name, " "))) then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
        if obj.Name == "CheckPlayerW" or obj.Name == "Gradient" then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.StarterGui.Start:GetChildren()) do
        if obj.Name == "CheckPlayerW" or obj.Name == "Gradient" then
        safeDestroy(obj)
    end
end
    for _, obj in pairs(game.StarterPlayer.StarterCharacterScripts:GetDescendants()) do
        if obj.Name == " " then
        safeDestroy(obj)
        end
    end
end)

for i,b in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if b.Name == " " then
    b:Destroy()
end
end

for i,lc2 in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if lc2:IsA("LocalScript") and string.match(lc2.Name, "1") or string.match(lc2.Name, "2") or string.match(lc2.Name, "3") or string.match(lc2.Name, "4") or string.match(lc2.Name, "5") or string.match(lc2.Name, "6") or string.match(lc2.Name, "7") or string.match(lc2.Name, "8") or string.match(lc2.Name, "9") then
       lc2:Destroy()
    end
end

for i,lc in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
    if lc:IsA("LocalScript") and string.match(lc.Name, "1") or string.match(lc.Name, "2") or string.match(lc.Name, "3") or string.match(lc.Name, "4") or string.match(lc.Name, "5") or string.match(lc.Name, "6") or string.match(lc.Name, "7") or string.match(lc.Name, "8") or string.match(lc.Name, "9") then
       lc:Destroy()
    end
end

for i,c in pairs(game.Players.LocalPlayer.PlayerGui.Start:GetChildren()) do
    if c.Name == "CheckPlayerW" then
    c:Destroy()
end
end

for i,z in pairs(game.StarterGui.Start:GetChildren()) do
    if z.Name == "CheckPlayerW" then
    z:Destroy()
end
end

for _, v in pairs(game.StarterPlayer.StarterCharacterScripts:GetDescendants()) do
if v.Name == " " then
v:Destroy()
end
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
wait(0.5)
for i,char in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if char.Name == " " then
       char:Destroy()
    end
    end
end)


local player = game.Players.LocalPlayer
            

local function onPlayerDied()
    wait(1) 

    local player = game.Players.LocalPlayer
    local character = player.Character
    
    function GodMode()
        character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
            if character.Humanoid.Health < 100 then
                character.Humanoid.Health = 100
            end
        end)
    end
    
    
    GodMode()
    
end

-- Function to set up death detection for the player's character
local function setupDeathDetection(character)
    local humanoid = character:FindFirstChild("Humanoid") or character:WaitForChild("Humanoid")
    humanoid.Died:Connect(onPlayerDied)
end


player.CharacterAdded:Connect(setupDeathDetection)


if player.Character then
    setupDeathDetection(player.Character)
end




local player = game.Players.LocalPlayer
local character = player.Character

function GodMode()
    character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
        if character.Humanoid.Health < 100 then
            character.Humanoid.Health = 100
        end
    end)
end


GodMode()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "3sher hub reach script",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "script",
    LoadingSubtitle = "by 3sher",
    Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local Reach = Window:CreateTab("Reach", 4483362458) -- Title, Image
 
 local Section = Reach:CreateSection("Reach auto back")

 local Input = Reach:CreateInput({
    Name = "Reach",
    CurrentValue = "",
    PlaceholderText = "Reach",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Text)
        getgenv().Reach = tonumber(Text) or 0
    end,
 })
 
 game:GetService("RunService").Stepped:Connect(function()
     local player = game:GetService("Players").LocalPlayer
     local character = player.Character
     if character then
         local humanoid = character:FindFirstChildOfClass("Humanoid")
         if humanoid then
             local reachDistance = getgenv().Reach or 0
             if humanoid.RigType == Enum.HumanoidRigType.R15 then
                 local leftLeg = character:FindFirstChild("LeftLowerLeg")
                 local rightLeg = character:FindFirstChild("RightLowerLeg")
                 if leftLeg and (workspace.TPSSystem.TPS.Position - leftLeg.Position).Magnitude <= reachDistance then
                     firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 0)
                     firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 1)
                 end
                 if rightLeg and (workspace.TPSSystem.TPS.Position - rightLeg.Position).Magnitude <= reachDistance then
                     firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 0)
                     firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 1)
                 end
             elseif humanoid.RigType == Enum.HumanoidRigType.R6 then
                 local leftLeg = character:FindFirstChild("Left Leg")
                 local rightLeg = character:FindFirstChild("Right Leg")
                 if leftLeg and (workspace.TPSSystem.TPS.Position - leftLeg.Position).Magnitude <= reachDistance then
                     firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 0)
                     firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 1)
                 end
                 if rightLeg and (workspace.TPSSystem.TPS.Position - rightLeg.Position).Magnitude <= reachDistance then
                     firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 0)
                     firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 1)
                 end
             end
         end
     end
 end)
 

local Section = Reach:CreateSection("Reach with out auto back")

local Input = Reach:CreateInput({
   Name = "Reach",
   CurrentValue = "",
   PlaceholderText = "Reach",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
       local reach = tonumber(Text)
       if reach then
           local legToModify = game.Players.LocalPlayer.Character:FindFirstChild(Text)
           if legToModify then
               legToModify.Size = Vector3.new(reach, 2, reach)
           end
           game.Players.LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(reach, 2, reach)
       end
   end,
})

 local Ball = Window:CreateTab("Configs", 4483362458) -- Title, Image


 local  Section = Ball:CreateSection("Configs")


 local reachEnabled = false
 local reachConnection
 
 local Button = Ball:CreateButton({
     Name = "Infinite Dribble Legs",
     Callback = function()
         reachEnabled = not reachEnabled  -- تبديل الحالة (تشغيل/إيقاف)
 
         local reach = getgenv().Reach or 3.5  -- استخدام القيمة المدخلة من المستخدم
         local player = game.Players.LocalPlayer
         local character = player.Character
 
         if character then
             -- تعديل حجم الكرة TPS
             game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(2.7, 2.7, 2.7)
 
             -- تعديل حجم HumanoidRootPart
             local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
             if humanoidRootPart then
                 humanoidRootPart.Size = Vector3.new(reach, 2, reach)
             end
         end
 
         if reachEnabled then
             -- التأكد من عدم تشغيل أكثر من Stepped:Connect()
             if reachConnection then reachConnection:Disconnect() end
 
             reachConnection = game:GetService("RunService").Stepped:Connect(function()
                 if not character then return end
 
                 local humanoid = character:FindFirstChildOfClass("Humanoid")
                 if humanoid then
                     local reachDistance = getgenv().Reach or 3.5
                     if humanoid.RigType == Enum.HumanoidRigType.R15 then
                         local leftLeg = character:FindFirstChild("LeftLowerLeg")
                         local rightLeg = character:FindFirstChild("RightLowerLeg")
                         if leftLeg and (workspace.TPSSystem.TPS.Position - leftLeg.Position).Magnitude <= reachDistance then
                             firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 0)
                             firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 1)
                         end
                         if rightLeg and (workspace.TPSSystem.TPS.Position - rightLeg.Position).Magnitude <= reachDistance then
                             firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 0)
                             firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 1)
                         end
                     elseif humanoid.RigType == Enum.HumanoidRigType.R6 then
                         local leftLeg = character:FindFirstChild("Left Leg")
                         local rightLeg = character:FindFirstChild("Right Leg")
                         if leftLeg and (workspace.TPSSystem.TPS.Position - leftLeg.Position).Magnitude <= reachDistance then
                             firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 0)
                             firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 1)
                         end
                         if rightLeg and (workspace.TPSSystem.TPS.Position - rightLeg.Position).Magnitude <= reachDistance then
                             firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 0)
                             firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 1)
                         end
                     end
                 end
             end)
         else
             -- تعطيل الخاصية عند الضغط على الزر مرة أخرى
             if reachConnection then
                 reachConnection:Disconnect()
                 reachConnection = nil
             end
         end
     end,
 })
 
 local reachEnabled = false
 local reachConnection
 
 local Button2 = Ball:CreateButton({
     Name = "Infinite Dribble Legs",
     Callback = function()
         reachEnabled = not reachEnabled  -- تبديل الحالة (تشغيل/إيقاف)
 
         local reach = getgenv().Reach or 3.5  -- استخدام القيمة المدخلة من المستخدم
         local player = game.Players.LocalPlayer
         local character = player.Character
 
         if character then
             -- تعديل حجم الكرة TPS
             game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(2.7, 2.7, 2.7)
 
             -- تعديل حجم HumanoidRootPart
             local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
             if humanoidRootPart then
                 humanoidRootPart.Size = Vector3.new(reach, 2, reach)
             end
         end
 
         if reachEnabled then
             -- التأكد من عدم تشغيل أكثر من Stepped:Connect()
             if reachConnection then reachConnection:Disconnect() end
 
             reachConnection = game:GetService("RunService").Stepped:Connect(function()
                 if not character then return end
 
                 local humanoid = character:FindFirstChildOfClass("Humanoid")
                 if humanoid then
                     local reachDistance = getgenv().Reach or 3.5
                     if humanoid.RigType == Enum.HumanoidRigType.R15 then
                         local leftLeg = character:FindFirstChild("LeftLowerLeg")
                         local rightLeg = character:FindFirstChild("RightLowerLeg")
                         if leftLeg and (workspace.TPSSystem.TPS.Position - leftLeg.Position).Magnitude <= reachDistance then
                             firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 0)
                             firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 1)
                         end
                         if rightLeg and (workspace.TPSSystem.TPS.Position - rightLeg.Position).Magnitude <= reachDistance then
                             firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 0)
                             firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 1)
                         end
                     elseif humanoid.RigType == Enum.HumanoidRigType.R6 then
                         local leftLeg = character:FindFirstChild("Left Leg")
                         local rightLeg = character:FindFirstChild("Right Leg")
                         if leftLeg and (workspace.TPSSystem.TPS.Position - leftLeg.Position).Magnitude <= reachDistance then
                             firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 0)
                             firetouchinterest(workspace.TPSSystem.TPS, leftLeg, 1)
                         end
                         if rightLeg and (workspace.TPSSystem.TPS.Position - rightLeg.Position).Magnitude <= reachDistance then
                             firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 0)
                             firetouchinterest(workspace.TPSSystem.TPS, rightLeg, 1)
                         end
                     end
                 end
             end)
         else
             -- تعطيل الخاصية عند الضغط على الزر مرة أخرى
             if reachConnection then
                 reachConnection:Disconnect()
                 reachConnection = nil
             end
         end
     end,
 })

 local AirDribble = Window:CreateTab("AirDribble Helper", 4483362458) -- Title, Image

 local Section = AirDribble:CreateSection("AirDribble Helper")
 
 
 local Input = AirDribble:CreateInput({
    Name = "AirDribble Helper",
    CurrentValue = "",
    PlaceholderText = "AirDribble Helper",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(val)
        local part = Instance.new("Part")
        part.Name = "TPS"


        part.Size = Vector3.new(val, 0.1, val)
        part.Anchored = true
        part.BrickColor = BrickColor.new("Bright red")
        part.Transparency = 1


        part.Parent = game.Workspace


        local tpsSystem = game:GetService("Workspace"):FindFirstChild("TPSSystem")
        local tpsTarget = tpsSystem and tpsSystem:FindFirstChild("TPS")


        local function updatePartPosition()
            if tpsTarget then
                part.Position = tpsTarget.Position - Vector3.new(Value, 1, Value)
            end
        end


        updatePartPosition()


        local runService = game:GetService("RunService")
        runService.RenderStepped:Connect(updatePartPosition)
    end,
 })

 local Section = AirDribble:CreateSection("ZZZ/ZZZZ Helper")

 local Button = AirDribble:CreateButton({
    Name = "Enable ZZZ & ZZZZ Helper",
    Callback = function()
        game.Workspace.TPSSystem.TPS.Size = Vector3.new(2.89, 2.89, 2.89)

        getgenv().boxsettings = {
            box = {
                boxsize = Vector3.new(9, 0, 9),
                markerOffset = Vector3.new(0, -1, 0),
                boxtransparency = 1
            }
        }

        local v244 = game.Workspace.TPSSystem.TPS

        local function v47(v423, v424)
            local v425 = Instance.new("Part", v423)
            v425.Name = "TPS"
            v425.Size = boxsettings.box.boxsize
            v425.Anchored = true
            v425.Transparency = boxsettings.box.boxtransparency
            return v425
        end

        local v246 = v47(v244.Parent, v244)

        game:GetService("RunService").Stepped:Connect(function()
            v246.CFrame = CFrame.new(v244.Position + boxsettings.box.markerOffset)
        end)
    end,
})

 local Reacts = Window:CreateTab("Reacts", 4483362458) -- Title, Image

 local Section = Reacts:CreateSection("Reacts")

 local Button = Reacts:CreateButton({
    Name = "Dribble React",  -- اسم الزر
    Callback = function()
        -- استرجاع اللاعب الحالي
        local player = game:GetService("Players").LocalPlayer
        
        -- الحصول على الـ raw metatable
        local rawMeta = getrawmetatable(game)
        local oldNamecall = rawMeta.namecall
        
        -- جعل الـ metatable قابل للتعديل
        setreadonly(rawMeta, false)
        
        -- تعديل الدالة namecall
        rawMeta.namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = tostring(getnamecallmethod())  -- الحصول على اسم الدالة المستدعاة
            
            -- التحقق إذا كانت الدالة هي FireServer وتستدعي "Dribble"
            if method == "FireServer" and tostring(self) == "Dribble" then
                -- تعديل القيم المرسلة (التعديل على ثاني باراميتر)
                args[2] = player.Character.Humanoid.LLCL
                -- استدعاء الدالة الأصلية بعد التعديل
                return oldNamecall(self, unpack(args))
            end
            
            -- إذا لم يكن FireServer مع Dribble، استدعاء الدالة الأصلية بدون تعديل
            return oldNamecall(self, ...)
        end)

        -- إعادة الجدول إلى وضع القراءة فقط
        setreadonly(rawMeta, true)
    end
})

local Button = Reacts:CreateButton({
    Name = "Goalkeeper React",  -- اسم الزر
    Callback = function()
        -- تعيين متغير الـ Vector
        _G.Vector = Vector3.new(math.huge, math.huge, math.huge)

        -- التأكد من وجود hookmetamethod، getnamecallmethod و checkcaller
        local hookMetaMethod = hookmetamethod or function(v382, v383, v384)
            return v384
        end
        local getNameCallMethod = getnamecallmethod or function()
            return ""
        end
        local checkCaller = checkcaller or function()
            return false
        end

        -- التحقق إذا كانت hookmetamethod متوفرة
        if not hookMetaMethod then
            error("hookmetamethod não está disponível. reporte para Skinny")
            return
        end
        
        -- إعداد hookmetamethod
        local hookHandler
        hookHandler = hookMetaMethod(
            game,
            "__namecall",
            function(v385, ...)
                local args = {...}
                local method = getNameCallMethod()
                
                -- إذا كانت الدالة هي FireServer واسم الكائن "Kick"
                if not checkCaller() and method == "FireServer" and v385.Name == "Kick" then
                    -- تغيير الباراميتر السادس
                    args[6] = _G.Vector
                    -- استدعاء الدالة الأصلية مع التعديلات
                    return hookHandler(v385, unpack(args))
                end
                
                -- استدعاء الدالة الأصلية بدون تعديل
                return hookHandler(v385, ...)
            end
        )
    end
})

local Button = Reacts:CreateButton({
    Name = "Tunaz React[Left Leg]",  -- اسم الزر
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local leftLeg = player.Character:FindFirstChild("Left Leg")
        
        -- التحقق إذا كان الـ Left Leg موجود
        if not leftLeg then
            warn("Left Leg part not found!")
            return
        end
        
        -- عند الضغط على زر الكيبورد
        mouse.KeyDown:connect(function(key)
            local vector = Vector3.new(math.huge, math.huge, math.huge)
            local params = {
                [1] = nil,
                [2] = vector,
                [3] = CFrame.new(Vector3.new(0, 0, 0))
            }

            -- دالة لتنفيذ التأثيرات عند الضغط على زر معين
            local function handleReaction()
                for _, desc in pairs(game.Workspace:GetDescendants()) do
                    if (desc:IsA("BasePart") or desc:IsA("Part")) then
                        local adjustedSize = Vector3.new(
                            math.floor(desc.Size.X - 2.5),
                            math.floor(desc.Size.Y - 2.5),
                            math.floor(desc.Size.Z - 2.5)
                        )
                        if adjustedSize == Vector3.new(0, 0, 0) then
                            -- تنفيذ بعض العمليات على الجزء
                        end
                    end
                end
            end
            
            -- التفاعل مع أحداث ChildAdded
            game:GetService("RunService").ChildAdded:Connect(function()
                while task.wait(0.001) do
                    for _, remoteEvent in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                        if string.find(remoteEvent.Name, "React") and remoteEvent:IsA("RemoteEvent") then
                            remoteEvent:FireServer(unpack(params))
                        end
                    end
                end

                -- ربط الكيبورد بالحدث المطلوب
                mouse.KeyDown:connect(function(key)
                    key = key:lower()
                    if key == "k" then
                        handleReaction()
                    end
                end)

                -- تفعيل التأثيرات بعد تحديد الزر المناسب
                local function showTextEffect()
                    local textLabel = Instance.new("TextLabel")
                    wait(8999999488)
                    local tweenService = game:GetService("TweenService")
                    local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                    local tweenGoal = {Position = UDim2.new(0.819, 0, 0.815, 0)}
                    local tween = tweenService:Create(textLabel.Parent, tweenInfo, tweenGoal)
                    tween:Play()

                    -- التأثير عند الماوس
                    textLabel.Parent.MouseEnter:Connect(function()
                        local enterTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                        local enterTweenAction = tweenService:Create(textLabel.Parent, enterTween, {TextTransparency = 0})
                        enterTweenAction:Play()
                    end)

                    -- التأثير عند مغادرة الماوس
                    textLabel.Parent.MouseLeave:Connect(function()
                        local leaveTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                        local leaveTweenAction = tweenService:Create(textLabel.Parent, leaveTween, {TextTransparency = 0.5})
                        leaveTweenAction:Play()
                    end)
                end
                
                -- تنفيذ التأثيرات
                showTextEffect()
                handleReaction()
            end)
        end)
    end
})

local Button = Reacts:CreateButton({
    Name = "Tunaz React[Right Leg]",  -- اسم الزر
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local leftLeg = player.Character:FindFirstChild("Right Leg")
        
        -- التحقق إذا كان الـ Left Leg موجود
        if not leftLeg then
            warn("Left Leg part not found!")
            return
        end
        
        -- عند الضغط على زر الكيبورد
        mouse.KeyDown:connect(function(key)
            local vector = Vector3.new(math.huge, math.huge, math.huge)
            local params = {
                [1] = nil,
                [2] = vector,
                [3] = CFrame.new(Vector3.new(0, 0, 0))
            }

            -- دالة لتنفيذ التأثيرات عند الضغط على زر معين
            local function handleReaction()
                for _, desc in pairs(game.Workspace:GetDescendants()) do
                    if (desc:IsA("BasePart") or desc:IsA("Part")) then
                        local adjustedSize = Vector3.new(
                            math.floor(desc.Size.X - 2.5),
                            math.floor(desc.Size.Y - 2.5),
                            math.floor(desc.Size.Z - 2.5)
                        )
                        if adjustedSize == Vector3.new(0, 0, 0) then
                            -- تنفيذ بعض العمليات على الجزء
                        end
                    end
                end
            end
            
            -- التفاعل مع أحداث ChildAdded
            game:GetService("RunService").ChildAdded:Connect(function()
                while task.wait(0.001) do
                    for _, remoteEvent in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                        if string.find(remoteEvent.Name, "React") and remoteEvent:IsA("RemoteEvent") then
                            remoteEvent:FireServer(unpack(params))
                        end
                    end
                end

                -- ربط الكيبورد بالحدث المطلوب
                mouse.KeyDown:connect(function(key)
                    key = key:lower()
                    if key == "k" then
                        handleReaction()
                    end
                end)

                -- تفعيل التأثيرات بعد تحديد الزر المناسب
                local function showTextEffect()
                    local textLabel = Instance.new("TextLabel")
                    wait(8999999488)
                    local tweenService = game:GetService("TweenService")
                    local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                    local tweenGoal = {Position = UDim2.new(0.819, 0, 0.815, 0)}
                    local tween = tweenService:Create(textLabel.Parent, tweenInfo, tweenGoal)
                    tween:Play()

                    -- التأثير عند الماوس
                    textLabel.Parent.MouseEnter:Connect(function()
                        local enterTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                        local enterTweenAction = tweenService:Create(textLabel.Parent, enterTween, {TextTransparency = 0})
                        enterTweenAction:Play()
                    end)

                    -- التأثير عند مغادرة الماوس
                    textLabel.Parent.MouseLeave:Connect(function()
                        local leaveTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                        local leaveTweenAction = tweenService:Create(textLabel.Parent, leaveTween, {TextTransparency = 0.5})
                        leaveTweenAction:Play()
                    end)
                end
                
                -- تنفيذ التأثيرات
                showTextEffect()
                handleReaction()
            end)
        end)
    end
})

local Button = Reacts:CreateButton({
    Name = "Foxtede React",  -- اسم الزر
    Callback = function()
        _G.Vector = Vector3.new(math.huge, math.huge, math.huge)
        
        -- الحصول على الـ Metatable
        local metaTable = getrawmetatable(game)
        local originalNamecall = metaTable.namecall

        -- فتح إمكانية التعديل على الـ Metatable
        setreadonly(metaTable, false)
        
        -- تعديل الـ namecall
        metaTable.namecall = newcclosure(function(instance, ...)
            local args = {...}
            local method = tostring(getnamecallmethod())
            
            -- إذا كان الاتصال هو "FireServer" وكان الكائن هو "Kick"
            if method == "FireServer" and tostring(instance) == "Kick" then
                -- تعديل المعامل السادس في الاتصال
                args[6] = _G.Vector
                return originalNamecall(instance, unpack(args))
            end
            
            -- العودة للـ namecall الأصلي إذا لم يكن الشرط متحقق
            return originalNamecall(instance, ...)
        end)

        -- استعادة الـ Metatable كما كان
        setreadonly(metaTable, true)
    end
})

local Button = Reacts:CreateButton({
    Name = "Nokturna React[Left Leg]",  -- اسم الزر
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local rightLeg = player.Character:WaitForChild("Left Leg")

        -- تفعيل الضغط على المفاتيح من الماوس
        mouse.KeyDown:connect(function(key)
            local v408 = nil
            local v409 = game:GetService("StarterGui")
            local v410 = game:GetService("StarterGui")
            local v411 = {
                [1] = v408,
                [2] = Vector3.new(math.huge, math.huge, math.huge),
                [3] = CFrame.new(Vector3.new(0, 0, 0))
            }

            -- دالة تقوم بتحديد الأشياء في الـ Workspace
            local function v412()
                for _, descendant in pairs(game.Workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") or descendant:IsA("Part") then
                        local size = Vector3.new(
                            math.floor(descendant.Size.X - 2.5),
                            math.floor(descendant.Size.Y - 2.5),
                            math.floor(descendant.Size.Z - 2.5)
                        )
                        if size == Vector3.new(0, 0, 0) then
                            descendant = descendant
                        end
                    end
                end
            end

            -- الاتصال باستخدام RemoteEvent
            game:GetService("RunService").ChildAdded:Connect(function()
                while task.wait(0.001) do
                    for _, desc in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                        if string.find(desc.Name, "React") and desc:IsA("RemoteEvent") then
                            desc:FireServer(unpack(v411))
                        end
                    end
                end
            end)

            -- استماع لحدث الضغط على المفتاح "k"
            mouse.KeyDown:connect(function(keyPressed)
                keyPressed = keyPressed:lower()
                if keyPressed == "k" then
                    v412()
                end
            end)

            -- دالة تعمل على التفاعل مع التويين (Tweens) عند الدخول والخروج على النصوص
            local function v536()
                local label = Instance.New("LocalScript", TextLabel)
                wait(8999999488)
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                local tweenProps = { Position = UDim2.new(0.819, 0, 0.815, 0) }
                local tween = tweenService:Create(label.Parent, tweenInfo, tweenProps)
                tween:Play()

                -- التفاعل مع الماوس عند الدخول والخروج على النص
                label.Parent.MouseEnter:Connect(function()
                    local hoverTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                    local hover = tweenService:Create(label.Parent, hoverTween, { TextTransparency = 0 })
                    hover:Play()
                end)

                label.Parent.MouseLeave:Connect(function()
                    local leaveTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                    local leave = tweenService:Create(label.Parent, leaveTween, { TextTransparency = 0.5 })
                    leave:Play()
                end)
            end

            -- دالة ثانية للتفاعل مع النصوص بشكل آخر
            local function v537()
                local label_2 = Instance.new("LocalScript", TextLabel_2)
                wait(8999999488)
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(1.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                local tweenProps = { Position = UDim2.new(0.81, 0, 0.899, 0) }
                local tween = tweenService:Create(label_2.Parent, tweenInfo, tweenProps)
                tween:Play()

                label_2.Parent.MouseEnter:Connect(function()
                    local hoverTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                    local hover = tweenService:Create(label_2.Parent, hoverTween, { TextTransparency = 0 })
                    hover:Play()
                end)

                label_2.Parent.MouseLeave:Connect(function()
                    local leaveTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                    local leave = tweenService:Create(label_2.Parent, leaveTween, { TextTransparency = 0.5 })
                    leave:Play()
                end)
            end

            -- تنفيذ الوظائف بشكل متوازي
            coroutine.wrap(v537)
            v412()
        end)
    end
})

local Button = Reacts:CreateButton({
    Name = "Nokturna React[Right Leg]",  -- اسم الزر
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local rightLeg = player.Character:WaitForChild("Right Leg")

        -- تفعيل الضغط على المفاتيح من الماوس
        mouse.KeyDown:connect(function(key)
            local v408 = nil
            local v409 = game:GetService("StarterGui")
            local v410 = game:GetService("StarterGui")
            local v411 = {
                [1] = v408,
                [2] = Vector3.new(math.huge, math.huge, math.huge),
                [3] = CFrame.new(Vector3.new(0, 0, 0))
            }

            -- دالة تقوم بتحديد الأشياء في الـ Workspace
            local function v412()
                for _, descendant in pairs(game.Workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") or descendant:IsA("Part") then
                        local size = Vector3.new(
                            math.floor(descendant.Size.X - 2.5),
                            math.floor(descendant.Size.Y - 2.5),
                            math.floor(descendant.Size.Z - 2.5)
                        )
                        if size == Vector3.new(0, 0, 0) then
                            descendant = descendant
                        end
                    end
                end
            end

            -- الاتصال باستخدام RemoteEvent
            game:GetService("RunService").ChildAdded:Connect(function()
                while task.wait(0.001) do
                    for _, desc in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                        if string.find(desc.Name, "React") and desc:IsA("RemoteEvent") then
                            desc:FireServer(unpack(v411))
                        end
                    end
                end
            end)

            -- استماع لحدث الضغط على المفتاح "k"
            mouse.KeyDown:connect(function(keyPressed)
                keyPressed = keyPressed:lower()
                if keyPressed == "k" then
                    v412()
                end
            end)

            -- دالة تعمل على التفاعل مع التويين (Tweens) عند الدخول والخروج على النصوص
            local function v536()
                local label = Instance.New("LocalScript", TextLabel)
                wait(8999999488)
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
                local tweenProps = { Position = UDim2.new(0.819, 0, 0.815, 0) }
                local tween = tweenService:Create(label.Parent, tweenInfo, tweenProps)
                tween:Play()

                -- التفاعل مع الماوس عند الدخول والخروج على النص
                label.Parent.MouseEnter:Connect(function()
                    local hoverTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                    local hover = tweenService:Create(label.Parent, hoverTween, { TextTransparency = 0 })
                    hover:Play()
                end)

                label.Parent.MouseLeave:Connect(function()
                    local leaveTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                    local leave = tweenService:Create(label.Parent, leaveTween, { TextTransparency = 0.5 })
                    leave:Play()
                end)
            end

            -- دالة ثانية للتفاعل مع النصوص بشكل آخر
            local function v537()
                local label_2 = Instance.new("LocalScript", TextLabel_2)
                wait(8999999488)
                local tweenService = game:GetService("TweenService")
                local tweenInfo = TweenInfo.new(1.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
                local tweenProps = { Position = UDim2.new(0.81, 0, 0.899, 0) }
                local tween = tweenService:Create(label_2.Parent, tweenInfo, tweenProps)
                tween:Play()

                label_2.Parent.MouseEnter:Connect(function()
                    local hoverTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                    local hover = tweenService:Create(label_2.Parent, hoverTween, { TextTransparency = 0 })
                    hover:Play()
                end)

                label_2.Parent.MouseLeave:Connect(function()
                    local leaveTween = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
                    local leave = tweenService:Create(label_2.Parent, leaveTween, { TextTransparency = 0.5 })
                    leave:Play()
                end)
            end

            -- تنفيذ الوظائف بشكل متوازي
            coroutine.wrap(v537)
            v412()
        end)
    end
})

local Button = Reacts:CreateButton({
    Name = "Kick React",  -- اسم الزر
    Callback = function()
        _G.Vector = Vector3.new(math.huge, math.huge, math.huge)
        
        -- الحصول على الميتا الخاص بالـ game
        local metaTable = getrawmetatable(game)
        local originalNamecall = metaTable.namecall
        
        -- تعديل الميتا لتكون قابلة للتغيير
        setreadonly(metaTable, false)
        
        -- إنشاء وظيفة جديدة لتعديل السلوك الأصلي
        metaTable.namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = tostring(getnamecallmethod())
            
            -- إذا كانت العملية هي FireServer وكان الهدف هو "Kick"
            if (method == "FireServer" and tostring(self) == "Kick") then
                args[6] = _G.Vector  -- تعديل القيمة في المعامل السادس
                return originalNamecall(self, unpack(args))  -- إعادة استدعاء الوظيفة الأصلية مع المعاملات المعدلة
            end

            -- في حال لم يكن الهدف "Kick"، يتم تنفيذ السلوك الطبيعي
            return originalNamecall(self, ...)
        end)
        
        -- إرجاع الميتا إلى حالته الأصلية (قراءة فقط)
        setreadonly(metaTable, true)
    end
})

local Button = Reacts:CreateButton({
    Name = "Shooting React",  -- اسم الزر
    Callback = function()
        _G.Vector = Vector3.new(math.huge, math.huge, math.huge)
        
        -- الحصول على الميتا الخاص بالـ game
        local metaTable = getrawmetatable(game)
        local originalNamecall = metaTable.namecall
        
        -- تعديل الميتا لتكون قابلة للتغيير
        setreadonly(metaTable, false)
        
        -- إنشاء وظيفة جديدة لتعديل السلوك الأصلي
        metaTable.namecall = newcclosure(function(self, ...)
            local args = {...}
            local method = tostring(getnamecallmethod())
            
            -- إذا كانت العملية هي FireServer وكان الهدف هو "Shoot"
            if (method == "FireServer" and tostring(self) == "Shoot") then
                args[6] = _G.Vector  -- تعديل القيمة في المعامل السادس
                return originalNamecall(self, unpack(args))  -- إعادة استدعاء الوظيفة الأصلية مع المعاملات المعدلة
            end

            -- في حال لم يكن الهدف "Shoot"، يتم تنفيذ السلوك الطبيعي
            return originalNamecall(self, ...)
        end)
        
        -- إرجاع الميتا إلى حالته الأصلية (قراءة فقط)
        setreadonly(metaTable, true)
    end
})


local GameChanger = Window:CreateTab("Level and GameChanger", 4483362458) -- Title, Image

local Button = GameChanger:CreateButton({
    Name = "Old Dirt and Level",  -- اسم الزر الذي سيظهر في واجهة المستخدم
    Callback = function()  -- الكود الذي سيعمل عند الضغط على الزر
        spawn(
            function()
                while true do
                    -- البحث عن "Dirt" داخل SoccerField
                    local v579 = workspace.SoccerFieldParts.SoccerField:FindFirstChild("Dirt")
                    if v579 then
                        v579:Destroy()  -- إذا تم العثور على "Dirt"، يتم تدميره
                    end
                    -- تغيير مادة "SoccerField" إلى "Granite"
                    workspace.SoccerFieldParts.SoccerField.Material = Enum.Material.Granite
                    -- تغيير لون "SoccerField" إلى اللون المحدد
                    workspace.SoccerFieldParts.SoccerField.Color = Color3.new(41 / 255, 99 / 255, 27 / 255)
                    wait(60)  -- الانتظار 60 ثانية قبل التكرار
                end
            end
        )
    end,
})

local Button = GameChanger:CreateButton({
    Name = "Old Dirt and Font",  -- اسم الزر الذي سيظهر في واجهة المستخدم
    Callback = function()  -- الكود الذي سيعمل عند الضغط على الزر
        local v282 = game.Players.LocalPlayer
        local v283 = workspace.SoccerFieldParts.SoccerField
        spawn(
            function()
                while true do
                    -- البحث عن "Dirt" داخل SoccerField
                    local v583 = v283:FindFirstChild("Dirt")
                    if v583 then
                        v583:Destroy()  -- إذا تم العثور على "Dirt"، يتم تدميره
                    end
                    -- تغيير مادة "SoccerField" إلى "Granite"
                    v283.Material = Enum.Material.Granite
                    -- تغيير لون "SoccerField" إلى اللون المحدد
                    v283.Color = Color3.new(41 / 255, 99 / 255, 27 / 255)

                    -- تعديل خط مستوى اللاعب في واجهة المستخدم
                    local v587 = v282:WaitForChild("PlayerGui")
                    local v588 = v587:WaitForChild("Start")
                    local v589 = v588:WaitForChild("Scores")
                    local v590 = v589:WaitForChild("Level")
                    v590.Font = Enum.Font.Cartoon

                    -- الانتظار 60 ثانية قبل التكرار
                    wait(60)
                end
            end
        )
    end,
})

local Button = GameChanger:CreateButton({
    Name = "Booster 1",  -- اسم الزر الذي سيظهر في واجهة المستخدم
    Callback = function()  -- الكود الذي سيعمل عند الضغط على الزر
        local v297 = game:GetService("UserInputService")
        local v298 = game:GetService("RunService")
        local v299 = game:GetService("Lighting")

        -- وظيفة لتعطيل التأثيرات لتحسين الأداء
        local function v300()
            v298:Set3dRenderingEnabled(false)
            setfpscap(10)
            
            -- تغيير مواد الأجزاء لتحسين الأداء
            for v593, v594 in ipairs(workspace:GetDescendants()) do
                if (v594:IsA("Part") or v594:IsA("SpawnLocation") or v594:IsA("WedgePart") or v594:IsA("Terrain") or v594:IsA("MeshPart")) then
                    v594.Material = Enum.Material.SmoothPlastic
                end
            end

            -- تعطيل تأثيرات الجزيئات والمرئيات
            local v441 = {Textures = true, VisualEffects = true, Particles = true, Sky = true}
            local v442 = {}
            for v595, v596 in ipairs(game:GetDescendants()) do
                if (v441.Particles and (v596:IsA("ParticleEmitter") or v596:IsA("Smoke") or v596:IsA("Explosion") or v596:IsA("Sparkles") or v596:IsA("Fire"))) then
                    v596.Enabled = false
                    table.insert(v442, v596)
                end
                if (v441.VisualEffects and (v596:IsA("BloomEffect") or v596:IsA("BlurEffect") or v596:IsA("DepthOfFieldEffect") or v596:IsA("SunRaysEffect"))) then
                    v596.Enabled = false
                    table.insert(v442, v596)
                end
                if (v441.Textures and (v596:IsA("Decal") or v596:IsA("Texture"))) then
                    v596.Texture = ""
                    table.insert(v442, v596)
                end
                if (v441.Sky and v596:IsA("Sky")) then
                    v596.Parent = nil
                    table.insert(v442, v596)
                end
            end
            
            -- إعلام المستخدم بعدد التأثيرات التي تم تعطيلها
            game:GetService("TestService"):Message(
                "Effects Disabler Script : Successfully disabled " .. #v442 .. " assets / effects."
            )

            -- إذا لم يكن هناك تأثير FullBright، يتم تفعيل الإضاءة بالكامل
            if not v299:FindFirstChild("FullBright") then
                v299.FogColor = Color3.fromRGB(255, 255, 255)
                v299.FogEnd = math.huge
                v299.FogStart = math.huge
                v299.Ambient = Color3.fromRGB(255, 255, 255)
                v299.Brightness = 5
                v299.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
                v299.ColorShift_Top = Color3.fromRGB(255, 255, 255)
                v299.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
                v299.Outlines = true
            end
        end

        -- وظيفة لإعادة تفعيل التأثيرات عندما يعود التركيز إلى النافذة
        local function v301()
            v298:Set3dRenderingEnabled(true)
            setfpscap(360)
        end

        -- ربط الوظائف بالأحداث عند فقدان التركيز أو استعادته
        v297.WindowFocusReleased:Connect(v300)
        v297.WindowFocused:Connect(v301)
    end,
})

local Button = GameChanger:CreateButton({
    Name = "Booster 2",  -- اسم الزر الذي سيظهر في واجهة المستخدم
    Callback = function()  -- الكود الذي سيعمل عند الضغط على الزر
        local function v302()
            local v443 = game.Lighting
            local v444 = workspace.Terrain

            -- ضبط إعدادات المياه على صفر
            v444.WaterWaveSize = 0
            v444.WaterWaveSpeed = 0
            v444.WaterReflectance = 0
            v444.WaterTransparency = 0

            -- تعطيل الظلال العالمية
            v443.GlobalShadows = false

            -- إعدادات الضباب
            v443.FogEnd = 8999999488
            v443.Brightness = 0

            -- ضبط جودة الإعدادات إلى أقل مستوى
            settings().Rendering.QualityLevel = "Level01"

            -- تغيير خصائص الأجزاء المختلفة لتحسين الأداء
            for v597, v598 in ipairs(game:GetDescendants()) do
                if (v598:IsA("BasePart") or v598:IsA("MeshPart")) then
                    v598.Material = Enum.Material.SmoothPlastic
                    v598.Reflectance = 0
                    v598.CastShadow = false
                elseif v598:IsA("Decal") then
                    v598.Transparency = 1
                elseif (v598:IsA("ParticleEmitter") or v598:IsA("Trail")) then
                    v598.Lifetime = NumberRange.new(0)
                elseif v598:IsA("Explosion") then
                    v598.BlastPressure = 1
                    v598.BlastRadius = 1
                elseif (v598:IsA("Fire") or v598:IsA("SpotLight") or v598:IsA("Smoke")) then
                    v598.Enabled = false
                end
            end

            -- تعطيل التأثيرات ما بعد المعالجة
            for v599, v600 in ipairs(v443:GetChildren()) do
                if (v600:IsA("PostEffect") or v600:IsA("DepthOfFieldEffect")) then
                    v600.Enabled = false
                end
            end
        end
        
        -- استدعاء الوظيفة لتحسين الأداء
        v302()
    end,
})

local Input = GameChanger:CreateInput({
    Name = "Level Changer",
    CurrentValue = "",
    PlaceholderText = "اكتب المستوى اللي تبيه",
    RemoveTextAfterFocusLost = false,
    Flag = "LevelChanger",
    Callback = function(Text)
        local Targets = tonumber(Text)
        if not Targets then
            warn("⚠️ الرجاء إدخال رقم صحيح!")
            return
        end

        task.wait(0.1)

        local mt = getrawmetatable(game)
        setreadonly(mt, false)

        local old_index = mt.__index
        mt.__index = function(a, b)
            if tostring(a) == "PPLevel" or tostring(a) == "Level" then
                if tostring(b) == "Value" then
                    return Targets
                end
            end
            return old_index(a, b)
        end
    end,
})

 
 local Ball = Window:CreateTab("BallModiffy", 4483362458) -- Title, Image

 local Section = Ball:CreateSection("Ball Size")

 local Input = Ball:CreateInput({
    Name = "Ball Size",
    CurrentValue = "",
    PlaceholderText = "Input Placeholder",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Value)
    game:GetService("Workspace").TPSSystem.TPS.Size = Vector3.new(Value, Value, Value)
    end,
 })
-- إنشاء قسم لتغيير الـ Ball Texture
local Section = Ball:CreateSection("Ball Texture")

-- إنشاء Dropdown لاختيار نوع كرة
local Dropdown = Ball:CreateDropdown({
    Name = "Ball Texture",
    Options = {"Default", "Adidas Brazuca", "Adidas Jabulani", "Adidas Rose World Cup Ball", "Adidas Speed Cell Ball"},
    CurrentOption = {"Default"},
    MultipleOptions = false,
    Flag = "BallTexture",
    Callback = function(Value)
        local textureKey = type(Value) == "table" and Value[1] or Value
        local ball = game.Workspace:FindFirstChild("TPSSystem") and game.Workspace.TPSSystem:FindFirstChild("TPS")
        if not ball then
            warn("Ball not found!")
            return
        end

        local textures = {
            Default = {
                "rbxassetid://1731401359",
                "rbxassetid://1731401359",
                "rbxassetid://1731401811",
                "rbxassetid://1731401811",
                "rbxassetid://1731401359",
                "rbxassetid://1731401359"
            },
            ["Adidas Brazuca"] = {
                "http://www.roblox.com/asset/?id=137668136",
                "http://www.roblox.com/asset/?id=137668129",
                "http://www.roblox.com/asset/?id=137668136",
                "http://www.roblox.com/asset/?id=137668136",
                "http://www.roblox.com/asset/?id=137668136",
                "http://www.roblox.com/asset/?id=137668136"
            },
            ["Adidas Jabulani"] = {
                "http://www.roblox.com/asset/?id=76614961",
                "http://www.roblox.com/asset/?id=76614961",
                "http://www.roblox.com/asset/?id=76614961",
                "http://www.roblox.com/asset/?id=76614961",
                "http://www.roblox.com/asset/?id=76614961",
                "http://www.roblox.com/asset/?id=76614961"
            },
            ["Adidas Rose World Cup Ball"] = {
                "http://www.roblox.com/asset/?id=17277667014",
                "http://www.roblox.com/asset/?id=17277667014",
                "http://www.roblox.com/asset/?id=17277667014",
                "http://www.roblox.com/asset/?id=17277667014",
                "http://www.roblox.com/asset/?id=17277667014",
                "http://www.roblox.com/asset/?id=17277667014"
            },
            ["Adidas Speed Cell Ball"] = {
                "http://www.roblox.com/asset/?id=17277687200",
                "http://www.roblox.com/asset/?id=17277687200",
                "http://www.roblox.com/asset/?id=17277687200",
                "http://www.roblox.com/asset/?id=17277687200",
                "http://www.roblox.com/asset/?id=17277687200",
                "http://www.roblox.com/asset/?id=17277687200"
            }
        }

        local decals = {"Decal1", "Decal2", "Decal3", "Decal4", "Decal5", "Decal6"}
        for i, decal in ipairs(decals) do
            if ball:FindFirstChild(decal) then
                ball[decal].Texture = textures[textureKey][i]
            else
                warn(decal .. " not found in ball!")
            end
        end
    end
})

-- إنشاء قسم لتغيير الصوت الخاص بالكرة
local Section = Ball:CreateSection("Ball Sound")

-- دالة لتغيير صوت الكرة
local function SetBallSound(ballSound, soundId, playbackSpeed, volume)
    ballSound.SoundId = soundId
    ballSound.PlaybackSpeed = playbackSpeed
    ballSound.Volume = volume
end

-- إنشاء Dropdown لاختيار صوت الكرة
local SoundDropdown = Ball:CreateDropdown({
    Name = "Ball Sound",
    Options = {"Default", "OOF!", "Neverlose", "Rust", "Bruh", "TF2", "UwU"},
    CurrentOption = {"Default"},
    MultipleOptions = false,
    Flag = "BallSound",
    Callback = function(Options)
        local selected = Options[1]
        local ballSound = game.Workspace.TPSSystem.TPS.Sound
        local sounds = {
            Default = {"rbxassetid://2516069845", 0.7, 0.7},
            ["OOF!"] = {"rbxassetid://5143383166", 1, 2},
            ["Neverlose"] = {"rbxassetid://6607204501", 0.7, 0.7},
            ["Rust"] = {"rbxassetid://1255040462", 0.7, 0.7},
            ["Bruh"] = {"rbxassetid://4275842574", 0.7, 0.7},
            ["TF2"] = {"rbxassetid://2868331684", 0.7, 0.7},
            ["UwU"] = {"rbxassetid://8679659744", 0.7, 0.7}
        }
        SetBallSound(ballSound, unpack(sounds[selected]))
    end
})

-- دالة لاسترجاع لون الـ Trail الحالي
local function GetTrailColor()
    return game.Workspace.TPSSystem.TPS.Trail.Color.Keypoints[1].Value
end

-- إنشاء Colorpicker لتغيير لون الـ Trail
local TrailColorPicker = Ball:CreateColorpicker({
    Name = "Trail Color",
    CurrentColor = GetTrailColor(),
    Flag = "TrailColor",
    Callback = function(Color)
        game.Workspace.TPSSystem.TPS.Trail.Color = ColorSequence.new(Color)
    end
})

-- إنشاء Colorpicker لتغيير لون الكرة
local BallColorPicker = Tab:CreateColorpicker({
    Name = "Ball Color",
    CurrentColor = Color3.fromRGB(255, 255, 255),
    Flag = "BallColor",
    Callback = function(Color)
        game.Workspace.TPSSystem.TPS.Color = Color
    end
})
