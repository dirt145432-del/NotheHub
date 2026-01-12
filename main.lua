local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nothe Hub", "DarkTheme")

-- Sekmeler
local Tab1 = Window:NewTab("Oyun Scriptleri")
local Section1 = Tab1:NewSection("Hızlı Yükle")

local Tab2 = Window:NewTab("Ayarlar")
local Section2 = Tab2:NewSection("Karakter Ayarları")

-- Brookhaven & Chaos Hub (Güncel Link)
Section1:NewButton("Chaos Hub (Brookhaven)", "Yüklenmesi 5-10 saniye sürebilir", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Doom_H/Chaos-Hub/main/source'))()
end)

-- Chilli Hub (Yedek Link)
Section1:NewButton("Chilli Hub", "Chilli Hub Scriptini Yukler", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChilliHacks/ChilliHub/main/Source"))()
end)

-- Blox Fruits (Alternatif Link)
Section1:NewButton("Redz Hub (Blox Fruits)", "Auto Farm", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDZHUB/BloxFruits/main/redz7.lua"))()
end)

-- Karakter Ayarları (Menü içi olduğu için her zaman çalışır)
Section2:NewSlider("Hız (WalkSpeed)", "Hız Ayarı", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewSlider("Zıplama (JumpPower)", "Zıplama Ayarı", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section2:NewButton("Menüyü Gizle", "Menüyü Saklar", function()
    Library:ToggleUI()
end)
