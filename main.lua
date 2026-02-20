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

-- Variabel Fitur
local GodModeEnabled = false

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
MainFrame.Size = UDim2.new(0, 300, 0, 200)
MainFrame.Visible = false 
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

-- Border Biru & Merah
local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Thickness = 3
local Gradient = Instance.new("UIGradient", Stroke)
Gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
}

-- Tombol Silang (X)
CloseBtn.Parent = MainFrame
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(0.88, 0, 0.05, 0)
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 0, 0)
CloseBtn.TextSize = 22
CloseBtn.Font = Enum.Font.GothamBold

-- Judul
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 10)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "NANZZX KEY SYSTEM"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold

-- UI KHUSUS LOGIN (Grup)
local LoginGroup = Instance.new("Frame", MainFrame)
LoginGroup.BackgroundTransparency = 1
LoginGroup.Size = UDim2.new(1, 0, 1, 0)

KeyInput.Parent = LoginGroup
KeyInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyInput.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 35)
KeyInput.PlaceholderText = "Input Key Here..."
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)

LoginBtn.Parent = LoginGroup
LoginBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
LoginBtn.Position = UDim2.new(0.35, 0, 0.55, 0)
LoginBtn.Size = UDim2.new(0.3, 0, 0, 25)
LoginBtn.Text = "LOGIN"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginBtn.Font = Enum.Font.GothamBold
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

-- UI KHUSUS FITUR (Grup - Muncul Setelah Login)
local FeatureGroup = Instance.new("Frame", MainFrame)
FeatureGroup.BackgroundTransparency = 1
FeatureGroup.Size = UDim2.new(1, 0, 1, 0)
FeatureGroup.Visible = false

local GodModeBtn = Instance.new("TextButton", FeatureGroup)
GodModeBtn.Size = UDim2.new(0.6, 0, 0, 40)
GodModeBtn.Position = UDim2.new(0.2, 0, 0.4, 0)
GodModeBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- Default Merah
GodModeBtn.Text = "Kebal: TIDAK AKTIF"
GodModeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GodModeBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", GodModeBtn).CornerRadius = UDim.new(0, 10)

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
ScrollingText.TextSize = 14
ScrollingText.Font = Enum.Font.GothamSemibold

--- LOGIC UTAMA ---

LogoBtn.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)
CloseBtn.MouseButton1Click:Connect(function() MainFrame.Visible = false end)

-- Teks Jalan RGB
spawn(function()
    while task.wait(0.01) do
        local pos = ScrollingText.Position.X.Scale - 0.005
        if pos < -1.2 then pos = 1 end
        ScrollingText.Position = UDim2.new(pos, 0, 0, 0)
        ScrollingText.TextColor3 = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    end
end)

-- Login Function
LoginBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == "261109" then
        Title.Text = "NANZZX MENU"
        LoginGroup.Visible = false
        FeatureGroup.Visible = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/nanzzx26/MyRobloxScript/refs/heads/main/main.lua"))()
    else
        LoginBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        LoginBtn.Text = "WRONG!"
        task.wait(1)
        LoginBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        LoginBtn.Text = "LOGIN"
    end
end)

-- SISTEM KEBAL TSUNAMI (GOD MODE)
spawn(function()
    while task.wait() do
        if GodModeEnabled then
            local char = game.Players.LocalPlayer.Character
            if char then
                -- Membuat karakter tidak bisa disentuh tsunami (NoClip/Forcefield)
                if not char:FindFirstChildOfClass("ForceField") then
                    Instance.new("ForceField", char).Visible = false
                end
                for _, part in pairs(char:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanTouch = false -- Tsunami tidak akan memberikan damage
                    end
                end
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then 
                    hum.Health = hum.MaxHealth 
                end
            end
        else
            -- Matikan efek kebal
            local char = game.Players.LocalPlayer.Character
            if char then
                if char:FindFirstChildOfClass("ForceField") then
                    char:FindFirstChildOfClass("ForceField"):Destroy()
                end
                for _, part in pairs(char:GetChildren()) do
                    if part:IsA("BasePart") then part.CanTouch = true end
                end
            end
        end
    end
end)

-- Toggle Button Kebal
GodModeBtn.MouseButton1Click:Connect(function()
    GodModeEnabled = not GodModeEnabled
    if GodModeEnabled then
        GodModeBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0) -- Hijau
        GodModeBtn.Text = "Kebal: AKTIF"
    else
        GodModeBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0) -- Merah
        GodModeBtn.Text = "Kebal: TIDAK AKTIF"
    end
end)

-- Copy Links
DiscordBtn.MouseButton1Click:Connect(function() setclipboard("https://discord.gg/nanzzx") end)
KeyLinkBtn.MouseButton1Click:Connect(function() setclipboard("https://link-key.com") end)
