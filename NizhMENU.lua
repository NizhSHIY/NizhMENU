local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Lighting = game:GetService("Lighting")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

local highlights = {}
local espEnabled = false
local lightEnabled = false
local oldAmbient, oldBrightness
local noclipEnabled = false
local flyEnabled = false
local flySpeed = 50
local wsDefault = 16
local jpDefault = 50
local fovDefault = Camera.FieldOfView
local infJumpEnabled = false
local spinEnabled = false
local spinConn
local hideGuiEnabled = false
local hiddenGuis = {}
local teleportConn

local Window = Rayfield:CreateWindow({
    Name = "NizhMENU",
    LoadingTitle = "NizhMENU",
    LoadingSubtitle = "by NizhSHIY",
    ConfigurationSaving = {Enabled = false},
    KeySystem = false
})

local VisualsTab = Window:CreateTab("Visuals", 14321059132)
local PlayerTab = Window:CreateTab("Player", 14321085517)
local OtherTab = Window:CreateTab("Other", 4483362458)

---------------- VISUALS ----------------

-- ESP (Highlight)
local function addHighlight(char)
    if highlights[char] then return end
    local player = Players:GetPlayerFromCharacter(char)
    if not player then return end
    local hrp = char:FindFirstChild("HumanoidRootPart") or char:WaitForChild("HumanoidRootPart", 5)
    if not hrp then return end

    local highlight = Instance.new("Highlight")
    highlight.Name = "PlayerHighlight"
    local teamColor = (player.Team and player.Team.TeamColor) and player.Team.TeamColor.Color or Color3.new(1,1,1)
    highlight.FillColor = teamColor
    highlight.OutlineColor = teamColor
    highlight.Parent = char
    highlights[char] = highlight
end

local function removeHighlight(char)
    if highlights[char] then
        highlights[char]:Destroy()
        highlights[char] = nil
    end
end

VisualsTab:CreateToggle({
    Name = "ESP (Highlight)",
    CurrentValue = false,
    Flag = "ESPToggle",
    Callback = function(state)
        espEnabled = state
        if espEnabled then
            for _, plr in pairs(Players:GetPlayers()) do
                if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                    addHighlight(plr.Character)
                end
            end
        else
            for char, _ in pairs(highlights) do
                removeHighlight(char)
            end
        end
    end,
})

Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(function(char)
        if espEnabled then
            char:WaitForChild("HumanoidRootPart", 10)
            addHighlight(char)
        end
    end)
end)
Players.PlayerRemoving:Connect(function(plr)
    if plr.Character then
        removeHighlight(plr.Character)
    end
end)

-- FullBright
VisualsTab:CreateToggle({
    Name = "FullBright",
    CurrentValue = false,
    Flag = "FullBrightToggle",
    Callback = function(state)
        lightEnabled = state
        if lightEnabled then
            oldAmbient = Lighting.Ambient
            oldBrightness = Lighting.Brightness
            Lighting.Ambient = Color3.new(1,1,1)
            Lighting.Brightness = 5
        else
            if oldAmbient then Lighting.Ambient = oldAmbient end
            if oldBrightness then Lighting.Brightness = oldBrightness end
        end
    end,
})

-- Hide GUI
VisualsTab:CreateToggle({
    Name = "Hide GUI (кроме меню)",
    CurrentValue = false,
    Flag = "HideGuiToggle",
    Callback = function(state)
        hideGuiEnabled = state
        local coregui = game:GetService("CoreGui")
        if hideGuiEnabled then
            hiddenGuis = {}
            for _, gui in ipairs(coregui:GetChildren()) do
                if gui:IsA("ScreenGui") and not gui.Name:find("Rayfield") and gui.Enabled then
                    gui.Enabled = false
                    table.insert(hiddenGuis, gui)
                end
            end
            for _, gui in ipairs(LocalPlayer.PlayerGui:GetChildren()) do
                if gui:IsA("ScreenGui") and not gui.Name:find("Rayfield") and gui.Enabled then
                    gui.Enabled = false
                    table.insert(hiddenGuis, gui)
                end
            end
        else
            for _, gui in ipairs(hiddenGuis) do
                if gui and gui.Parent then
                    gui.Enabled = true
                end
            end
            hiddenGuis = {}
        end
    end,
})

