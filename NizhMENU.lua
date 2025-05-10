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
openGui.Enabled = true

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

local playerContent = Instance.new("ScrollingFrame")
playerContent.Name = "PlayerContent"
playerContent.Size = UDim2.new(1, 0, 1, 0)
playerContent.BackgroundTransparency = 1
playerContent.Visible = true
playerContent.Parent = contentFrame

playerContent.CanvasSize = UDim2.new(0, 0, 0, 0)
playerContent.ScrollBarThickness = 8
playerContent.ScrollBarImageColor3 = Color3.fromRGB(120, 120, 180)
playerContent.AutomaticCanvasSize = Enum.AutomaticSize.Y
playerContent.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
playerContent.ClipsDescendants = true


local visualsContent = Instance.new("ScrollingFrame")
visualsContent.Name = "VisualsContent"
visualsContent.Size = UDim2.new(1, 0, 1, 0)
visualsContent.BackgroundTransparency = 1
visualsContent.Visible = false
visualsContent.Parent = contentFrame

visualsContent.CanvasSize = UDim2.new(0, 0, 0, 0)
visualsContent.ScrollBarThickness = 8
visualsContent.ScrollBarImageColor3 = Color3.fromRGB(120, 120, 180)
visualsContent.AutomaticCanvasSize = Enum.AutomaticSize.Y
visualsContent.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
visualsContent.ClipsDescendants = true


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
	local player = game.Players:GetPlayerFromCharacter(char)
	if not player or not player.Team then return end
	local highlight = Instance.new("Highlight")
	local teamColor = player.Team.TeamColor.Color

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

