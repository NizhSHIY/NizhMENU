local player = game.Players.LocalPlayer
local players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NizhMENU"
screenGui.Parent = playerGui

local openGui = Instance.new("ScreenGui")
openGui.Name = "OpenGui"
openGui.Parent = playerGui
openGui.Enabled = false

local openFrame = Instance.new("Frame")
openFrame.Name = "OpenFrame"
openFrame.BackgroundTransparency = 1
openFrame.Position = UDim2.new(0.095, 0, 0.250, 0)
openFrame.Size = UDim2.new(0, 30, 0, 30)
openFrame.Parent = openGui

local openButton = Instance.new("TextButton")
openButton.Name = "OpenButton"
openButton.Position = UDim2.new(0, 0, 0, 0)
openButton.Size = UDim2.new(1, 0, 1, 0)
openButton.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
openButton.Font = Enum.Font.Merriweather
openButton.FontFace.Style = Enum.FontStyle.Italic
openButton.Text = "N"
openButton.TextColor3 = Color3.fromRGB(221, 255, 255)
openButton.TextScaled = true
openButton.Parent = openFrame

local openCorner = Instance.new("UICorner")
openCorner.CornerRadius = UDim.new(1, 0)
openCorner.Parent = openButton

local menuFrame = Instance.new("Frame")
menuFrame.Name = "MenuFrame"
menuFrame.Size = UDim2.new(0, 420, 0, 320)
menuFrame.Position = UDim2.new(0.49, -210, 0.491, -160)
menuFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
menuFrame.Visible = false
menuFrame.Parent = screenGui

local menuCorner = Instance.new("UICorner")
menuCorner.CornerRadius = UDim.new(0, 16)
menuCorner.Parent = menuFrame

local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
titleBar.Parent = menuFrame

local titleBarCorner = Instance.new("UICorner")
titleBarCorner.CornerRadius = UDim.new(0, 16)
titleBarCorner.Parent = titleBar

local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Size = UDim2.new(0.7, 0, 1, 0)
titleText.Position = UDim2.new(0, 20, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "NizhMENU"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.TextSize = 22
titleText.Font = Enum.Font.GothamBold
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.Parent = titleBar

local tabButtonsFrame = Instance.new("Frame")
tabButtonsFrame.Name = "TabButtons"
tabButtonsFrame.Size = UDim2.new(0, 110, 1, -40)
tabButtonsFrame.Position = UDim2.new(0, 0, 0, 40)
tabButtonsFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 50)
tabButtonsFrame.Parent = menuFrame

local tabButtonsCorner = Instance.new("UICorner")
tabButtonsCorner.CornerRadius = UDim.new(0, 12)
tabButtonsCorner.Parent = tabButtonsFrame

local visualsTabButton = Instance.new("TextButton")
visualsTabButton.Name = "VisualsTab"
visualsTabButton.Size = UDim2.new(1, -16, 0, 40)
visualsTabButton.Position = UDim2.new(0, 8, 0, 8)
visualsTabButton.BackgroundColor3 = Color3.fromRGB(60, 60, 90)
visualsTabButton.Text = "Visuals"
visualsTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
visualsTabButton.Font = Enum.Font.Gotham
visualsTabButton.TextSize = 18
visualsTabButton.Parent = tabButtonsFrame

local visualsTabCorner = Instance.new("UICorner")
visualsTabCorner.CornerRadius = UDim.new(0, 10)
visualsTabCorner.Parent = visualsTabButton

local playerTabButton = Instance.new("TextButton")
playerTabButton.Name = "PlayerTab"
playerTabButton.Size = UDim2.new(1, -16, 0, 40)
playerTabButton.Position = UDim2.new(0, 8, 0, 56)
playerTabButton.BackgroundColor3 = Color3.fromRGB(60, 60, 90)
playerTabButton.Text = "Player"
playerTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
playerTabButton.Font = Enum.Font.Gotham
playerTabButton.TextSize = 18
playerTabButton.Parent = tabButtonsFrame

local playerTabCorner = Instance.new("UICorner")
playerTabCorner.CornerRadius = UDim.new(0, 10)
playerTabCorner.Parent = playerTabButton

local combatTabButton = Instance.new("TextButton")
combatTabButton.Name = "CombatTab"
combatTabButton.Size = UDim2.new(1, -16, 0, 40)
combatTabButton.Position = UDim2.new(0, 8, 0, 104)
combatTabButton.BackgroundColor3 = Color3.fromRGB(60, 60, 90)
combatTabButton.Text = "Combat"
combatTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
combatTabButton.Font = Enum.Font.Gotham
combatTabButton.TextSize = 18
combatTabButton.Parent = tabButtonsFrame

