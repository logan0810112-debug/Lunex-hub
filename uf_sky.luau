local L = game:GetService("Lighting")
L:ClearAllChildren()

-- Core lighting (Ultimate Football–style)
L.ClockTime = 18.95
L.Brightness = 2.5
L.ExposureCompensation = 0
L.GlobalShadows = true
L.ShadowSoftness = 0.6
L.Ambient = Color3.fromRGB(80, 80, 80)
L.OutdoorAmbient = Color3.fromRGB(130, 130, 130)

-- Red sky
local S = Instance.new("Sky")
S.SkyboxBk = "rbxassetid://8156175446"
S.SkyboxDn = "rbxassetid://8156175446"
S.SkyboxFt = "rbxassetid://8156175446"
S.SkyboxLf = "rbxassetid://8156175446"
S.SkyboxRt = "rbxassetid://8156175446"
S.SkyboxUp = "rbxassetid://8156175446"
S.SunAngularSize = 12
S.Parent = L

-- Atmosphere (main red fade)
local A = Instance.new("Atmosphere")
A.Density = 0.34
A.Offset = 0.12
A.Color = Color3.fromRGB(255, 95, 80)
A.Decay = Color3.fromRGB(255, 155, 130)
A.Glare = 0.14
A.Haze = 2.2
A.Parent = L

-- Protection so ground/players stay normal
local C = Instance.new("ColorCorrectionEffect")
C.Brightness = 0
C.Contrast = 0.22
C.Saturation = -0.08
C.TintColor = Color3.fromRGB(255, 240, 235)
C.Parent = L

-- Stadium light glow
local B = Instance.new("BloomEffect")
B.Intensity = 0.4
B.Size = 24
B.Threshold = 1.1
B.Parent = L
