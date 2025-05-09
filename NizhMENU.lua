local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NizhMENU"
screenGui.Parent = playerGui

local menuFrame = Instance.new("Frame")
menuFrame.Name = "MenuFrame"
menuFrame.Size = UDim2.new(0, 420, 0, 320)
menuFrame.Position = UDim2.new(0.5, -210, 0.5, -160)
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

local themeToggleButton = Instance.new("TextButton")
themeToggleButton.Name = "ThemeToggleButton"
themeToggleButton.Size = UDim2.new(0, 110, 0, 32)
themeToggleButton.Position = UDim2.new(1, -120, 0, 4)
themeToggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 120)
themeToggleButton.Text = "Light Theme"
themeToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
themeToggleButton.Font = Enum.Font.Gotham
themeToggleButton.TextSize = 15
themeToggleButton.Parent = titleBar

local themeToggleCorner = Instance.new("UICorner")
themeToggleCorner.CornerRadius = UDim.new(0, 10)
themeToggleCorner.Parent = themeToggleButton

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

visualsTabButton.MouseButton1Click:Connect(function()
	visualsContent.Visible = true
	playerContent.Visible = false
end)
playerTabButton.MouseButton1Click:Connect(function()
	visualsContent.Visible = false
	playerContent.Visible = true
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
game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		menuFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

local functionFrameHeight = 54
local functionFrameSpacing = 10

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
		spinConnection = game:GetService("RunService").RenderStepped:Connect(function(dt)
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
infiniteJumpToggleCorner.CornerRadius = UDim.new(0, 8)
infiniteJumpToggleCorner.Parent = infiniteJumpToggleButton

local infiniteJumpEnabled = false
local UserInputService = game:GetService("UserInputService")
infiniteJumpToggleButton.MouseButton1Click:Connect(function()
	infiniteJumpEnabled = not infiniteJumpEnabled
	infiniteJumpToggleButton.Text = infiniteJumpEnabled and "Disable" or "Enable"
end)
UserInputService.JumpRequest:Connect(function()
	if infiniteJumpEnabled then
		local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end
end)

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
espLabel.Text = "ESP"
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
espToggleCorner.CornerRadius = UDim.new(0, 8)
espToggleCorner.Parent = espToggleButton

local espEnabled = false
local espHighlights = {}

local function addESPToPlayer(targetPlayer)
	if targetPlayer ~= player and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") then
		if not espHighlights[targetPlayer] then
			local highlight = Instance.new('Highlight')
			highlight.Name = "ESPHighlight"
			highlight.Parent = targetPlayer.Character
			highlight.FillColor = Color3.new(1, 1, 1)
			highlight.FillTransparency = 0.5
			highlight.OutlineColor = Color3.new(1, 1, 1)
			highlight.OutlineTransparency = 0
			espHighlights[targetPlayer] = highlight
		end
	end
end

local function removeESPFromPlayer(targetPlayer)
	if espHighlights[targetPlayer] then
		espHighlights[targetPlayer]:Destroy()
		espHighlights[targetPlayer] = nil
	end
end

local function updateESP()
	for _, p in pairs(game.Players:GetPlayers()) do
		if espEnabled then
			addESPToPlayer(p)
		else
			removeESPFromPlayer(p)
		end
	end
end

espToggleButton.MouseButton1Click:Connect(function()
	espEnabled = not espEnabled
	espToggleButton.Text = espEnabled and "Disable" or "Enable"
	updateESP()
end)

game.Players.PlayerAdded:Connect(function(plr)
	plr.CharacterAdded:Connect(function()
		if espEnabled then
			wait(0.1)
			addESPToPlayer(plr)
		end
	end)
end)
game.Players.PlayerRemoving:Connect(function(plr)
	removeESPFromPlayer(plr)
end)

for _, plr in pairs(game.Players:GetPlayers()) do
	plr.CharacterAdded:Connect(function()
		if espEnabled then
			wait(0.1)
			addESPToPlayer(plr)
		else
			removeESPFromPlayer(plr)
		end
	end)
end

local currentHumanoid
local function updateHumanoid()
	if player.Character then
		currentHumanoid = player.Character:FindFirstChildOfClass("Humanoid")
		if currentHumanoid then
			walkSpeedSlider.Text = tostring(currentHumanoid.WalkSpeed)
			walkSpeedLabel.Text = "Walk Speed: "..tostring(currentHumanoid.WalkSpeed)
			jumpPowerSlider.Text = tostring(currentHumanoid.JumpPower)
			jumpPowerLabel.Text = "Jump Power: "..tostring(currentHumanoid.JumpPower)
		end
	end
end
walkSpeedButton.MouseButton1Click:Connect(function()
	local speed = tonumber(walkSpeedSlider.Text)
	if speed and speed > 0 and currentHumanoid then
		currentHumanoid.WalkSpeed = speed
		walkSpeedLabel.Text = "Walk Speed: "..tostring(speed)
	else
		walkSpeedSlider.Text = "Invalid"
	end
end)
jumpPowerButton.MouseButton1Click:Connect(function()
	local power = tonumber(jumpPowerSlider.Text)
	if power and power > 0 and currentHumanoid then
		currentHumanoid.JumpPower = power
		jumpPowerLabel.Text = "Jump Power: "..tostring(power)
	else
		jumpPowerSlider.Text = "Invalid"
	end
end)
player.CharacterAdded:Connect(function(character)
	character:WaitForChild("Humanoid")
	updateHumanoid()
end)
if player.Character then updateHumanoid() end
player.CharacterAdded:Connect(function(character)
	local humanoid = character:WaitForChild("Humanoid")
	walkSpeedSlider.Text = tostring(humanoid.WalkSpeed)
	walkSpeedLabel.Text = "Walk Speed: "..tostring(humanoid.WalkSpeed)
	jumpPowerSlider.Text = tostring(humanoid.JumpPower)
	jumpPowerLabel.Text = "Jump Power: "..tostring(humanoid.JumpPower)
end)

local themes = {
	dark = {
		menuBackground = Color3.fromRGB(30, 30, 40),
		titleBarBackground = Color3.fromRGB(45, 45, 60),
		tabButtonsBackground = Color3.fromRGB(38, 38, 50),
		tabButtonBackground = Color3.fromRGB(60, 60, 90),
		contentBackground = Color3.fromRGB(35, 35, 47),
		textColor = Color3.fromRGB(255, 255, 255),
		controlFrameBackground = Color3.fromRGB(45, 45, 60),
		controlInputBackground = Color3.fromRGB(70, 70, 100),
		controlButtonBackground = Color3.fromRGB(120, 120, 180),
		themeButtonText = "Light Theme"
	},
	light = {
		menuBackground = Color3.fromRGB(240, 240, 255),
		titleBarBackground = Color3.fromRGB(210, 210, 240),
		tabButtonsBackground = Color3.fromRGB(220, 220, 240),
		tabButtonBackground = Color3.fromRGB(180, 180, 220),
		contentBackground = Color3.fromRGB(240, 240, 255),
		textColor = Color3.fromRGB(30, 30, 50),
		controlFrameBackground = Color3.fromRGB(220, 220, 240),
		controlInputBackground = Color3.fromRGB(180, 180, 220),
		controlButtonBackground = Color3.fromRGB(160, 160, 200),
		themeButtonText = "Dark Theme"
	}
}
local currentTheme = "dark"
local function applyTheme(themeName)
	local theme = themes[themeName]
	menuFrame.BackgroundColor3 = theme.menuBackground
	titleBar.BackgroundColor3 = theme.titleBarBackground
	tabButtonsFrame.BackgroundColor3 = theme.tabButtonsBackground
	playerTabButton.BackgroundColor3 = theme.tabButtonBackground
	playerTabButton.TextColor3 = theme.textColor
	visualsTabButton.BackgroundColor3 = theme.tabButtonBackground
	visualsTabButton.TextColor3 = theme.textColor
	contentFrame.BackgroundColor3 = theme.contentBackground
	titleText.TextColor3 = theme.textColor
	walkSpeedFrame.BackgroundColor3 = theme.controlFrameBackground
	walkSpeedLabel.TextColor3 = theme.textColor
	walkSpeedSlider.BackgroundColor3 = theme.controlInputBackground
	walkSpeedSlider.TextColor3 = theme.textColor
	walkSpeedButton.BackgroundColor3 = theme.controlButtonBackground
	walkSpeedButton.TextColor3 = theme.textColor
	jumpPowerFrame.BackgroundColor3 = theme.controlFrameBackground
	jumpPowerLabel.TextColor3 = theme.textColor
	jumpPowerSlider.BackgroundColor3 = theme.controlInputBackground
	jumpPowerSlider.TextColor3 = theme.textColor
	jumpPowerButton.BackgroundColor3 = theme.controlButtonBackground
	jumpPowerButton.TextColor3 = theme.textColor
	spinFrame.BackgroundColor3 = theme.controlFrameBackground
	spinLabel.TextColor3 = theme.textColor
	spinSpeedBox.BackgroundColor3 = theme.controlInputBackground
	spinSpeedBox.TextColor3 = theme.textColor
	spinToggle.BackgroundColor3 = theme.controlButtonBackground
	spinToggle.TextColor3 = theme.textColor
	infiniteJumpFrame.BackgroundColor3 = theme.controlFrameBackground
	infiniteJumpLabel.TextColor3 = theme.textColor
	infiniteJumpToggleButton.BackgroundColor3 = theme.controlButtonBackground
	infiniteJumpToggleButton.TextColor3 = theme.textColor
	espFrame.BackgroundColor3 = theme.controlFrameBackground
	espLabel.TextColor3 = theme.textColor
	espToggleButton.BackgroundColor3 = theme.controlButtonBackground
	espToggleButton.TextColor3 = theme.textColor
	themeToggleButton.Text = theme.themeButtonText
end
applyTheme(currentTheme)
themeToggleButton.MouseButton1Click:Connect(function()
	currentTheme = (currentTheme == "dark") and "light" or "dark"
	applyTheme(currentTheme)
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.RightControl then
		menuFrame.Visible = not menuFrame.Visible
	end
end)
