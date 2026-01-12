local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nothe Hub",
   LoadingTitle = "Nothe Hub Yükleniyor...",
   LoadingStatus = "Hazırlanıyor",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "NotheHubConfig",
      FileName = "MainConfig"
   }
})

local TrollTab = Window:CreateTab("Troll", 4483345998) -- Troll Sekmesi

-- OYUNCU ÖLDÜRME BÖLÜMÜ
TrollTab:CreateSection("Oyuncu Öldürme (Kill)")

TrollTab:CreateButton({
   Name = "Kill All (Herkesi Öldür)",
   Callback = function()
       -- Bu kod çoğu oyunda 'TouchInterest' kullanarak çalışır
       for i, v in pairs(game.Players:GetPlayers()) do
           if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
               pcall(function()
                   v.Character.Humanoid.Health = 0
               end)
           end
       end
   end,
})

TrollTab:CreateButton({
   Name = "Kill Random (Rastgele Öldür)",
   Callback = function()
       local players = game.Players:GetPlayers()
       local randomPlayer = players[math.random(1, #players)]
       if randomPlayer.Character then
           randomPlayer.Character.Humanoid.Health = 0
       end
   end,
})

TrollTab:CreateButton({
   Name = "Kill Nearest (En Yakındakini Öldür)",
   Callback = function()
       local target = nil
       local dist = math.huge
       for i, v in pairs(game.Players:GetPlayers()) do
           if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
               local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
               if mag < dist then
                   dist = mag
                   target = v
               end
           end
       end
       if target then target.Character.Humanoid.Health = 0 end
