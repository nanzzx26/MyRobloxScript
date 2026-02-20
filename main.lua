local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIGradient = Instance.new("UIGradient")
local Title = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local LoginBtn = Instance.new("TextButton")
local DiscordBtn = Instance.new("TextButton")
local KeyLinkBtn = Instance.new("TextButton")
local CloseBtn = Instance.new("TextButton")
local LogoBtn = Instance.new("ImageButton") 
local FooterFrame = Instance.new("Frame")
local ScrollingText = Instance.new("TextLabel")

-- File System untuk Save Key
local fileName = "NanzzxKey_Save.txt"
local function saveKey() writefile(fileName, "261109") end
local function loadKey() if isfile(fileName) then return readfile(fileName) end return nil end

-- Parent
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

-- 1. Tombol Logo
LogoBtn.Name = "NanzzxLogo"
LogoBtn.Parent = ScreenGui
LogoBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LogoBtn.Position = UDim2.new(0, 50, 0, 50) 
LogoBtn.Size = UDim2.new(0, 55, 0, 55)
LogoBtn.Image = "rbxassetid://131843805021348" 
LogoBtn.Active = true
LogoBtn.Draggable = true 
Instance.new("UICorner", LogoBtn).CornerRadius = UDim.new(0, 12)

-- 2. Main Frame
MainFrame.Name = "NanzzxMenu"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BackgroundTransparency = 0.4
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
MainFrame.Size = UDim2.new(0, 300, 0, 220)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Thickness = 3
local Gradient = Instance.new("UIGradient", Stroke)
Gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
}

-- Tombol Silang
CloseBtn.Parent = MainFrame
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(0.88, 0, 0.05, 0)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 0, 0)
CloseBtn.TextSize = 22
CloseBtn.Font = Enum.Font.GothamBold

Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 10)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "NANZZX KEY SYSTEM"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold

-- UI LOGIN GROUP
local LoginGroup = Instance.new("Frame", MainFrame)
LoginGroup.BackgroundTransparency = 1
LoginGroup.Size = UDim2.new(1, 0, 1, 0)

KeyInput.Parent = LoginGroup
KeyInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyInput.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 35)
KeyInput.PlaceholderText = "Input Key Here..."
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)

LoginBtn.Parent = LoginGroup
LoginBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
LoginBtn.Position = UDim2.new(0.35, 0, 0.55, 0)
LoginBtn.Size = UDim2.new(0.3, 0, 0, 25)
LoginBtn.Text = "LOGIN"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", LoginBtn).CornerRadius = UDim.new(0, 8)

DiscordBtn.Parent = LoginGroup
DiscordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordBtn.Position = UDim2.new(0.1, 0, 0.75, 0)
DiscordBtn.Size = UDim2.new(0.35, 0, 0, 25)
DiscordBtn.Text = "Discord"
DiscordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", DiscordBtn).CornerRadius = UDim.new(0, 8)

KeyLinkBtn.Parent = LoginGroup
KeyLinkBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
KeyLinkBtn.Position = UDim2.new(0.55, 0, 0.75, 0)
KeyLinkBtn.Size = UDim2.new(0.35, 0, 0, 25)
KeyLinkBtn.Text = "Get Key"
KeyLinkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", KeyLinkBtn).CornerRadius = UDim.new(0, 8)

-- UI AUTO TELEPORT GROUP
local TeleGroup = Instance.new("ScrollingFrame", MainFrame)
TeleGroup.BackgroundTransparency = 1
TeleGroup.Position = UDim2.new(0.05, 0, 0.25, 0)
TeleGroup.Size = UDim2.new(0.9, 0, 0.6, 0)
TeleGroup.CanvasSize = UDim2.new(0, 0, 1.2, 0)
TeleGroup.ScrollBarThickness = 2
TeleGroup.Visible = false

local UIListLayout = Instance.new("UIListLayout", TeleGroup)
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- Footer
FooterFrame.Parent = MainFrame
FooterFrame.BackgroundTransparency = 1
FooterFrame.ClipsDescendants = true
FooterFrame.Position = UDim2.new(0, 10, 0.9, 0)
FooterFrame.Size = UDim2.new(0, 280, 0, 20)

ScrollingText.Parent = FooterFrame
ScrollingText.BackgroundTransparency = 1
ScrollingText.Position = UDim2.new(1, 0, 0, 0)
ScrollingText.Size = UDim2.new(1, 0, 1, 0)
ScrollingText.Text = "Buy Script key At Nanzzx"
ScrollingText.TextColor3 = Color3.fromRGB(255, 255, 255)
ScrollingText.TextSize = 14
ScrollingText.Font = Enum.Font.GothamSemibold

--- LOGIC ---

local function startTeleport(targetName)
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local root = char:WaitForChild("HumanoidRootPart")
    
    spawn(function()
        while task.wait() do
            for _, obj in pairs(game.Workspace:GetDescendants()) do
                if obj.Name == targetName and obj:IsA("BasePart") then
                    local tween = game:GetService("TweenService"):Create(root, TweenInfo.new(2, Enum.EasingStyle.Linear), {CFrame = obj.CFrame})
                    tween:Play()
                    tween.Completed:Wait()
                end
            end
        end
    end)
end

local function showTeleportMenu()
    Title.Text = "NANZZX AUTO FARM"
    LoginGroup.Visible = false
    TeleGroup.Visible = true
    
    local items = {"La Vacca Saturno", "Saturnita (secret)", "Karkerkar", "Kurkur (secret)"}
    for _, name in pairs(items) do
        local btn = Instance.new("TextButton", TeleGroup)
        btn.Size = UDim2.new(0.9, 0, 0, 30)
        btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        btn.Text = "Farm: " .. name
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)
        
        btn.MouseButton1Click:Connect(function()
            btn.Text = "Farming..."
            btn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
            startTeleport(name)
        end)
    end
end

-- Check Auto-Login
if loadKey() == "261109" then
    showTeleportMenu()
end

LoginBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == "261109" then
        saveKey()
        showTeleportMenu()
    else
        LoginBtn.Text = "WRONG!"
        task.wait(1)
        LoginBtn.Text = "LOGIN"
    end
end)

LogoBtn.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)
CloseBtn.MouseButton1Click:Connect(function() MainFrame.Visible = false end)

spawn(function()
    while task.wait(0.01) do
        local pos = ScrollingText.Position.X.Scale - 0.005
        if pos < -1.2 then pos = 1 end
        ScrollingText.Position = UDim2.new(pos, 0, 0, 0)
        ScrollingText.TextColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    end
end)
