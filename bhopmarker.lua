local BH = Instance.new("ScreenGui")
local BHF = Instance.new("Frame")
local TEXT = Instance.new("TextLabel")

BH.Name = "BH"
BH.Parent = game.CoreGui
BH.ZIndexBehavior = Enum.ZIndexBehavior.Global
BH.ZIndexBehavior = 1111111111111111111111111111111111111111

BHF.Name = "BHF"
BHF.Parent = BH
BHF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BHF.BackgroundTransparency = 1.000
BHF.Position = UDim2.new(0.00628140708, 0, 0.688854516, 0)
BHF.Size = UDim2.new(0, 112, 0, 100)
BHF.Visible = false

TEXT.Name = "TEXT"
TEXT.Parent = BHF
TEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TEXT.BackgroundTransparency = 1.000
TEXT.Position = UDim2.new(0, 0, -0.100000001, 0)
TEXT.Size = UDim2.new(0, 153, 0, 99)
TEXT.Font = Enum.Font.SourceSansBold
TEXT.Text = "BH"
TEXT.TextColor3 = Color3.fromRGB(255, 0, 4)
TEXT.TextScaled = true
TEXT.TextSize = 14.000
TEXT.TextWrapped = true
