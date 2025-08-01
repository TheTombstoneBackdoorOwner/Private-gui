local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Name = "ExecutorGUI"
gui.ResetOnSpawn = false
gui.Parent = playerGui

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 110, 0, 35)
toggleButton.Position = UDim2.new(0, 15, 0, 15)
toggleButton.Text = "☰ TOGGLE"
toggleButton.Font = Enum.Font.GothamSemibold
toggleButton.TextSize = 14
toggleButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.AutoButtonColor = true
toggleButton.BorderSizePixel = 0
toggleButton.Parent = gui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 250)
frame.Position = UDim2.new(0.5, -200, 0.5, -125)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Visible = true
frame.Parent = gui

local function roundify(uiElement, radius)
	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, radius)
	corner.Parent = uiElement
end
roundify(frame, 10)
roundify(toggleButton, 6)

toggleButton.MouseButton1Click:Connect(function()
	frame.Visible = not frame.Visible
end)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "Shitter Fe bypass (Private)"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Parent = frame

local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(1, -20, 0, 45)
inputBox.Position = UDim2.new(0, 10, 0, 50)
inputBox.PlaceholderText = "Put your fuckass script here"
inputBox.Text = ""
inputBox.ClearTextOnFocus = false
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
inputBox.TextWrapped = true
inputBox.Font = Enum.Font.Gotham
inputBox.TextSize = 16
inputBox.TextXAlignment = Enum.TextXAlignment.Left
inputBox.TextYAlignment = Enum.TextYAlignment.Center
inputBox.Parent = frame
roundify(inputBox, 6)

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(0.48, -5, 0, 40)
clearButton.Position = UDim2.new(0, 10, 0, 110)
clearButton.Text = "Clear"
clearButton.Font = Enum.Font.GothamSemibold
clearButton.TextSize = 16
clearButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
clearButton.TextColor3 = Color3.new(1, 1, 1)
clearButton.Parent = frame
roundify(clearButton, 6)

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(0.48, -5, 0, 40)
executeButton.Position = UDim2.new(0.52, 0, 0, 110)
executeButton.Text = "Execute"
executeButton.Font = Enum.Font.GothamSemibold
executeButton.TextSize = 16
executeButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
executeButton.TextColor3 = Color3.new(1, 1, 1)
executeButton.Parent = frame
roundify(executeButton, 6)

clearButton.MouseButton1Click:Connect(function()
	inputBox.Text = ""
end)

executeButton.MouseButton1Click:Connect(function()
	local scriptText = inputBox.Text
	local assetId = scriptText:match("require%s*%(?%s*(%d+)%s*%)?")
	if assetId then
		local success, result = pcall(function()
			local objects = game:GetObjects("rbxassetid://" .. assetId)
			local obj = objects[1]
			if obj then
				obj.Parent = playerGui
				if obj:IsA("ModuleScript") then
					local modSuccess, modResult = pcall(function()
						return require(obj)
					end)
				end
			end
		end)
	end
end)

local StigmanFroud = Instance.new("ScreenGui")
local trajectory = Instance.new("ImageLabel")
local R = Instance.new("ImageLabel")
local Earth = Instance.new("ImageLabel")
local Green = Instance.new("ImageLabel")

StigmanFroud.Name = "Stigman Froud"
StigmanFroud.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
StigmanFroud.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
StigmanFroud.DisplayOrder = 999
StigmanFroud.ResetOnSpawn = false

trajectory.Name = "trajectory"
trajectory.Parent = StigmanFroud
trajectory.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trajectory.BackgroundTransparency = 1.000
trajectory.Position = UDim2.new(0.45430705, 0, 0.430432826, 0)
trajectory.Size = UDim2.new(0, 110, 0, 110)
trajectory.Image = "http://www.roblox.com/asset/?id=7102118272"
trajectory.SliceScale = 3.000

