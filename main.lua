local CorrectKey = "GeminiAndNotheHub" -- Yeni anahtarın bu oldu!
local UserInput = ""

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- GİRİŞ EKRANI
local AuthWindow = Library.CreateLib("Nothe Hub - Giriş Sistemi", "DarkTheme")
local AuthTab = AuthWindow:NewTab("Giriş")
local AuthSection = AuthTab:NewSection("Lütfen Anahtarı Giriniz")

AuthSection:NewTextBox("Anahtar:", "Anahtarı yazın ve enterlayın", function(text)
    UserInput = text
end)

AuthSection:NewButton("Kontrol Et", "Anahtarı doğrular ve menüyü açar", function()
    if UserInput == CorrectKey then
        game:GetService("CoreGui"):FindFirstChild("Nothe Hub - Giriş Sistemi"):Destroy()
        
        -- ASIL HİLE MENÜSÜ
        local Window = Library.CreateLib("Nothe Hub", "DarkTheme")
        local Tab1 = Window:NewTab("Oyun Scriptleri")
        local Section1 = Tab1:NewSection("Popüler Oyunlar")
        local Tab2 = Window:NewTab("Ayarlar")
        local Section2 = Tab2:NewSection("Menü Kontrolü")

        -- Oyun Butonların
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

        -- Ayarlar ve Kapatma
        Section2:NewButton("Menüyü Gizle", "Menüyü ekranından saklar", function()
            Library:ToggleUI()
        end)
        Section2:NewSlider("Hız (WalkSpeed)", "Hızını Ayarlar", 500, 16, function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end)
    else
        print("Hatalı Anahtar!")
    end
end)
