local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local blackScreenGui = Instance.new("ScreenGui")
blackScreenGui.Name = "BlackScreenOverlay"
blackScreenGui.ResetOnSpawn = false
blackScreenGui.IgnoreGuiInset = true
blackScreenGui.Parent = PlayerGui

local blackFrame = Instance.new("Frame")
blackFrame.Name = "BlackOverlayFrame"
blackFrame.Size = UDim2.new(1, 0, 1, 0)
blackFrame.Position = UDim2.new(0, 0, 0, 0)
blackFrame.BackgroundColor3 = Color3.new(0, 0, 0)
blackFrame.BackgroundTransparency = 0
blackFrame.ZIndex = 100
blackFrame.Visible = false
blackFrame.Parent = blackScreenGui

local function BlackScreen()
	blackFrame.Visible = not blackFrame.Visible
end


RunService:Set3dRenderingEnabled(true)

local targetGui = CoreGui:FindFirstChild("ScreenGui")
if targetGui then
	targetGui:Destroy()
end

local topRightHud = PlayerGui:FindFirstChild("TopRightHud")
if topRightHud then
	topRightHud:Destroy()
end


BlackScreen()

wait(0.2)

getgenv().Configs = {
    ["Auto ATM"] = false,
    ["Black Screen"] = true,
    ["Rejoin When Bug"] = false,
    ["Fps Cap"] = 12,
    ["Car Speed"] = 45
}