-- Hide Gui Frame
local hideGuiFrame = Instance.new("Frame")
hideGuiFrame.Name = "HideGuiFrame"
hideGuiFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
hideGuiFrame.Position = UDim2.new(0.025, 0, 0, lightFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
hideGuiFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
hideGuiFrame.Parent = visualsContent

local hideGuiCorner = Instance.new("UICorner")
hideGuiCorner.CornerRadius = UDim.new(0, 8)
hideGuiCorner.Parent = hideGuiFrame

local hideGuiLabel = Instance.new("TextLabel")
hideGuiLabel.Name = "HideGuiLabel"
hideGuiLabel.Size = UDim2.new(0.6, 0, 1, 0)
hideGuiLabel.Position = UDim2.new(0, 10, 0, 0)
hideGuiLabel.BackgroundTransparency = 1
hideGuiLabel.Text = "Hide Gui"
hideGuiLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
hideGuiLabel.TextSize = 18
hideGuiLabel.Font = Enum.Font.GothamBold
hideGuiLabel.TextXAlignment = Enum.TextXAlignment.Left
hideGuiLabel.Parent = hideGuiFrame

local hideGuiToggleButton = Instance.new("TextButton")
hideGuiToggleButton.Name = "HideGuiToggleButton"
hideGuiToggleButton.Size = UDim2.new(0.3, 0, 0.6, 0)
hideGuiToggleButton.Position = UDim2.new(0.65, 0, 0.2, 0)
hideGuiToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
hideGuiToggleButton.Text = "Hide"
hideGuiToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
hideGuiToggleButton.TextSize = 15
hideGuiToggleButton.Font = Enum.Font.Gotham
hideGuiToggleButton.Parent = hideGuiFrame

local hideGuiToggleCorner = Instance.new("UICorner")
hideGuiToggleCorner.CornerRadius = UDim.new(0, 6)
hideGuiToggleCorner.Parent = hideGuiToggleButton
local guiHidden = false
local hiddenGuis = {}

local function hideOtherGuis()
	hiddenGuis = {}
	for _, gui in ipairs(player.PlayerGui:GetChildren()) do
		if gui:IsA("ScreenGui") and gui ~= screenGui and gui ~= openGui and gui.Enabled then
			gui.Enabled = false
			table.insert(hiddenGuis, gui)
		end
	end
end

local function showOtherGuis()
	for _, gui in ipairs(hiddenGuis) do
		if gui and gui.Parent == player.PlayerGui then
			gui.Enabled = true
		end
	end
	hiddenGuis = {}
end

hideGuiToggleButton.MouseButton1Click:Connect(function()
	guiHidden = not guiHidden
	hideGuiToggleButton.Text = guiHidden and "Show" or "Hide"
	hideGuiToggleButton.BackgroundColor3 = guiHidden and Color3.fromRGB(180, 80, 80) or Color3.fromRGB(120, 120, 180)
	if guiHidden then
		hideOtherGuis()
	else
		showOtherGuis()
	end
end)

-- Time Changer Frame
local timeFrame = Instance.new("Frame")
timeFrame.Name = "TimeFrame"
timeFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
timeFrame.Position = UDim2.new(0.025, 0, 0, hideGuiFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
timeFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
timeFrame.Parent = visualsContent

local timeCorner = Instance.new("UICorner")
timeCorner.CornerRadius = UDim.new(0, 8)
timeCorner.Parent = timeFrame

local timeLabel = Instance.new("TextLabel")
timeLabel.Name = "TimeLabel"
timeLabel.Size = UDim2.new(0.6, 0, 0.4, 0)
timeLabel.Position = UDim2.new(0, 10, 0, 0)
timeLabel.BackgroundTransparency = 1
timeLabel.Text = "Time Changer"
timeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timeLabel.TextSize = 16
timeLabel.Font = Enum.Font.GothamBold
timeLabel.TextXAlignment = Enum.TextXAlignment.Left
timeLabel.Parent = timeFrame

local timeTextBox = Instance.new("TextBox")
timeTextBox.Name = "TimeTextBox"
timeTextBox.Size = UDim2.new(0.6, 0, 0.4, 0)
timeTextBox.Position = UDim2.new(0.05, 0, 0.5, 0)
timeTextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 100)
timeTextBox.Text = "12"
timeTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
timeTextBox.TextSize = 13
timeTextBox.Font = Enum.Font.Gotham
timeTextBox.ClearTextOnFocus = false
timeTextBox.Parent = timeFrame

local timeTextBoxCorner = Instance.new("UICorner")
timeTextBoxCorner.CornerRadius = UDim.new(0, 6)
timeTextBoxCorner.Parent = timeTextBox

local timeButton = Instance.new("TextButton")
timeButton.Name = "TimeButton"
timeButton.Size = UDim2.new(0.25, 0, 0.4, 0)
timeButton.Position = UDim2.new(0.7, 0, 0.5, 0)
timeButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
timeButton.Text = "Apply"
timeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
timeButton.TextSize = 13
timeButton.Font = Enum.Font.Gotham
timeButton.Parent = timeFrame

local timeButtonCorner = Instance.new("UICorner")
timeButtonCorner.CornerRadius = UDim.new(0, 6)
timeButtonCorner.Parent = timeButton

timeButton.MouseButton1Click:Connect(function()
	local timeValue = tonumber(timeTextBox.Text)
	if timeValue and timeValue >= 0 and timeValue < 24 then
		game:GetService("Lighting").TimeOfDay = string.format("%02d:00:00", math.floor(timeValue))
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
spinSpeedBox.Size = UDim2.new(0.3, 0, 0.6, 0)
spinSpeedBox.Position = UDim2.new(0.35, 0, 0.2, 0)
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
spinToggle.Size = UDim2.new(0.3, 0, 0.6, 0)
spinToggle.Position = UDim2.new(0.70, 0, 0.2, 0)
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

-- ================= CTRL+CLICK TP =================

local tpFrame = Instance.new("Frame")
tpFrame.Name = "CtrlClickTPFrame"
tpFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
tpFrame.Position = UDim2.new(0.025, 0, 0, infiniteJumpFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
tpFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
tpFrame.Parent = playerContent

local tpCorner = Instance.new("UICorner")
tpCorner.CornerRadius = UDim.new(0, 8)
tpCorner.Parent = tpFrame

local tpLabel = Instance.new("TextLabel")
tpLabel.Name = "CtrlClickTPLabel"
tpLabel.Size = UDim2.new(0.6, 0, 1, 0)
tpLabel.Position = UDim2.new(0, 10, 0, 0)
tpLabel.BackgroundTransparency = 1
tpLabel.Text = "Ctrl+Click Teleport"
tpLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
tpLabel.TextSize = 18
tpLabel.Font = Enum.Font.GothamBold
tpLabel.TextXAlignment = Enum.TextXAlignment.Left
tpLabel.Parent = tpFrame

local tpToggleButton = Instance.new("TextButton")
tpToggleButton.Name = "CtrlClickTPToggleButton"
tpToggleButton.Size = UDim2.new(0.3, 0, 0.6, 0)
tpToggleButton.Position = UDim2.new(0.65, 0, 0.2, 0)
tpToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
tpToggleButton.Text = "Enable"
tpToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
tpToggleButton.TextSize = 15
tpToggleButton.Font = Enum.Font.Gotham
tpToggleButton.Parent = tpFrame

local tpToggleCorner = Instance.new("UICorner")
tpToggleCorner.CornerRadius = UDim.new(0, 6)
tpToggleCorner.Parent = tpToggleButton

local ctrlClickTPEnabled = false
local mouse = player:GetMouse()

local function teleportToPosition(position)
	local character = player.Character
	if character and character:FindFirstChild("HumanoidRootPart") then
		local targetPosition = position + Vector3.new(0, 3, 0)
		character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
	end
end

local mouseConn

local function enableCtrlClickTP()
	if mouseConn then return end
	mouseConn = mouse.Button1Down:Connect(function()
		if ctrlClickTPEnabled and (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)) then
			local target = mouse.Hit
			if target then
				teleportToPosition(target.p)
			end
		end
	end)
end

local function disableCtrlClickTP()
	if mouseConn then
		mouseConn:Disconnect()
		mouseConn = nil
	end
end

tpToggleButton.MouseButton1Click:Connect(function()
	ctrlClickTPEnabled = not ctrlClickTPEnabled
	tpToggleButton.Text = ctrlClickTPEnabled and "Disable" or "Enable"
	tpToggleButton.BackgroundColor3 = ctrlClickTPEnabled and Color3.fromRGB(180, 80, 80) or Color3.fromRGB(120, 120, 180)
	if ctrlClickTPEnabled then
		enableCtrlClickTP()
	else
		disableCtrlClickTP()
	end
end)

player.AncestryChanged:Connect(function(_, parent)
	if not parent then
		disableCtrlClickTP()
	end
end)

-- Noclip Frame
local noclipFrame = Instance.new("Frame")
noclipFrame.Name = "NoclipFrame"
noclipFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
noclipFrame.Position = UDim2.new(0.025, 0, 0, tpFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
noclipFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
noclipFrame.Parent = playerContent

local noclipCorner = Instance.new("UICorner")
noclipCorner.CornerRadius = UDim.new(0, 8)
noclipCorner.Parent = noclipFrame

local noclipLabel = Instance.new("TextLabel")
noclipLabel.Name = "NoclipLabel"
noclipLabel.Size = UDim2.new(0.6, 0, 1, 0)
noclipLabel.Position = UDim2.new(0, 10, 0, 0)
noclipLabel.BackgroundTransparency = 1
noclipLabel.Text = "Noclip"
noclipLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
noclipLabel.TextSize = 18
noclipLabel.Font = Enum.Font.GothamBold
noclipLabel.TextXAlignment = Enum.TextXAlignment.Left
noclipLabel.Parent = noclipFrame

local noclipToggleButton = Instance.new("TextButton")
noclipToggleButton.Name = "NoclipToggleButton"
noclipToggleButton.Size = UDim2.new(0.3, 0, 0.6, 0)
noclipToggleButton.Position = UDim2.new(0.65, 0, 0.2, 0)
noclipToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
noclipToggleButton.Text = "Enable"
noclipToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
noclipToggleButton.TextSize = 15
noclipToggleButton.Font = Enum.Font.Gotham
noclipToggleButton.Parent = noclipFrame

local noclipToggleCorner = Instance.new("UICorner")
noclipToggleCorner.CornerRadius = UDim.new(0, 6)
noclipToggleCorner.Parent = noclipToggleButton

local noclipEnabled = false
local noclipConnection

local function enableNoclip()
	if noclipConnection then return end
	noclipEnabled = true
	noclipConnection = RunService.Stepped:Connect(function()
		local character = player.Character
		if character then
			for _, part in pairs(character:GetDescendants()) do
				if part:IsA("BasePart") and part.CanCollide then
					part.CanCollide = false
				end
			end
		end
	end)
end

local function disableNoclip()
	noclipEnabled = false
	if noclipConnection then
		noclipConnection:Disconnect()
		noclipConnection = nil
	end
	local character = player.Character
	if character then
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = true
			end
		end
	end
end

noclipToggleButton.MouseButton1Click:Connect(function()
	noclipEnabled = not noclipEnabled
	noclipToggleButton.Text = noclipEnabled and "Disable" or "Enable"
	noclipToggleButton.BackgroundColor3 = noclipEnabled and Color3.fromRGB(180, 80, 80) or Color3.fromRGB(120, 120, 180)
	if noclipEnabled then
		enableNoclip()
	else
		disableNoclip()
	end
end)

player.CharacterRemoving:Connect(function()
	if noclipEnabled then
		disableNoclip()
	end
end)

-- Fly Frame
local flyFrame = Instance.new("Frame")
flyFrame.Name = "FlyFrame"
flyFrame.Size = UDim2.new(0.95, 0, 0, functionFrameHeight)
flyFrame.Position = UDim2.new(0.025, 0, 0, noclipFrame.Position.Y.Offset + functionFrameHeight + functionFrameSpacing)
flyFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
flyFrame.Parent = playerContent

local flyCorner = Instance.new("UICorner")
flyCorner.CornerRadius = UDim.new(0, 8)
flyCorner.Parent = flyFrame

local flyLabel = Instance.new("TextLabel")
flyLabel.Name = "FlyLabel"
flyLabel.Size = UDim2.new(0.6, 0, 0.4, 0)
flyLabel.Position = UDim2.new(0, 10, 0, 0)
flyLabel.BackgroundTransparency = 1
flyLabel.Text = "Fly"
flyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
flyLabel.TextSize = 16
flyLabel.Font = Enum.Font.GothamBold
flyLabel.TextXAlignment = Enum.TextXAlignment.Left
flyLabel.Parent = flyFrame

local flySpeedBox = Instance.new("TextBox")
flySpeedBox.Name = "FlySpeedBox"
flySpeedBox.Size = UDim2.new(0.4, 0, 0.4, 0)
flySpeedBox.Position = UDim2.new(0.05, 0, 0.5, 0)
flySpeedBox.BackgroundColor3 = Color3.fromRGB(70, 70, 100)
flySpeedBox.Text = "50"
flySpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
flySpeedBox.TextSize = 13
flySpeedBox.Font = Enum.Font.Gotham
flySpeedBox.ClearTextOnFocus = false
flySpeedBox.Parent = flyFrame

local flySpeedBoxCorner = Instance.new("UICorner")
flySpeedBoxCorner.CornerRadius = UDim.new(0, 6)
flySpeedBoxCorner.Parent = flySpeedBox

local flyToggleButton = Instance.new("TextButton")
flyToggleButton.Name = "FlyToggleButton"
flyToggleButton.Size = UDim2.new(0.25, 0, 0.4, 0)
flyToggleButton.Position = UDim2.new(0.7, 0, 0.5, 0)
flyToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
flyToggleButton.Text = "Enable"
flyToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
flyToggleButton.TextSize = 13
flyToggleButton.Font = Enum.Font.Gotham
flyToggleButton.Parent = flyFrame

local flyToggleButtonCorner = Instance.new("UICorner")
flyToggleButtonCorner.CornerRadius = UDim.new(0, 6)
flyToggleButtonCorner.Parent = flyToggleButton

local flying = false
local bodyVelocity
local flyLoop

local function startFly()
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local speed = tonumber(flySpeedBox.Text) or 50

	bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	bodyVelocity.Velocity = Vector3.new(0, 0, 0)
	bodyVelocity.Parent = humanoidRootPart

	flyLoop = game:GetService("RunService").RenderStepped:Connect(function()
		local camera = workspace.CurrentCamera
		local moveDirection = Vector3.new(0, 0, 0)
		if UserInputService:IsKeyDown(Enum.KeyCode.W) then
			moveDirection = moveDirection + camera.CFrame.LookVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.S) then
			moveDirection = moveDirection - camera.CFrame.LookVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.A) then
			moveDirection = moveDirection - camera.CFrame.RightVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.D) then
			moveDirection = moveDirection + camera.CFrame.RightVector
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
			moveDirection = moveDirection + Vector3.new(0, 1, 0)
		end
		if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
			moveDirection = moveDirection - Vector3.new(0, 1, 0)
		end

		if moveDirection.Magnitude > 0 then
			moveDirection = moveDirection.Unit * speed
		else
			moveDirection = Vector3.new(0, 0, 0)
		end

		bodyVelocity.Velocity = moveDirection
	end)
end

local function stopFly()
	if flyLoop then
		flyLoop:Disconnect()
		flyLoop = nil
	end
	if bodyVelocity then
		bodyVelocity:Destroy()
		bodyVelocity = nil
	end
end

flyToggleButton.MouseButton1Click:Connect(function()
	flying = not flying
	flyToggleButton.Text = flying and "Disable" or "Enable"
	flyToggleButton.BackgroundColor3 = flying and Color3.fromRGB(180, 80, 80) or Color3.fromRGB(120, 120, 180)
	if flying then
		startFly()
	else
		stopFly()
	end
end)

player.CharacterAdded:Connect(function()
	if flying then
		stopFly()
		flying = false
		flyToggleButton.Text = "Enable"
		flyToggleButton.BackgroundColor3 = Color3.fromRGB(120, 120, 180)
	end
end)

flySpeedBox.FocusLost:Connect(function(enter)
	if flying and enter then
		stopFly()
		startFly()
	end
end)



-- ================= COMBAT TAB =================

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

openButton.MouseButton1Click:Connect(function()
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