-- Time Changer
VisualsTab:CreateSlider({
    Name = "Time Changer",
    Range = {0, 24},
    Increment = 0.1,
    Suffix = "ч.",
    CurrentValue = Lighting.ClockTime,
    Flag = "TimeSlider",
    Callback = function(val)
        Lighting.ClockTime = val
    end,
})

-- FOV Changer
VisualsTab:CreateSlider({
    Name = "FOV",
    Range = {30, 120},
    Increment = 1,
    Suffix = "",
    CurrentValue = fovDefault,
    Flag = "FOVSlider",
    Callback = function(val)
        Camera.FieldOfView = val
    end,
})

VisualsTab:CreateButton({
    Name = "Сбросить FOV",
    Callback = function()
        Camera.FieldOfView = fovDefault
        Rayfield:Notify({Title = "FOV", Content = "FOV сброшен!", Duration = 2})
    end
})

---------------- PLAYER ----------------

-- WalkSpeed
PlayerTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {8, 200},
    Increment = 1,
    Suffix = "",
    CurrentValue = wsDefault,
    Flag = "WSSlider",
    Callback = function(val)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = val
        end
    end,
})

PlayerTab:CreateButton({
    Name = "Сбросить WalkSpeed",
    Callback = function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = wsDefault
        end
        Rayfield:Notify({Title = "WalkSpeed", Content = "WalkSpeed сброшен!", Duration = 2})
    end
})

-- JumpPower
PlayerTab:CreateSlider({
    Name = "JumpPower",
    Range = {20, 300},
    Increment = 1,
    Suffix = "",
    CurrentValue = jpDefault,
    Flag = "JPSlider",
    Callback = function(val)
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = val
        end
    end,
})

PlayerTab:CreateButton({
    Name = "Сбросить JumpPower",
    Callback = function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid").JumpPower = jpDefault
        end
        Rayfield:Notify({Title = "JumpPower", Content = "JumpPower сброшен!", Duration = 2})
    end
})

-- Infinity Jump
UIS.JumpRequest:Connect(function()
    if infJumpEnabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)

PlayerTab:CreateToggle({
    Name = "Infinity Jump",
    CurrentValue = false,
    Flag = "InfJumpToggle",
    Callback = function(state)
        infJumpEnabled = state
    end,
})

-- Noclip
local noclipConn
PlayerTab:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Flag = "NoclipToggle",
    Callback = function(state)
        noclipEnabled = state
        if noclipEnabled then
            noclipConn = RunService.Stepped:Connect(function()
                if LocalPlayer.Character then
                    for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") and v.CanCollide then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        else
            if noclipConn then noclipConn:Disconnect() end
        end
    end,
})

-- Fly
local flyConn
local function startFly()
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    local hrp = LocalPlayer.Character.HumanoidRootPart
    local bodyVel = Instance.new("BodyVelocity", hrp)
    bodyVel.MaxForce = Vector3.new(1e9, 1e9, 1e9)
    bodyVel.Velocity = Vector3.zero

    flyConn = RunService.RenderStepped:Connect(function()
        local move = Vector3.zero
        if UIS:IsKeyDown(Enum.KeyCode.W) then move = move + (Camera.CFrame.LookVector) end
        if UIS:IsKeyDown(Enum.KeyCode.S) then move = move - (Camera.CFrame.LookVector) end
        if UIS:IsKeyDown(Enum.KeyCode.A) then move = move - (Camera.CFrame.RightVector) end
        if UIS:IsKeyDown(Enum.KeyCode.D) then move = move + (Camera.CFrame.RightVector) end
        bodyVel.Velocity = move.Magnitude > 0 and move.Unit * flySpeed or Vector3.zero
    end)
    return bodyVel
end

