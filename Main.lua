local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Name = "STFU"
gui.ResetOnSpawn = false
gui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 200)
frame.Position = UDim2.new(0.5, -175, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Visible = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "Subscribe for free ligma"
title.Font = Enum.Font.LuckiestGuy
title.TextSize = 18
title.TextColor3 = Color3.new(1, 1, 1)
title.Parent = frame

local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(1, -20, 0, 40)
inputBox.Position = UDim2.new(0, 10, 0, 40)
inputBox.PlaceholderText = "Ligma"
inputBox.Text = ""
inputBox.ClearTextOnFocus = false
inputBox.TextColor3 = Color3.new(0, 0, 0)
inputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBox.TextWrapped = true
inputBox.Font = Enum.Font.LuckiestGuy
inputBox.TextSize = 14
inputBox.TextXAlignment = Enum.TextXAlignment.Center
inputBox.TextYAlignment = Enum.TextYAlignment.Center
inputBox.Parent = frame

local clearButton = Instance.new("TextButton")
clearButton.Size = UDim2.new(1, -20, 0, 35)
clearButton.Position = UDim2.new(0, 10, 0, 90)
clearButton.Text = "CLEAR"
clearButton.Font = Enum.Font.LuckiestGuy
clearButton.TextSize = 18
clearButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
clearButton.TextColor3 = Color3.new(1, 1, 1)
clearButton.Parent = frame

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(1, -20, 0, 35)
executeButton.Position = UDim2.new(0, 10, 0, 135)
executeButton.Text = "Fuck the script"
executeButton.Font = Enum.Font.LuckiestGuy
executeButton.TextSize = 18
executeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
executeButton.TextColor3 = Color3.new(1, 1, 1)
executeButton.Parent = frame

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
					if not modSuccess then
						warn("Error requiring module:", modResult)
					end
				end
			end
		end)
		if not success then
			warn("Error loading asset:", result)
		end
	else
		warn("Invalid require() syntax.")
	end
end)

local StigmanFroud = Instance.new("ScreenGui")
local trajectory = Instance.new("ImageLabel")
local R = Instance.new("ImageLabel")
local Earth = Instance.new("ImageLabel")
local Green = Instance.new("ImageLabel")

StigmanFroud.Name = "Stigman Froud"
StigmanFroud.Parent = playerGui
StigmanFroud.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
StigmanFroud.DisplayOrder = 999
StigmanFroud.ResetOnSpawn = false

trajectory.Name = "trajectory"
trajectory.Parent = StigmanFroud
trajectory.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
trajectory.BackgroundTransparency = 1
trajectory.Position = UDim2.new(0.4543, 0, 0.4304, 0)
trajectory.Size = UDim2.new(0, 110, 0, 110)
trajectory.Image = "http://www.roblox.com/asset/?id=499954653"
trajectory.SliceScale = 3

R.Name = "R"
R.Parent = StigmanFroud
R.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
R.BackgroundTransparency = 1
R.Position = UDim2.new(0.4543, 0, 0.4304, 0)
R.Size = UDim2.new(0, 110, 0, 110)
R.ZIndex = 3
R.Image = "http://www.roblox.com/asset/?id=499954653"
R.SliceScale = 3

Earth.Name = "Earth"
Earth.Parent = R
Earth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Earth.BackgroundTransparency = 1
Earth.BorderSizePixel = 0
Earth.Position = UDim2.new(0.405, 0, 0.4068, 0)
Earth.Size = UDim2.new(0, 20, 0, 20)
Earth.ZIndex = 4
Earth.Image = "rbxassetid://499954653"

Green.Name = "Green"
Green.Parent = StigmanFroud
Green.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Green.BackgroundTransparency = 1
Green.BorderSizePixel = 0
Green.Position = UDim2.new(0.005, 0, 0.825, 0)
Green.Size = UDim2.new(0, 110, 0, 110)
Green.ZIndex = 6
Green.Image = "rbxassetid://499954653"
Green.ImageTransparency = 1

coroutine.wrap(function()
	local img = trajectory
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
	while true do
		wait(0.01)
		img.Rotation = img.Rotation + 0.3
	end
end)()

coroutine.wrap(function()
	local script = Earth
	local angle = 0
	local angleInc = 0.02
	local origin = script.Parent.Position
	local dist = 55
	while wait() do
		angle = angle + angleInc
		local x = math.cos(angle) * dist
		local y = math.sin(angle) * dist
		script.Position = origin + UDim2.new(0, x, 0, y)
	end
end)()

coroutine.wrap(function()
	local img = R
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
end)()

coroutine.wrap(function()
	local Tween = game:GetService("TweenService")
	local img = Green
	wait(2)
	while true do
		local t1 = Tween:Create(img, TweenInfo.new(0.5), {ImageTransparency = 0})
		t1:Play()
		wait(0.3)
		local t2 = Tween:Create(img, TweenInfo.new(0.5), {ImageTransparency = 1})
		t2:Play()
		wait(0.3)
		local t3 = Tween:Create(img, TweenInfo.new(0.5), {ImageTransparency = 0})
		t3:Play()
		wait(0.3)
		local t4 = Tween:Create(img, TweenInfo.new(0.5), {ImageTransparency = 1})
		t4:Play()
		wait(4)
	end
end)()

coroutine.wrap(function()
	local img = Green
	img:TweenPosition(UDim2.new(0.451, 0, 0.395, 0), "Out", "Linear", 0.4, false)
	wait(3)
	img:TweenPosition(UDim2.new(0.005, 0, 0.619, 0), "Out", "Sine", 0.7, false)
end)()

coroutine.wrap(function()
	local info = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
	print("Loaded At", info.Name)
	wait(0.1)
	print("Welcome,", player.Name)
end)()