R.Name = "R"
R.Parent = StigmanFroud
R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
R.BackgroundTransparency = 1.000
R.Position = UDim2.new(0.45430705, 0, 0.430432826, 0)
R.Size = UDim2.new(0, 110, 0, 110)
R.ZIndex = 3
R.Image = "http://www.roblox.com/asset/?id=7102117818"
R.SliceScale = 3.000

Earth.Name = "Earth"
Earth.Parent = R
Earth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Earth.BackgroundTransparency = 1.000
Earth.BorderColor3 = Color3.fromRGB(0, 0, 0)
Earth.BorderSizePixel = 0
Earth.Position = UDim2.new(0.404999346, 0, 0.406818181, 0)
Earth.Size = UDim2.new(0, 20, 0, 20)
Earth.ZIndex = 4
Earth.Image = "rbxassetid://78137783929126"

Green.Name = "Green"
Green.Parent = StigmanFroud
Green.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Green.BackgroundTransparency = 1.000
Green.BorderColor3 = Color3.fromRGB(0, 0, 0)
Green.BorderSizePixel = 0
Green.Position = UDim2.new(0.00499999989, 0, 0.824999988, 0)
Green.Size = UDim2.new(0, 110, 0, 110)
Green.ZIndex = 6
Green.Image = "rbxassetid://75554667916597"
Green.ImageTransparency = 1.000

local function AARC_fake_script()
	local script = Instance.new('LocalScript', trajectory)
	local img = script.Parent
	local sonic = script.Parent
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
	while true do
		wait(0.01)
		sonic.Rotation = sonic.Rotation + 0.3
	end
end
coroutine.wrap(AARC_fake_script)()

local function LQERQ_fake_script()
	local script = Instance.new('LocalScript', Earth)
	local Angle = 0
	local AngleIncrement = 0.02
	local OriginPos = script.Parent.Position
	local Distance = 55
	while wait() do
		Angle = Angle + AngleIncrement
		local dirX = math.cos(Angle)
		local dirY = math.sin(Angle)
		script.Parent.Position = OriginPos + UDim2.new(0, dirX * Distance, 0, dirY * Distance)
	end
end
coroutine.wrap(LQERQ_fake_script)()

local function XBQODE_fake_script()
	local script = Instance.new('LocalScript', R)
	local img = script.Parent
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
end
coroutine.wrap(XBQODE_fake_script)()

local function NSHDR_fake_script()
	local script = Instance.new('LocalScript', Green)
	local Tween = game:GetService("TweenService")
	local Greenfn = script.Parent
	wait(2)
	while true do
		local TranspncyTween = Tween:Create(Greenfn, TweenInfo.new(0.5), {ImageTransparency = 0})
		TranspncyTween:Play()
		wait(0.3)
		TranspncyTween = Tween:Create(Greenfn, TweenInfo.new(0.5), {ImageTransparency = 1})
		TranspncyTween:Play()
		wait(0.3)
		TranspncyTween = Tween:Create(Greenfn, TweenInfo.new(0.5), {ImageTransparency = 0})
		TranspncyTween:Play()
		wait(0.3)
		TranspncyTween = Tween:Create(Greenfn, TweenInfo.new(0.5), {ImageTransparency = 1})
		TranspncyTween:Play()
		wait(4)
	end
end
coroutine.wrap(NSHDR_fake_script)()

local function UDIRPT_fake_script()
	local script = Instance.new('LocalScript', Green)
	local img = script.Parent
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
end
coroutine.wrap(UDIRPT_fake_script)()

local function WGFAMY_fake_script()
	local script = Instance.new('LocalScript', StigmanFroud)
	local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
	print("Loaded At", GetName.Name)
	wait(0.1)
	print("Welcome,", game.Players.LocalPlayer.Name)
end
coroutine.wrap(WGFAMY_fake_script)()

for _, Item in pairs(game:GetService("CoreGui"):GetDescendants()) do
    if Item:IsA("TextLabel") and Item.Text == "📆 Arceus X Origin"  then
        Item.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent:Destroy()
        break
    end
end
