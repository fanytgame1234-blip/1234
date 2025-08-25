-- UI thông báo nhỏ hỏi fan_game có đẹp trai không? :)
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local player = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ButtonYes = Instance.new("TextButton")
local ButtonNo = Instance.new("TextButton")

ScreenGui.Parent = player:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(35,35,35)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.Active = true
Frame.Draggable = true
Frame.BorderSizePixel = 0
Frame.BackgroundTransparency = 0.1

TextLabel.Parent = Frame
TextLabel.Size = UDim2.new(1, 0, 0.5, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "fan_game có đẹp trai không?"
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextSize = 20
TextLabel.TextColor3 = Color3.fromRGB(255,255,255)

ButtonYes.Parent = Frame
ButtonYes.Size = UDim2.new(0.5, -10, 0.3, 0)
ButtonYes.Position = UDim2.new(0, 5, 0.6, 0)
ButtonYes.Text = "Có"
ButtonYes.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
ButtonYes.TextColor3 = Color3.new(1,1,1)
ButtonYes.Font = Enum.Font.SourceSansBold
ButtonYes.TextSize = 18

ButtonNo.Parent = Frame
ButtonNo.Size = UDim2.new(0.5, -10, 0.3, 0)
ButtonNo.Position = UDim2.new(0.5, 5, 0.6, 0)
ButtonNo.Text = "Không"
ButtonNo.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
ButtonNo.TextColor3 = Color3.new(1,1,1)
ButtonNo.Font = Enum.Font.SourceSansBold
ButtonNo.TextSize = 18

-- Xử lý sự kiện nút
ButtonYes.MouseButton1Click:Connect(function()
    Frame:Destroy()
    StarterGui:SetCore("SendNotification", {
        Title = "Câu trả lời",
        Text = "✅ Chuẩn rồi",
        Duration = 5
    })
end)

ButtonNo.MouseButton1Click:Connect(function()
    player:Kick("😡😡😡❌")
end)