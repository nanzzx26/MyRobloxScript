local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local LoginBtn = Instance.new("TextButton")
local DiscordBtn = Instance.new("TextButton")
local KeyLinkBtn = Instance.new("TextButton")
local ScrollingText = Instance.new("TextLabel")

-- Parent ke PlayerGui
ScreenGui.Parent = game.CoreGui

-- Main Frame (Transparan Abu-abu)
MainFrame.Name = "NanzzxKeySystem"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BackgroundTransparency = 0.4
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
MainFrame.Size = UDim2.new(0, 300, 0, 200)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 15) -- Lengkungan sudut
UICorner.Parent = MainFrame

-- Border Biru-Merah
UIStroke.Thickness = 3
UIStroke.Parent = MainFrame
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)), -- Merah
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))  -- Biru
}
UIGradient.Parent = UIStroke

-- Judul
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 10)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "NANZZX KEY SYSTEM"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold

-- Input Key
KeyInput.Parent = MainFrame
KeyInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
KeyInput.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 35)
KeyInput.PlaceholderText = "Input Key Here..."
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Button Login
LoginBtn.Parent = MainFrame
LoginBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
LoginBtn.Position = UDim2.new(0.1, 0, 0.55, 0)
LoginBtn.Size = UDim2.new(0.8, 0, 0, 30)
LoginBtn.Text = "LOGIN"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Button Discord & Link
DiscordBtn.Parent = MainFrame
DiscordBtn.Size = UDim2.new(0.35, 0, 0, 25)
DiscordBtn.Position = UDim2.new(0.1, 0, 0.75, 0)
DiscordBtn.Text = "Discord"
DiscordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)

KeyLinkBtn.Parent = MainFrame
KeyLinkBtn.Size = UDim2.new(0.35, 0, 0, 25)
KeyLinkBtn.Position = UDim2.new(0.55, 0, 0.75, 0)
KeyLinkBtn.Text = "Get Key"
KeyLinkBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

-- Teks Bergerak (Marquee) RGB
ScrollingText.Parent = MainFrame
ScrollingText.BackgroundTransparency = 1
ScrollingText.Position = UDim2.new(1, 0, 0.9, 0)
ScrollingText.Size = UDim2.new(1, 0, 0, 20)
ScrollingText.Text = "Buy Script key At Nanzzx"
ScrollingText.TextSize = 14
ScrollingText.Font = Enum.Font.GothamSemibold

-- LOGIC --

-- Fungsi Marquee & RGB
spawn(function()
    local pos = 1
    while task.wait() do
        -- Gerak ke kiri lalu muncul lagi dari kanan
        pos = pos - 0.005
        if pos < -1 then pos = 1 end
        ScrollingText.Position = UDim2.new(pos, 0, 0.9, 0)
        
        -- Efek RGB
        local hue = tick() % 5 / 5
        ScrollingText.TextColor3 = Color3.fromHSV(hue, 1, 1)
    end
end)

-- Login Cek
LoginBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == "261109" then
        print("Login Sukses!")
        ScreenGui:Destroy()
        -- TARUH SCRIPT TELEPORT KAMU DI BAWAH SINI --
    else
        LoginBtn.Text = "WRONG KEY!"
        task.wait(2)
        LoginBtn.Text = "LOGIN"
    end
end)

-- Discord Link
DiscordBtn.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/link_kamu") -- Ganti linknya
    DiscordBtn.Text = "Copied!"
    task.wait(2)
    DiscordBtn.Text = "Discord"
end)
