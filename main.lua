local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nothe Hub", "DarkTheme")

-- Sekmeler
local Tab1 = Window:NewTab("Oyun Scriptleri")
local Section1 = Tab1:NewSection("Popüler Oyunlar")

local Tab2 = Window:NewTab("Ayarlar")
local Section2 = Tab2:NewSection("Menü Kontrolü")

-- Oyun Butonları
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

-- AÇ/KAPAT (TOGGLE) BUTONU
-- Bu buton menüyü silmez, sadece görünmez yapar.
Section2:NewKeybind("Menü Kapat/Aç (Keybind)", "Seçtiğin tuşla menüyü gizler", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

Section2:NewButton("Menüyü Gizle", "Menüyü ekranından saklar", function()
    Library:ToggleUI()
end)

-- Hız Ayarı
Section2:NewSlider("Hız (WalkSpeed)", "Hızını Ayarlar", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