local combatTabCorner = Instance.new("UICorner")
combatTabCorner.CornerRadius = UDim.new(0, 10)
combatTabCorner.Parent = combatTabButton

local contentFrame = Instance.new("Frame")
contentFrame.Name = "ContentFrame"
contentFrame.Size = UDim2.new(1, -120, 1, -48)
contentFrame.Position = UDim2.new(0, 120, 0, 44)
contentFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 47)
contentFrame.Parent = menuFrame

local contentCorner = Instance.new("UICorner")
contentCorner.CornerRadius = UDim.new(0, 12)
contentCorner.Parent = contentFrame

local playerContent = Instance.new("Frame")
playerContent.Name = "PlayerContent"
playerContent.Size = UDim2.new(1, 0, 1, 0)
playerContent.BackgroundTransparency = 1
playerContent.Visible = true
playerContent.Parent = contentFrame

local visualsContent = Instance.new("Frame")
visualsContent.Name = "VisualsContent"
visualsContent.Size = UDim2.new(1, 0, 1, 0)
visualsContent.BackgroundTransparency = 1
visualsContent.Visible = false
visualsContent.Parent = contentFrame

local combatContent = Instance.new("Frame")
combatContent.Name = "CombatContent"
combatContent.Size = UDim2.new(1, 0, 1, 0)
combatContent.BackgroundTransparency = 1
combatContent.Visible = false
combatContent.Parent = contentFrame

visualsTabButton.MouseButton1Click:Connect(function()
	visualsContent.Visible = true
	playerContent.Visible = false
	combatContent.Visible = false
end)
playerTabButton.MouseButton1Click:Connect(function()
	visualsContent.Visible = false
	playerContent.Visible = true
	combatContent.Visible = false
end)
combatTabButton.MouseButton1Click:Connect(function()
	visualsContent.Visible = false
	playerContent.Visible = false
	combatContent.Visible = true
end)

local dragging, dragInput, dragStart, startPos
titleBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = menuFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
titleBar.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		menuFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

local functionFrameHeight = 54
local functionFrameSpacing = 10

-- ================= VISUALS TAB =================

-- ESP (Highlight) Toggle
local espFrame = Instance.new("Frame")
espFrame.Name = "ESPFrame"
espFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
espFrame.Position = UDim2.new(0.025, 0, 0.05, 0)
espFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
espFrame.Parent = visualsContent

local espCorner = Instance.new("UICorner")
espCorner.CornerRadius = UDim.new(0, 8)
espCorner.Parent = espFrame

local espLabel = Instance.new("TextLabel")
espLabel.Name = "ESPLabel"
espLabel.Size = UDim2.new(0.6, 0, 1, 0)
espLabel.Position = UDim2.new(0, 10, 0, 0)
espLabel.BackgroundTransparency = 1
espLabel.Text = "ESP (Highlight)"
espLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
espLabel.TextSize = 18
espLabel.Font = Enum.Font.GothamBold
espLabel.TextXAlignment = Enum.TextXAlignment.Left
espLabel.Parent = espFrame

local espToggleButton = Instance.new("TextButton")
espToggleButton.Name = "ESPToggleButton"
espToggleButton.Size = UDim2.new(0.3, 0, 0.6, 0)
espToggleButton.Position = UDim2.new(0.65, 0, 0.2, 0)
espToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
espToggleButton.Text = "Enable"
espToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
espToggleButton.TextSize = 15
espToggleButton.Font = Enum.Font.Gotham
espToggleButton.Parent = espFrame

local espToggleCorner = Instance.new("UICorner")
espToggleCorner.CornerRadius = UDim.new(0, 6)
espToggleCorner.Parent = espToggleButton

local highlights = {}
local function addHighlight(char)
	if highlights[char] then return end
	local highlight = Instance.new("Highlight")
	highlight.FillColor = Color3.fromRGB(220, 220, 220)
	highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
	highlight.Parent = char
	highlights[char] = highlight
end
local function removeHighlight(char)
	if highlights[char] then
		highlights[char]:Destroy()
		highlights[char] = nil
	end
end

