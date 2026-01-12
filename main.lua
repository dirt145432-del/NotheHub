local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nothe Hub", "DarkTheme")

-- Sekmeler
local Tab1 = Window:NewTab("Script Listesi")
local Section1 = Tab1:NewSection("Brookhaven & Genel")

local Tab2 = Window:NewTab("Oyuncu")
local Section2 = Tab2:NewSection("Karakter Ayarları")

-- Chaos Hub Butonu
Section1:NewButton("Chaos Hub (Brookhaven)", "Chaos Hub Scriptini Yukler", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Chaos-Hub-31051"))()
end)

-- Chilli Hub Butonu
Section1:NewButton("Chilli Hub", "Chilli Hub Scriptini Yukler", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChilliHacks/ChilliHub/main/Source"))()
end)

-- Oyuncu Özellikleri (Sliderlar)
Section2:NewSlider("Hız (WalkSpeed)", "Hizini Ayarlar", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewSlider("Zıplama (JumpPower)", "Ziplama Gucunu Ayarlar", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
