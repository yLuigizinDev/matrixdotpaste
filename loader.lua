local MatrixLoader = Instance.new("ScreenGui")
local MatrixFrame = Instance.new("Frame")
local Text_Lol__ = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Gayme = Instance.new("TextLabel")
local GaymeId = Instance.new("TextLabel")
local Load = Instance.new("TextButton")
local Close = Instance.new("TextButton")

MatrixLoader.Name = "MatrixLoader"
MatrixLoader.Parent = game.CoreGui
MatrixLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MatrixLoader.ResetOnSpawn = false

MatrixFrame.Name = "MatrixFrame"
MatrixFrame.Parent = MatrixLoader
MatrixFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MatrixFrame.Position = UDim2.new(0.246859297, 0, 0.123839013, 0)
MatrixFrame.Size = UDim2.new(0, 832, 0, 418)

Text_Lol__.Name = "Text_Lol__"
Text_Lol__.Parent = MatrixFrame
Text_Lol__.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_Lol__.BackgroundTransparency = 1.000
Text_Lol__.Position = UDim2.new(0.021634616, 0, 0.0215311013, 0)
Text_Lol__.Size = UDim2.new(0, 116, 0, 22)
Text_Lol__.Font = Enum.Font.SourceSansBold
Text_Lol__.Text = "Matrix.Paste"
Text_Lol__.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_Lol__.TextScaled = true
Text_Lol__.TextSize = 14.000
Text_Lol__.TextWrapped = true
Text_Lol__.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = MatrixFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.040865384, 0, 0.145933017, 0)
ImageLabel.Size = UDim2.new(0, 117, 0, 95)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8934380219"

Gayme.Name = "Gayme"
Gayme.Parent = MatrixFrame
Gayme.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gayme.BackgroundTransparency = 1.000
Gayme.Position = UDim2.new(0.215144232, 0, 0.145933017, 0)
Gayme.Size = UDim2.new(0, 189, 0, 25)
Gayme.Font = Enum.Font.SourceSans
Gayme.Text = "Game: Counter Blox"
Gayme.TextColor3 = Color3.fromRGB(255, 255, 255)
Gayme.TextScaled = true
Gayme.TextSize = 14.000
Gayme.TextWrapped = true
Gayme.TextXAlignment = Enum.TextXAlignment.Left

GaymeId.Name = "GaymeId"
GaymeId.Parent = MatrixFrame
GaymeId.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GaymeId.BackgroundTransparency = 1.000
GaymeId.Position = UDim2.new(0.215144232, 0, 0.229665071, 0)
GaymeId.Size = UDim2.new(0, 351, 0, 39)
GaymeId.Font = Enum.Font.SourceSans
GaymeId.Text = "Game ID: "
GaymeId.TextColor3 = Color3.fromRGB(255, 255, 255)
GaymeId.TextScaled = true
GaymeId.TextSize = 14.000
GaymeId.TextWrapped = true
GaymeId.TextXAlignment = Enum.TextXAlignment.Left

Load.Name = "Load"
Load.Parent = MatrixFrame
Load.BackgroundColor3 = Color3.fromRGB(39, 230, 55)
Load.Position = UDim2.new(0.0709134638, 0, 0.696172237, 0)
Load.Size = UDim2.new(0, 200, 0, 50)
Load.Font = Enum.Font.SourceSansBold
Load.Text = "Load"
Load.TextColor3 = Color3.fromRGB(255, 255, 255)
Load.TextScaled = true
Load.TextSize = 14.000
Load.TextWrapped = true
Load.MouseButton1Click:Connect(
    function()
        loadstring(game:HttpGet("https://github.com/yLuigizinDev/matrixdotpaste/raw/main/main.lua", true))()
        task.wait(.1)
        game.CoreGui.MatrixLoader:Destroy()
    end
)

Close.Name = "Close"
Close.Parent = MatrixFrame
Close.BackgroundColor3 = Color3.fromRGB(39, 230, 55)
Close.Position = UDim2.new(0.580528855, 0, 0.696172237, 0)
Close.Size = UDim2.new(0, 200, 0, 50)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(
    function()
        game.CoreGui.MatrixLoader:Destroy()
    end
)

local function XAWU_fake_script()
	local script = Instance.new('LocalScript', GaymeId)

	local a = script.Parent
	a.Text = "Game ID: "..game.GameId
end
coroutine.wrap(XAWU_fake_script)()
local function VKLNJD_fake_script()
	local script = Instance.new('LocalScript', MatrixLoader)

	local MatrixFrame = script.Parent.MatrixFrame
	
	MatrixFrame.Active = true
	MatrixFrame.Draggable = true
end
coroutine.wrap(VKLNJD_fake_script)()