local function stopFly()
    if flyConn then flyConn:Disconnect() end
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        for _, v in pairs(LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
            if v:IsA("BodyVelocity") then v:Destroy() end
        end
    end
end

PlayerTab:CreateToggle({
    Name = "Fly (WASD)",
    CurrentValue = false,
    Flag = "FlyToggle",
    Callback = function(state)
        flyEnabled = state
        if flyEnabled then
            startFly()
        else
            stopFly()
        end
    end,
})

PlayerTab:CreateSlider({
    Name = "Fly Speed",
    Range = {5, 200},
    Increment = 1,
    Suffix = "",
    CurrentValue = flySpeed,
    Flag = "FlySpeedSlider",
    Callback = function(val)
        flySpeed = val
    end,
})

local spinSpeed = 6

-- Spin Toggle
PlayerTab:CreateToggle({
    Name = "Spin (вращение персонажа)",
    CurrentValue = false,
    Flag = "SpinToggle",
    Callback = function(state)
        spinEnabled = state
        if spinEnabled then
            if spinConn then spinConn:Disconnect() end
            spinConn = RunService.RenderStepped:Connect(function()
                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
                end
            end)
        else
            if spinConn then spinConn:Disconnect() spinConn = nil end
        end
    end,
})

-- Spin Speed
PlayerTab:CreateSlider({
    Name = "Spin Speed",
    Range = {1, 10000},
    Increment = 1,
    Suffix = "°",
    CurrentValue = spinSpeed,
    Flag = "SpinSpeedSlider",
    Callback = function(val)
        spinSpeed = val
    end,
})


-- Ctrl+Click Teleport
PlayerTab:CreateToggle({
    Name = "Ctrl + Click Teleport",
    CurrentValue = false,
    Flag = "CtrlClickTpToggle",
    Callback = function(state)
        if teleportConn then teleportConn:Disconnect() teleportConn = nil end
        if state then
            teleportConn = Mouse.Button1Down:Connect(function()
                if UIS:IsKeyDown(Enum.KeyCode.LeftControl) or UIS:IsKeyDown(Enum.KeyCode.RightControl) then
                    local pos = Mouse.Hit and Mouse.Hit.p
                    if pos and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos + Vector3.new(0,3,0))
                    end
                end
            end)
        end
    end,
})

PlayerTab:CreateParagraph({
    Title = "Инфо",
    Content = function()
        local char = LocalPlayer.Character
        local hp, ws, jp = "-", "-", "-"
        if char and char:FindFirstChildOfClass("Humanoid") then
            local hum = char:FindFirstChildOfClass("Humanoid")
            hp = tostring(math.floor(hum.Health))
            ws = tostring(hum.WalkSpeed)
            jp = tostring(hum.JumpPower)
        end
        return "HP: " .. hp .. "\nWalkSpeed: " .. ws .. "\nJumpPower: " .. jp
    end
})

---------------- OTHER ----------------
OtherTab:CreateParagraph({
    Title = "Other"
})

local menuVisible = true
UIS.InputBegan:Connect(function(input, gpe)
    if gpe then return end
    if input.KeyCode == Enum.KeyCode.F4 then
        menuVisible = not menuVisible
        for _, gui in pairs(game:GetService("CoreGui"):GetChildren()) do
            if gui.Name:find("Rayfield") then
                gui.Enabled = menuVisible
            end
        end
    end
end)

Rayfield:Notify({
    Title = "NizhMENU",
    Content = "Меню открывается/скрывается через F4",
    Duration = 5
})

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local Aiming = false

function AimLock()
	local target
	local lastMagnitude = math.huge
	for _, v in pairs(game.Players:GetPlayers()) do
		if v ~= player and v.Character and v.Character.PrimaryPart then
			local charPos = v.Character.PrimaryPart.Position
			local mousePos = mouse.Hit.p
			if (charPos - mousePos).Magnitude < lastMagnitude then
				lastMagnitude = (charPos - mousePos).Magnitude
				target = v
			end
		end
	end

	if target and target.Character and target.Character.PrimaryPart then
		local charPos = target.Character.PrimaryPart.Position
		local cam = workspace.CurrentCamera
		local pos = cam.CFrame.Position

		workspace.CurrentCamera.CFrame = CFrame.new(pos, charPos)
	end
end

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed and input.KeyCode == Enum.KeyCode.B then
		Aiming = not Aiming 
	end
end)

-- Run AimLock while Aiming is true
game:GetService("RunService").RenderStepped:Connect(function()
	if Aiming then
		AimLock()
	end
end)
