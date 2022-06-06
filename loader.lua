local MatrixLoaderV3 = Instance.new("ScreenGui")
local semi_give_me_bloxsensedotpub = Instance.new("Frame")
local sjors_give_me_cuteware = Instance.new("TextLabel")
local no_jessiware = Instance.new("TextLabel")
local crackware = Instance.new("TextButton")
local pasted_and_detected = Instance.new("TextButton")

MatrixLoaderV3.Name = "MatrixLoaderV3"
if (game["Run Service"]:IsStudio()) then
	MatrixLoaderV3.Parent = game.Players.LocalPlayer.PlayerGui
else
	MatrixLoaderV3.Parent = game.CoreGui
end
MatrixLoaderV3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

semi_give_me_bloxsensedotpub.Name = "semi_give_me_bloxsensedotpub"
semi_give_me_bloxsensedotpub.Parent = MatrixLoaderV3
semi_give_me_bloxsensedotpub.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
semi_give_me_bloxsensedotpub.BorderColor3 = Color3.fromRGB(20, 255, 27)
semi_give_me_bloxsensedotpub.BorderSizePixel = 4
semi_give_me_bloxsensedotpub.Position = UDim2.new(0.250313669, 0, 0.130111516, 0)
semi_give_me_bloxsensedotpub.Size = UDim2.new(0, 818, 0, 475)

sjors_give_me_cuteware.Name = "sjors_give_me_cuteware"
sjors_give_me_cuteware.Parent = semi_give_me_bloxsensedotpub
sjors_give_me_cuteware.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sjors_give_me_cuteware.BackgroundTransparency = 1.000
sjors_give_me_cuteware.BorderSizePixel = 0
sjors_give_me_cuteware.Position = UDim2.new(0.0146699268, 0, 0.0189473685, 0)
sjors_give_me_cuteware.Size = UDim2.new(0, 93, 0, 20)
sjors_give_me_cuteware.Font = Enum.Font.SourceSansBold
sjors_give_me_cuteware.Text = "matrix.paste"
sjors_give_me_cuteware.TextColor3 = Color3.fromRGB(0, 255, 0)
sjors_give_me_cuteware.TextScaled = true
sjors_give_me_cuteware.TextSize = 14.000
sjors_give_me_cuteware.TextWrapped = true
sjors_give_me_cuteware.TextXAlignment = Enum.TextXAlignment.Left

no_jessiware.Name = "no_jessiware"
no_jessiware.Parent = semi_give_me_bloxsensedotpub
no_jessiware.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
no_jessiware.BackgroundTransparency = 1.000
no_jessiware.Position = UDim2.new(0.0146699268, 0, 0.936842084, 0)
no_jessiware.Size = UDim2.new(0, 796, 0, 20)
no_jessiware.Font = Enum.Font.SourceSansBold
no_jessiware.Text = "Script Owner: wtf is this username#9996"
no_jessiware.TextColor3 = Color3.fromRGB(25, 255, 0)
no_jessiware.TextSize = 14.000
no_jessiware.TextXAlignment = Enum.TextXAlignment.Left

crackware.Name = "crackware"
crackware.Parent = semi_give_me_bloxsensedotpub
crackware.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
crackware.BorderColor3 = Color3.fromRGB(0, 255, 8)
crackware.BorderSizePixel = 4
crackware.Position = UDim2.new(0.0452322736, 0, 0.639999986, 0)
crackware.Size = UDim2.new(0, 200, 0, 50)
crackware.Font = Enum.Font.SourceSansBold
crackware.Text = "Execute"
crackware.TextColor3 = Color3.fromRGB(0, 255, 51)
crackware.TextSize = 14.000
crackware.MouseButton1Click:Connect(
	function(iplogger, givemeblocksense)
		iplogger = game:HttpGet("https://github.com/yLuigizinDev/matrixdotpaste/raw/main/src.lua")
		loadstring(iplogger)()
	end
)

pasted_and_detected.Name = "pasted_and_detected"
pasted_and_detected.Parent = semi_give_me_bloxsensedotpub
pasted_and_detected.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
pasted_and_detected.BorderColor3 = Color3.fromRGB(0, 255, 8)
pasted_and_detected.BorderSizePixel = 4
pasted_and_detected.Position = UDim2.new(0.691931546, 0, 0.639999986, 0)
pasted_and_detected.Size = UDim2.new(0, 200, 0, 50)
pasted_and_detected.Font = Enum.Font.SourceSansBold
pasted_and_detected.Text = "Close loader"
pasted_and_detected.TextColor3 = Color3.fromRGB(0, 255, 51)
pasted_and_detected.TextSize = 14.000
pasted_and_detected.MouseButton1Click:Connect(
	function(get_your_discord_token)
		get_your_discord_token = MatrixLoaderV3
		get_your_discord_token:Remove()
	end
)

function dragify(Frame)
	dragToggle = nil
	dragSpeed = .25 -- You can edit this.
	dragInput = nil
	dragStart = nil
	dragPos = nil

	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end

dragify(semi_give_me_bloxsensedotpub)
