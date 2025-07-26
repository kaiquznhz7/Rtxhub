local Lighting = game:GetService("Lighting")
for _, v in pairs(Lighting:GetChildren()) do
    if v:IsA("PostEffect") then v:Destroy() end
end
Lighting.TimeOfDay = "14:00:00"
Lighting.Brightness = 2
Lighting.GlobalShadows = true
Lighting.OutdoorAmbient = Color3.fromRGB(127, 127, 127)
Lighting.EnvironmentDiffuseScale = 1
Lighting.EnvironmentSpecularScale = 1
Lighting.ShadowSoftness = 0.2

local Atmosphere = Instance.new("Atmosphere", Lighting)
Atmosphere.Density = 0.35
Atmosphere.Offset = 0.25
Atmosphere.Glare = 2
Atmosphere.Haze = 1.2

local Bloom = Instance.new("BloomEffect", Lighting)
Bloom.Intensity = 3
Bloom.Threshold = 1
Bloom.Size = 24

local ColorCorrection = Instance.new("ColorCorrectionEffect", Lighting)
ColorCorrection.Brightness = 0.15
ColorCorrection.Contrast = 0.25
ColorCorrection.Saturation = 0.25
ColorCorrection.TintColor = Color3.fromRGB(255, 245, 235)

local SunRays = Instance.new("SunRaysEffect", Lighting)
SunRays.Intensity = 0.2
SunRays.Spread = 1

local DepthOfField = Instance.new("DepthOfFieldEffect", Lighting)
DepthOfField.FarIntensity = 0.1
DepthOfField.FocusDistance = 50
DepthOfField.InFocusRadius = 50
DepthOfField.NearIntensity = 0.75

local sky = Instance.new("Sky", Lighting)
sky.SkyboxBk = "rbxassetid://159454299"
sky.SkyboxDn = "rbxassetid://159454296"
sky.SkyboxFt = "rbxassetid://159454293"
sky.SkyboxLf = "rbxassetid://159454286"
sky.SkyboxRt = "rbxassetid://159454300"
sky.SkyboxUp = "rbxassetid://159454288"
sky.MoonAngularSize = 14
sky.SunAngularSize = 21
sky.StarCount = 3000

workspace.Terrain.WaterWaveSize = 0.15
workspace.Terrain.WaterReflectance = 1
workspace.Terrain.WaterTransparency = 0.4
workspace.Terrain.WaterColor = Color3.fromRGB(0, 100, 255)
