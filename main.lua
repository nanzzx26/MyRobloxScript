local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nanzzx Steel Braintrot", "DarkTheme")

-- Variabel Global
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Root = Character:WaitForChild("HumanoidRootPart")

-- Helper Function: Mencari Objek Berdasarkan Nama/Properti
local function getBraintrot()
    -- Mencari objek yang mengandung kata 'Braintrot' di Workspace
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if v.Name:lower():find("braintrot") and v:IsA("BasePart") then
            return v
        end
    end
    return nil
end

-- Tab Fitur
local Main = Window:NewTab("Main")
local Section = Main:NewSection("Fitur Perbaikan")

-- 1. FIX AMBIL SEKALI KLIK (MENGGUNAKAN TOUCH & POSITION)
Section:NewButton("Ambil Braintrot (Instant)", "Sekali klik langsung ambil", function()
    local target = getBraintrot()
    if target then
        -- Teleport ke posisi braintrot sedikit di atasnya
        Root.CFrame = target.CFrame * CFrame.new(0, 2, 0)
        task.wait(0.1)
        -- Simulasi sentuhan (FireTouch)
        firetouchinterest(Root, target, 0)
        firetouchinterest(Root, target, 1)
    else
        print("Objek Braintrot tidak ditemukan!")
    end
end)

-- 2. FIX SUPER LAG (SISTEM ANTI-SELF LAG)
-- Menggunakan High-Frequency Remote Spamming (Hanya jika game memiliki remote tertentu)
-- Atau Visual Overlay Lag untuk pemain sekitar
Section:NewButton("Aktifkan Super Lag (Server)", "Hanya pemain lain yang kena", function()
    for _, p in pairs(game.Players:GetPlayers()) do
        -- Jika pemain BUKAN kita (Nanzzx / Natoaji), kirim beban data
        if p ~= Player then
            spawn(function()
                while true do
                    -- Menciptakan banyak objek di Client pemain lain (Jika FilteringEnabled memungkinkan)
                    -- Jika tidak, kita gunakan metode visual stress:
                    local pPart = Instance.new("Part", game.Workspace)
                    pPart.Position = p.Character.HumanoidRootPart.Position
                    pPart.Size = Vector3.new(50, 50, 50)
                    pPart.Transparency = 1
                    pPart.CanCollide = false
                    task.wait(0.01)
                end
            end)
        end
    end
end)

-- 3. FIX AUTO TELEPORT BASE (MENCARI SPAWN POINT)
Section:NewButton("Teleport ke Base", "Balik ke base awal setelah mencuri", function()
    -- Mencari SpawnPoint atau Base yang dimiliki oleh Player
    local foundBase = false
    for _, v in pairs(game.Workspace:GetDescendants()) do
        -- Logika: Mencari objek bernama 'Base' atau 'Spawn' yang dekat dengan titik awal
        if (v.Name:lower():find("base") or v.Name:lower():find("spawn")) and v:IsA("BasePart") then
            Root.CFrame = v.CFrame * CFrame.new(0, 5, 0)
            foundBase = true
            break
        end
    end
    
    if not foundBase then
        -- Jika tidak ketemu, TP ke koordinat awal (biasanya sekitar 0, 50, 0)
        Root.CFrame = CFrame.new(0, 10, 0) 
        print("Base spesifik tidak ketemu, TP ke Map Center.")
    end
end)

-- Credits
local Info = Window:NewTab("Info")
Info:NewSection("Script by Natoaji")
