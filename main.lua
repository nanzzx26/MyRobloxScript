local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Fungsi untuk mendeteksi siapa yang memukul
humanoid.HealthChanged:Connect(function(health)
    -- Mencari tag 'creator' yang ditinggalkan oleh penyerang
    local creatorTag = humanoid:FindFirstChild("creator")
    
    if creatorTag and creatorTag.Value then
        local attackerName = creatorTag.Value.Name
        
        -- Menampilkan di Chat (Hanya kamu yang bisa lihat)
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "[SISTEM] Kamu baru saja dipukul oleh: " .. attackerName;
            Color = Color3.fromRGB(255, 0, 0); -- Warna Merah
            Font = Enum.Font.SourceSansBold;
        })

        -- Menampilkan Notifikasi Pop-up di pojok layar
        game.StarterGui:SetCore("SendNotification", {
            Title = "Terdeteksi Pemukul!";
            Text = "Pemain: " .. attackerName;
            Duration = 5;
        })
    end
end)

print("Script Deteksi Pemukul Aktif!")
