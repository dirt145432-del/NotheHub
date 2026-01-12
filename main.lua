local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nothe Hub", "DarkTheme")

-- Sekmeler
local Tab1 = Window:NewTab("Oyun Scriptleri")
local Section1 = Tab1:NewSection("Popüler Oyunlar")

local Tab2 = Window:NewTab("Oyuncu")
local Section2 = Tab2:NewSection("Karakter Ayarları")

-- Steal A Brainrot (Chilli Hub yüklenecek şekilde ayarlandı)
Section1:NewButton("Steal A Brainrot (Chilli)", "Chilli Hub Scriptini Yukler", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChilliHacks/ChilliHub/main/Source"))()
end)

-- MM2 (Murder Mystery 2)
Section1:NewButton("Vynixu (MM2)", "Esp ve Sheriff Aim", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Vynixu/VynixuLib/main/MM2/Source.lua"))()
end)

-- Blox Fruits
Section1:NewButton("Redz Hub (Blox Fruits)", "Auto Farm", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDZHUB/BloxFruits/main/redz7.lua"))()
end)

-- Brookhaven
Section1:NewButton("Chaos Hub (Brookhaven)", "Brookhaven hilesi", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Chaos-Hub-31051"))()
end)

-- Oyuncu Özellikleri
Section2:NewSlider("Hız (WalkSpeed)", "Hızını Ayarlar", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewSlider("Zıplama (JumpPower)", "Zıplama Gücü", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
