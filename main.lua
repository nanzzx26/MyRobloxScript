local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Natoaji Hub - Steal Braintrot", "DarkTheme")

-- Variabel Utama
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local RootPart = Character:WaitForChild("HumanoidRootPart")

-- Tab Utama
local Main = Window:NewTab("Main Features")
local MainSection = Main:NewSection("Braintrot Stealer")

-- 1. FITUR AMBIL BRAINTROT (INSTANT)
MainSection:NewButton("Ambil Braintrot (Instant)", "Mengambil braintrot terdekat sekali klik", function()
    local braintrot = game.Workspace:FindFirstChild("Braintrot") -- Sesuaikan nama objek di game
    if braintrot then
        RootPart.CFrame = braintrot.CFrame
        firetouchinterest(RootPart, braintrot, 0)
        wait(0.1)
        firetouchinterest(RootPart, braintrot, 1)
    else
        print("Braintrot tidak ditemukan!")
    end
end)

-- 2. FITUR SUPER LAG (SERVER)
-- Catatan: Ini menciptakan objek dalam jumlah banyak untuk membuat FPS drop bagi user lain
MainSection:NewButton("Aktifkan Super Lag", "Membuat server lag (Hanya orang lain)", function()
    for i = 1, 500 do
        local p = Instance.new("Part")
        p.Size = Vector3.new(10, 10, 10)
        p.Position = RootPart.Position + Vector3.new(0, 50, 0)
        p.Parent = game.Workspace
        p.Transparency = 1
        p.CanCollide = false
        -- Menghapus part setelah beberapa detik agar kita sendiri tidak crash
        game:GetService("Debris"):AddItem(p, 5) 
    end
end)

-- 3. AUTO TELEPORT BASE + BAWA HASIL
MainSection:NewButton("Teleport ke Base", "Kembali ke base dengan hasil curian", function()
    -- Ganti "BasePartName" dengan nama objek Base milikmu di game tersebut
    local myBase = game.Workspace:FindFirstChild(Player.Name .. "Base") or game.Workspace:FindFirstChild("Base")
    
    if myBase then
        RootPart.CFrame = myBase.CFrame + Vector3.new(0, 3, 0)
    else
        print("Base tidak ditemukan! Pastikan nama base sesuai.")
    end
end)

-- Tab Credit
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Created by Natoaji")