local espEnabled = false
espToggleButton.MouseButton1Click:Connect(function()
	espEnabled = not espEnabled
	espToggleButton.Text = espEnabled and "Disable" or "Enable"
	espToggleButton.BackgroundColor3 = espEnabled and Color3.fromRGB(180, 80, 80) or Color3.fromRGB(120, 120, 180)
	if espEnabled then
		for _, plr in pairs(players:GetPlayers()) do
			if plr ~= player and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
				addHighlight(plr.Character)
			end
		end
	else
		for char, _ in pairs(highlights) do
			removeHighlight(char)
		end
	end
end)
players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function(char)
		if espEnabled then
			addHighlight(char)
		end
	end)
end)
players.PlayerRemoving:Connect(function(plr)
	if plr.Character then
		removeHighlight(plr.Character)
	end
end)

-- Light Frame
local lightFrame = Instance.new("Frame")
lightFrame.Name = "LightFrame"
lightFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
lightFrame.Position = UDim2.new(0.025, 0, 0, espFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
lightFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
lightFrame.Parent = visualsContent

local lightCorner = Instance.new("UICorner")
lightCorner.CornerRadius = UDim.new(0, 8)
lightCorner.Parent = lightFrame

local lightLabel = Instance.new("TextLabel")
lightLabel.Name = "LightLabel"
lightLabel.Size = UDim2.new(0.6, 0, 1, 0)
lightLabel.Position = UDim2.new(0, 10, 0, 0)
lightLabel.BackgroundTransparency = 1
lightLabel.Text = "FullBright"
lightLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
lightLabel.TextSize = 18
lightLabel.Font = Enum.Font.GothamBold
lightLabel.TextXAlignment = Enum.TextXAlignment.Left
lightLabel.Parent = lightFrame

local lightToggleButton = Instance.new("TextButton")
lightToggleButton.Name = "LightToggleButton"
lightToggleButton.Size = UDim2.new(0.3, 0, 0.6, 0)
lightToggleButton.Position = UDim2.new(0.65, 0, 0.2, 0)
lightToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
lightToggleButton.Text = "Enable"
lightToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
lightToggleButton.TextSize = 15
lightToggleButton.Font = Enum.Font.Gotham
lightToggleButton.Parent = lightFrame

local lightToggleCorner = Instance.new("UICorner")
lightToggleCorner.CornerRadius = UDim.new(0, 6)
lightToggleCorner.Parent = lightToggleButton

local oldAmbient, oldBrightness
local lightEnabled = false
lightToggleButton.MouseButton1Click:Connect(function()
	lightEnabled = not lightEnabled
	lightToggleButton.Text = lightEnabled and "Disable" or "Enable"
	lightToggleButton.BackgroundColor3 = lightEnabled and Color3.fromRGB(180, 80, 80) or Color3.fromRGB(120, 120, 180)
	if lightEnabled then
		local lighting = game:GetService("Lighting")
		oldAmbient = lighting.Ambient
		oldBrightness = lighting.Brightness
		lighting.Ambient = Color3.new(1,1,1)
		lighting.Brightness = 5
	else
		local lighting = game:GetService("Lighting")
		if oldAmbient then lighting.Ambient = oldAmbient end
		if oldBrightness then lighting.Brightness = oldBrightness end
	end
end)

-- ================= PLAYER TAB =================

-- WalkSpeed Frame
local walkSpeedFrame = Instance.new("Frame")
walkSpeedFrame.Name = "WalkSpeedFrame"
walkSpeedFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
walkSpeedFrame.Position = UDim2.new(0.025, 0, 0.05, 0)
walkSpeedFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
walkSpeedFrame.Parent = playerContent

local walkSpeedCorner = Instance.new("UICorner")
walkSpeedCorner.CornerRadius = UDim.new(0, 8)
walkSpeedCorner.Parent = walkSpeedFrame

local walkSpeedLabel = Instance.new("TextLabel")
walkSpeedLabel.Name = "WalkSpeedLabel"
walkSpeedLabel.Size = UDim2.new(1, 0, 0.4, 0)
walkSpeedLabel.Position = UDim2.new(0, 0, 0, 0)
walkSpeedLabel.BackgroundTransparency = 1
walkSpeedLabel.Text = "Walk Speed: 16"
walkSpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
walkSpeedLabel.TextSize = 15
walkSpeedLabel.Font = Enum.Font.Gotham
walkSpeedLabel.Parent = walkSpeedFrame

local walkSpeedSlider = Instance.new("TextBox")
walkSpeedSlider.Name = "WalkSpeedSlider"
walkSpeedSlider.Size = UDim2.new(0.6, 0, 0.4, 0)
walkSpeedSlider.Position = UDim2.new(0.05, 0, 0.5, 0)
walkSpeedSlider.BackgroundColor3 = Color3.fromRGB(70, 70, 100)
walkSpeedSlider.Text = "16"
walkSpeedSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
walkSpeedSlider.TextSize = 13
walkSpeedSlider.Font = Enum.Font.Gotham
walkSpeedSlider.Parent = walkSpeedFrame

local walkSpeedSliderCorner = Instance.new("UICorner")
walkSpeedSliderCorner.CornerRadius = UDim.new(0, 6)
walkSpeedSliderCorner.Parent = walkSpeedSlider

local walkSpeedButton = Instance.new("TextButton")
walkSpeedButton.Name = "WalkSpeedButton"
walkSpeedButton.Size = UDim2.new(0.25, 0, 0.4, 0)
walkSpeedButton.Position = UDim2.new(0.7, 0, 0.5, 0)
walkSpeedButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
walkSpeedButton.Text = "Apply"
walkSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
walkSpeedButton.TextSize = 13
walkSpeedButton.Font = Enum.Font.Gotham
walkSpeedButton.Parent = walkSpeedFrame

local walkSpeedButtonCorner = Instance.new("UICorner")
walkSpeedButtonCorner.CornerRadius = UDim.new(0, 6)
walkSpeedButtonCorner.Parent = walkSpeedButton

walkSpeedButton.MouseButton1Click:Connect(function()
	local speed = tonumber(walkSpeedSlider.Text)
	if speed and speed > 0 then
		local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.WalkSpeed = speed
			walkSpeedLabel.Text = "Walk Speed: "..speed
		end
	end
end)

-- JumpPower Frame
local jumpPowerFrame = Instance.new("Frame")
jumpPowerFrame.Name = "JumpPowerFrame"
jumpPowerFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
jumpPowerFrame.Position = UDim2.new(0.025, 0, 0, walkSpeedFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
jumpPowerFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
jumpPowerFrame.Parent = playerContent

local jumpPowerCorner = Instance.new("UICorner")
jumpPowerCorner.CornerRadius = UDim.new(0, 8)
jumpPowerCorner.Parent = jumpPowerFrame

local jumpPowerLabel = Instance.new("TextLabel")
jumpPowerLabel.Name = "JumpPowerLabel"
jumpPowerLabel.Size = UDim2.new(1, 0, 0.4, 0)
jumpPowerLabel.Position = UDim2.new(0, 0, 0, 0)
jumpPowerLabel.BackgroundTransparency = 1
jumpPowerLabel.Text = "Jump Power: 50"
jumpPowerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpPowerLabel.TextSize = 15
jumpPowerLabel.Font = Enum.Font.Gotham
jumpPowerLabel.Parent = jumpPowerFrame

local jumpPowerSlider = Instance.new("TextBox")
jumpPowerSlider.Name = "JumpPowerSlider"
jumpPowerSlider.Size = UDim2.new(0.6, 0, 0.4, 0)
jumpPowerSlider.Position = UDim2.new(0.05, 0, 0.5, 0)
jumpPowerSlider.BackgroundColor3 = Color3.fromRGB(70, 70, 100)
jumpPowerSlider.Text = "50"
jumpPowerSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpPowerSlider.TextSize = 13
jumpPowerSlider.Font = Enum.Font.Gotham
jumpPowerSlider.Parent = jumpPowerFrame

local jumpPowerSliderCorner = Instance.new("UICorner")
jumpPowerSliderCorner.CornerRadius = UDim.new(0, 6)
jumpPowerSliderCorner.Parent = jumpPowerSlider

local jumpPowerButton = Instance.new("TextButton")
jumpPowerButton.Name = "JumpPowerButton"
jumpPowerButton.Size = UDim2.new(0.25, 0, 0.4, 0)
jumpPowerButton.Position = UDim2.new(0.7, 0, 0.5, 0)
jumpPowerButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
jumpPowerButton.Text = "Apply"
jumpPowerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
jumpPowerButton.TextSize = 13
jumpPowerButton.Font = Enum.Font.Gotham
jumpPowerButton.Parent = jumpPowerFrame

local jumpPowerButtonCorner = Instance.new("UICorner")
jumpPowerButtonCorner.CornerRadius = UDim.new(0, 6)
jumpPowerButtonCorner.Parent = jumpPowerButton

jumpPowerButton.MouseButton1Click:Connect(function()
	local power = tonumber(jumpPowerSlider.Text)
	if power and power > 0 then
		local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.JumpPower = power
			jumpPowerLabel.Text = "Jump Power: "..power
		end
	end
end)

-- Spin Frame
local spinFrame = Instance.new("Frame")
spinFrame.Name = "SpinFrame"
spinFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
spinFrame.Position = UDim2.new(0.025, 0, 0, jumpPowerFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
spinFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
spinFrame.Parent = playerContent

local spinCorner = Instance.new("UICorner")
spinCorner.CornerRadius = UDim.new(0, 8)
spinCorner.Parent = spinFrame

local spinCenter = Instance.new("Frame")
spinCenter.Name = "SpinCenter"
spinCenter.AnchorPoint = Vector2.new(0.5, 0.5)
spinCenter.Size = UDim2.new(0.85, 0, 0.8, 0)
spinCenter.Position = UDim2.new(0.5, 0, 0.5, 0)
spinCenter.BackgroundTransparency = 1
spinCenter.Parent = spinFrame

local spinLabel = Instance.new("TextLabel")
spinLabel.Name = "SpinLabel"
spinLabel.Size = UDim2.new(0.33, 0, 1, 0)
spinLabel.Position = UDim2.new(0, 0, 0, 0)
spinLabel.BackgroundTransparency = 1
spinLabel.Text = "Spin Speed:"
spinLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
spinLabel.TextSize = 15
spinLabel.Font = Enum.Font.Gotham
spinLabel.TextXAlignment = Enum.TextXAlignment.Center
spinLabel.Parent = spinCenter

local spinSpeedBox = Instance.new("TextBox")
spinSpeedBox.Name = "SpinSpeedBox"
spinSpeedBox.Size = UDim2.new(0.33, 0, 1, 0)
spinSpeedBox.Position = UDim2.new(0.33, 0, 0, 0)
spinSpeedBox.BackgroundColor3 = Color3.fromRGB(70, 70, 100)
spinSpeedBox.Text = "0"
spinSpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
spinSpeedBox.TextSize = 13
spinSpeedBox.Font = Enum.Font.Gotham
spinSpeedBox.Parent = spinCenter

local spinSpeedBoxCorner = Instance.new("UICorner")
spinSpeedBoxCorner.CornerRadius = UDim.new(0, 6)
spinSpeedBoxCorner.Parent = spinSpeedBox

local spinToggle = Instance.new("TextButton")
spinToggle.Name = "SpinToggle"
spinToggle.Size = UDim2.new(0.33, 0, 1, 0)
spinToggle.Position = UDim2.new(0.66, 0, 0, 0)
spinToggle.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
spinToggle.Text = "Enable"
spinToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
spinToggle.TextSize = 13
spinToggle.Font = Enum.Font.Gotham
spinToggle.Parent = spinCenter

local spinToggleCorner = Instance.new("UICorner")
spinToggleCorner.CornerRadius = UDim.new(0, 6)
spinToggleCorner.Parent = spinToggle

local spinEnabled = false
local spinSpeed = 0
local spinConnection

spinToggle.MouseButton1Click:Connect(function()
	spinEnabled = not spinEnabled
	if spinEnabled then
		spinToggle.Text = "Disable"
		spinSpeed = tonumber(spinSpeedBox.Text) or 0
		if spinSpeed == 0 then spinSpeed = 10 end
		if spinConnection then spinConnection:Disconnect() end
		spinConnection = RunService.RenderStepped:Connect(function(dt)
			if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
			end
		end)
	else
		spinToggle.Text = "Enable"
		if spinConnection then spinConnection:Disconnect() spinConnection = nil end
	end
end)
spinSpeedBox.FocusLost:Connect(function(enter)
	if spinEnabled then
		spinSpeed = tonumber(spinSpeedBox.Text) or 0
		if spinSpeed == 0 then spinSpeed = 10 end
	end
end)

-- Infinite Jump Frame
local infiniteJumpFrame = Instance.new("Frame")
infiniteJumpFrame.Name = "InfiniteJumpFrame"
infiniteJumpFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
infiniteJumpFrame.Position = UDim2.new(0.025, 0, 0, spinFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
infiniteJumpFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
infiniteJumpFrame.Parent = playerContent

local infiniteJumpCorner = Instance.new("UICorner")
infiniteJumpCorner.CornerRadius = UDim.new(0, 8)
infiniteJumpCorner.Parent = infiniteJumpFrame

local infiniteJumpLabel = Instance.new("TextLabel")
infiniteJumpLabel.Name = "InfiniteJumpLabel"
infiniteJumpLabel.Size = UDim2.new(0.6, 0, 1, 0)
infiniteJumpLabel.Position = UDim2.new(0, 10, 0, 0)
infiniteJumpLabel.BackgroundTransparency = 1
infiniteJumpLabel.Text = "Infinite Jump"
infiniteJumpLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
infiniteJumpLabel.TextSize = 18
infiniteJumpLabel.Font = Enum.Font.GothamBold
infiniteJumpLabel.TextXAlignment = Enum.TextXAlignment.Left
infiniteJumpLabel.Parent = infiniteJumpFrame

local infiniteJumpToggleButton = Instance.new("TextButton")
infiniteJumpToggleButton.Name = "InfiniteJumpToggleButton"
infiniteJumpToggleButton.Size = UDim2.new(0.3, 0, 0.6, 0)
infiniteJumpToggleButton.Position = UDim2.new(0.65, 0, 0.2, 0)
infiniteJumpToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
infiniteJumpToggleButton.Text = "Enable"
infiniteJumpToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
infiniteJumpToggleButton.TextSize = 15
infiniteJumpToggleButton.Font = Enum.Font.Gotham
infiniteJumpToggleButton.Parent = infiniteJumpFrame

local infiniteJumpToggleCorner = Instance.new("UICorner")
infiniteJumpToggleCorner.CornerRadius = UDim.new(0, 6)
infiniteJumpToggleCorner.Parent = infiniteJumpToggleButton

local infiniteJumpEnabled = false

infiniteJumpToggleButton.MouseButton1Click:Connect(function()
	infiniteJumpEnabled = not infiniteJumpEnabled
	infiniteJumpToggleButton.Text = infiniteJumpEnabled and "Disable" or "Enable"
	infiniteJumpToggleButton.BackgroundColor3 = infiniteJumpEnabled and Color3.fromRGB(180, 80, 80) or Color3.fromRGB(120, 120, 180)
end)

UserInputService.JumpRequest:Connect(function()
	if infiniteJumpEnabled then
		local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end
end)

-- ================= COMBAT TAB =================

-- AimLock Frame
local aimLockFrame = Instance.new("Frame")
aimLockFrame.Name = "AimLockFrame"
aimLockFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
aimLockFrame.Position = UDim2.new(0.025, 0, 0.05, 0)
aimLockFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
aimLockFrame.Parent = combatContent

local aimLockCorner = Instance.new("UICorner")
aimLockCorner.CornerRadius = UDim.new(0, 8)
aimLockCorner.Parent = aimLockFrame

local aimLockLabel = Instance.new("TextLabel")
aimLockLabel.Name = "AimLockLabel"
aimLockLabel.Size = UDim2.new(0.6, 0, 1, 0)
aimLockLabel.Position = UDim2.new(0, 10, 0, 0)
aimLockLabel.BackgroundTransparency = 1
aimLockLabel.Text = "AimLock"
aimLockLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
aimLockLabel.TextSize = 18
aimLockLabel.Font = Enum.Font.GothamBold
aimLockLabel.TextXAlignment = Enum.TextXAlignment.Left
aimLockLabel.Parent = aimLockFrame

local aimLockToggleButton = Instance.new("TextLabel")
aimLockToggleButton.Name = "AimLockToggleButton"
aimLockToggleButton.Size = UDim2.new(0.3, 0, 0.6, 0)
aimLockToggleButton.Position = UDim2.new(0.65, 0, 0.2, 0)
aimLockToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
aimLockToggleButton.Text = "Press B"
aimLockToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
aimLockToggleButton.TextSize = 15
aimLockToggleButton.Font = Enum.Font.Gotham
aimLockToggleButton.Parent = aimLockFrame

local aimLockToggleCorner = Instance.new("UICorner")
aimLockToggleCorner.CornerRadius = UDim.new(0, 6)
aimLockToggleCorner.Parent = aimLockToggleButton

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed and input.KeyCode == Enum.KeyCode.RightControl then
		menuFrame.Visible = not menuFrame.Visible
	end
end)

openButton.TouchTap:Connect(function()
	menuFrame.Visible = not menuFrame.Visible
end)

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

game:GetService("RunService").RenderStepped:Connect(function()
	if Aiming then
		AimLock()
	end
end)

if UserInputService.TouchEnabled then
	openGui.Enabled = true
end
