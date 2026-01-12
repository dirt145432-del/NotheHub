local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nothe Hub", "DarkTheme")

local Tab = Window:NewTab("Scriptler")
local Section = Tab:NewSection("Genel Scriptler")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Nothe Hub", "DarkTheme")

-- Ana Sekmeler
local Tab1 = Window:NewTab("Script Listesi")
local Section1 = Tab1:NewSection("Hazır Scriptler")

local Tab2 = Window:NewTab("Oyuncu Özellikleri")
local Section2 = Tab2:NewSection("Karakter Ayarları")

-- Script Butonları
Section1:NewButton("Chilli Hub", "Scripti Yükler", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ChilliHacks/ChilliHub/main/Source"))()
end)

-- Fly (Uçma) Butonu
Section2:NewButton("Fly (Uçma Modu)", "Karakteri Uçurur", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))()
end)

-- Hız Ayarı
Section2:NewSlider("Yürüme Hızı", "Hızınızı Ayarlar", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("Chilli Hub", "Scripti Calistirir", function()
    loadstring(game:HttpGet("https://pastefy.app/oxlwJTPr/raw"))()
end)
