local CorrectKey = "GeminiAndNotheHub"
local UserInput = ""

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- GİRİŞ EKRANI
local AuthWindow = Library.CreateLib("Nothe Hub - Giriş Sistemi", "DarkTheme")
local AuthTab = AuthWindow:NewTab("Anahtar")
local AuthSection = AuthTab:NewSection("Lütfen Anahtarı Giriniz")

AuthSection:NewTextBox("Anahtarı Yaz:", "Yazdıktan sonra Enter'a basın", function(text)
    UserInput = text
end)

AuthSection:NewButton("Kontrol Et", "Girişi Doğrula", function()
    -- Boşlukları temizleyerek kontrol et (Daha güvenli)
    if UserInput == CorrectKey or UserInput:gsub("%s+", "") == CorrectKey then
        game:GetService("CoreGui"):FindFirstChild("Nothe Hub - Giriş Sistemi"):Destroy()
        
        -- ASIL HİLE MENÜSÜ
        local Window = Library.CreateLib("Nothe Hub", "DarkTheme")
        local Tab1 = Window:NewTab("Oyun Scriptleri")
        local Section1 = Tab1:NewSection("Popüler Oyunlar")
        local Tab2 = Window:NewTab("Ayarlar")
        local Section2 = Tab2:NewSection("Menü Kontrolü")

        Section1:NewButton("Steal A Brainrot (Chilli)", "Chilli Hub Yukler", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ChilliHacks/ChilliHub/main/Source"))()
        end)
        Section1:NewButton("Vynixu (MM2)", "Esp ve Sheriff Aim", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Vynixu/VynixuLib/main/MM2/Source.lua"))()
        end)
        Section1:NewButton("Redz Hub (Blox Fruits)", "Auto Farm", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/REDZHUB/BloxFruits/main/redz7.lua"))()
        end)
        Section1:NewButton("Chaos Hub (Brookhaven)", "Brookhaven hilesi", function()
            loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Chaos-Hub-31051"))()
        end)

        Section2:NewButton("Menüyü Gizle", "Menüyü saklar", function()
            Library:ToggleUI()
        end)
        Section2:NewSlider("Hız (WalkSpeed)", "Hız Ayarı", 500, 16, function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end)
    else
        Library:Notify("HATA!", "Yanlış anahtar! Lütfen tekrar deneyin.", 5)
    end
end)

AuthSection:NewButton("Anahtarı Kopyala (Key Al)", "Kopyalar", function()
    setclipboard(CorrectKey)
    Library:Notify("KOPYALANDI!", "Anahtar panoya alındı.", 5)
end)
