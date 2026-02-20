-- Delta Executor Script: Tebak Slapper Suite
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- 1. MEMBUAT GUI UTAMA
local ScreenGui = Instance.new("ScreenGui")
local TrackerFrame = Instance.new("Frame")
local AttackerImg = Instance.new("ImageLabel")
local AttackerName = Instance.new("TextLabel")
local KillButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = player.PlayerGui
ScreenGui.Name = "DeltaSecretSuite"

-- 2. SETUP TRACKER (Melihat siapa yang mukul)
TrackerFrame.Name = "TrackerFrame"
TrackerFrame.Parent = ScreenGui
TrackerFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TrackerFrame.Position = UDim2.new(0.5, -100, 0.05, 0)
TrackerFrame.Size = UDim2.new(0, 200, 0, 70)
TrackerFrame.Visible = false -- Hanya muncul saat dipukul
TrackerFrame.Active = true

AttackerImg.Parent = TrackerFrame
AttackerImg.Size = UDim2.new(0, 50, 0, 50)
AttackerImg.Position = UDim2.new(0, 10, 0.5, -25)
AttackerImg.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

AttackerName.Parent = TrackerFrame
AttackerName.Position = UDim2.new(0, 70, 0, 10)
AttackerName.Size = UDim2.new(0, 120, 0, 50)
AttackerName.BackgroundTransparency = 1
AttackerName.Text = "Unknown"
AttackerName.TextColor3 = Color3.new(1, 1, 1)
AttackerName.TextScaled = true

-- Fungsi Logika Tracker
local function trackAttacker()
    local hum = character:WaitForChild("Humanoid")
    hum.HealthChanged:Connect(function()
        local tag = hum:FindFirstChild("creator")
        if tag and tag.Value then
            local p = tag.Value
            AttackerImg.Image = "rbxthumb://type=AvatarHeadShot&id="..p.UserId.."&w=150&h=150"
            AttackerName.Text = "Mukul kamu:\n" .. p.Name
            TrackerFrame.Visible = true
            task.wait(4)
            TrackerFrame.Visible = false
        end
    end)
end
task.spawn(trackAttacker)

-- 3. SETUP KILL BUTTON (Mukul Langsung Meninggal)
KillButton.Name = "KillButton"
KillButton.Parent = ScreenGui
KillButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
KillButton.Position = UDim2.new(0.85, 0, 0.4, 0)
KillButton.Size = UDim2.new(0, 80, 0, 80)
KillButton.Text = "KİLL"
KillButton.TextColor3 = Color3.new(1, 1, 1)
KillButton.TextScaled = true

local corner = Instance.new("UICorner", KillButton)
corner.CornerRadius = Tool.new(0, 50) -- Membuat tombol bulat

local isKilling = false
KillButton.MouseButton1Click:Connect(function()
    isKilling = not isKilling
    if isKilling then
        KillButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        KillButton.Text = "ON"
    else
        KillButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        KillButton.Text = "KİLL"
    end
end)

-- Loop Pukulan Super Cepat (Insta-Kill)
game:GetService("RunService").RenderStepped:Connect(function()
    if isKilling then
        local tool = player.Character:FindFirstChildOfClass("Tool")
        if tool then
            -- Memukul berkali-kali dalam 1 detik agar musuh instan mati
            for i = 1, 10 do 
                tool:Activate()
            end
        end
    end
end)

-- Notifikasi Delta
game.StarterGui:SetCore("SendNotification", {
    Title = "Delta Suite Active",
    Text = "Tracker & Insta-Kill Ready!",
    Duration = 5
})
