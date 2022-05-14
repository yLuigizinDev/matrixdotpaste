local MatrixLoaderV2 = Instance.new("ScreenGui")
local FrameYourDadIsAFemboy = Instance.new("Frame")
local UIScale = Instance.new("UIScale")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local p100_Text = Instance.new("TextLabel")
local notp = Instance.new("TextLabel")
local aa_ = Instance.new("TextLabel")
local LOAD = Instance.new("TextButton")
local CLOSE = Instance.new("TextButton")

MatrixLoaderV2.Name = "MatrixLoaderV2"
MatrixLoaderV2.Parent = game.CoreGui
MatrixLoaderV2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MatrixLoaderV2.ResetOnSpawn = false

FrameYourDadIsAFemboy.Name = "FrameYourDadIsAFemboy"
FrameYourDadIsAFemboy.Parent = MatrixLoaderV2
FrameYourDadIsAFemboy.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameYourDadIsAFemboy.Position = UDim2.new(0.186557785, 0, 0.0892193317, 0)
FrameYourDadIsAFemboy.Size = UDim2.new(0, 1066, 0, 542)

UIScale.Parent = FrameYourDadIsAFemboy

UIAspectRatioConstraint.Parent = FrameYourDadIsAFemboy
UIAspectRatioConstraint.AspectRatio = 2.000
UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = FrameYourDadIsAFemboy

p100_Text.Name = "p100_Text"
p100_Text.Parent = FrameYourDadIsAFemboy
p100_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
p100_Text.BackgroundTransparency = 1.000
p100_Text.Position = UDim2.new(0.0206378978, 0, 0.0337711051, 0)
p100_Text.Size = UDim2.new(0, 224, 0, 50)
p100_Text.Font = Enum.Font.SourceSansBold
p100_Text.Text = "Matrix.Paste"
p100_Text.TextColor3 = Color3.fromRGB(0, 255, 8)
p100_Text.TextScaled = true
p100_Text.TextSize = 14.000
p100_Text.TextWrapped = true

notp.Name = "notp"
notp.Parent = FrameYourDadIsAFemboy
notp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notp.BackgroundTransparency = 1.000
notp.Position = UDim2.new(0.0206378978, 0, 0.178236395, 0)
notp.Size = UDim2.new(0, 408, 0, 50)
notp.Font = Enum.Font.SourceSansBold
notp.Text = "Game: "
notp.TextColor3 = Color3.fromRGB(0, 255, 8)
notp.TextScaled = true
notp.TextSize = 14.000
notp.TextWrapped = true
notp.TextXAlignment = Enum.TextXAlignment.Left

aa_.Name = "aa_"
aa_.Parent = FrameYourDadIsAFemboy
aa_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
aa_.BackgroundTransparency = 1.000
aa_.Position = UDim2.new(0.0206378978, 0, 0.303939939, 0)
aa_.Size = UDim2.new(0, 408, 0, 50)
aa_.Font = Enum.Font.SourceSansBold
aa_.Text = "Game ID: "
aa_.TextColor3 = Color3.fromRGB(0, 255, 8)
aa_.TextScaled = true
aa_.TextSize = 14.000
aa_.TextWrapped = true
aa_.TextXAlignment = Enum.TextXAlignment.Left

LOAD.Name = "LOAD"
LOAD.Parent = FrameYourDadIsAFemboy
LOAD.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
LOAD.Position = UDim2.new(0.042574048, 0, 0.746023893, 0)
LOAD.Size = UDim2.new(0, 200, 0, 60)
LOAD.Font = Enum.Font.SourceSansBold
LOAD.Text = "Load"
LOAD.TextColor3 = Color3.fromRGB(25, 255, 0)
LOAD.TextScaled = true
LOAD.TextSize = 14.000
LOAD.TextWrapped = true
LOAD.MouseButton1Click:Connect(
    function()
        loadstring(game:HttpGet("https://github.com/yLuigizinDev/matrixdotpaste/raw/main/main.lua", true))()
        task.wait(.1)
        game.CoreGui.MatrixLoaderV2:Destroy()
    end
)

CLOSE.Name = "CLOSE"
CLOSE.Parent = FrameYourDadIsAFemboy
CLOSE.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
CLOSE.Position = UDim2.new(0.748014927, 0, 0.746023893, 0)
CLOSE.Size = UDim2.new(0, 200, 0, 60)
CLOSE.Font = Enum.Font.SourceSansBold
CLOSE.Text = "Close"
CLOSE.TextColor3 = Color3.fromRGB(25, 255, 0)
CLOSE.TextScaled = true
CLOSE.TextSize = 14.000
CLOSE.TextWrapped = true
CLOSE.MouseButton1Click:Connect(
    function()
        game.CoreGui.MatrixLoaderV2:Destroy()
    end
)

local function RBOH_fake_script() -- notp.LocalScript 
	local script = Instance.new('LocalScript', notp)

	local a = script.Parent
	a.Text = "Game: "..game.Name
end
coroutine.wrap(RBOH_fake_script)()
local function XZJNIU_fake_script() -- aa_.LocalScript 
	local script = Instance.new('LocalScript', aa_)

	local a = script.Parent
	a.Text = "Game ID: "..game.GameId
end
coroutine.wrap(XZJNIU_fake_script)()
local function WFBHEV_fake_script() -- MatrixLoaderV2.DragLib 
	local script = Instance.new('LocalScript', MatrixLoaderV2)

	local library = {}
	
	local UserInputService = game:GetService("UserInputService") 
	local a = script.Parent.FrameYourDadIsAFemboy
	local dragInput 
	local dragStart 
	local startPos 
	local function update(input) 
		local delta = input.Position - dragStart 
		a.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y) 
	end 
	a.InputBegan:Connect(function(input) 
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
			library.dragging = true 
			dragStart = input.Position 
			startPos = a.Position 
	
			input.Changed:Connect(function() 
				if input.UserInputState == Enum.UserInputState.End then 
					library.dragging = false 
				end 
			end) 
		end 
	end) 
	a.InputChanged:Connect(function(input) 
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then 
			dragInput = input 
		end 
	end) 
	UserInputService.InputChanged:Connect(function(input) 
		if input == dragInput and library.dragging then 
			update(input) 
		end 
	end) 
end
coroutine.wrap(WFBHEV_fake_script)()
