-- Bhop Marker

local BH = Instance.new("ScreenGui")

if syn then
    syn.protect_gui(BH)
end

local BHF = Instance.new("Frame")
local TEXT = Instance.new("TextLabel")

BH.Name = "BH"
BH.Parent = game.CoreGui
BH.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BH.ResetOnSpawn = false

BHF.Name = "BHF"
BHF.Parent = BH
BHF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BHF.BackgroundTransparency = 1.000
BHF.Position = UDim2.new(0.00628140708, 0, 0.688854516, -1)
BHF.Size = UDim2.new(0, 100, 0, 100)
BHF.Visible = false

TEXT.Name = "TEXT"
TEXT.Parent = BHF
TEXT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TEXT.BackgroundTransparency = 1.000
TEXT.Position = UDim2.new(-0.00371859269, 0, 0.948854566, -1)
TEXT.Size = UDim2.new(0, 112, 0, 100)
TEXT.Font = Enum.Font.SourceSansBold
TEXT.Text = "BH"
TEXT.TextColor3 = Color3.fromRGB(255, 0, 4)
TEXT.TextScaled = true
TEXT.TextSize = 14.000
TEXT.TextWrapped = true
