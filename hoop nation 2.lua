local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

local Window = Rayfield:CreateWindow({
   Name = "ShadowZ Hub",
   LoadingTitle = "Loading Hoop Nation 2 Script",
   LoadingSubtitle = "by ShadowZ",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "HoopNation2_Config",
      FileName = "HoopNation2_Config"
   },
   Discord = {
      Enabled = true,
      Invite = "V6cpWCYN",
      RememberJoins = true
   },
   KeySystem = false
})

-- Create Tabs
local MainTab = Window:CreateTab("\ud83c\udfc0 Main", 4483362458)
local CreditTab = Window:CreateTab("\ud83d\udcdd Credits", 4483362458)

-- Add Label
MainTab:CreateLabel("Hoop Nation 2 Script V1.0")

-- Variables
local AutoGreenEnabled = false

-- Auto Green Function
local function AutoGreen()
    local args = {
        true,
        100
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot"):FireServer(unpack(args))

    task.wait(0.5)  -- Adjust delay as needed

    local argsStop = {
        false,
        -0.9786103653907776,
        false
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot"):FireServer(unpack(argsStop))
end

-- Main Tab Toggle for Auto Green
MainTab:CreateToggle({
    Name = "Auto Green",
    CurrentValue = false,
    Callback = function(Value)
        AutoGreenEnabled = Value
    end
})

-- Listen for the "E" key press for Auto Green
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end  -- Ignore if the event is already processed by the game

    if input.KeyCode == Enum.KeyCode.E and AutoGreenEnabled then
        AutoGreen()
    end
end)

-- Credits Tab
CreditTab:CreateLabel("Credit to ShadowZ for making the script!")

CreditTab:CreateButton({
    Name = "Join Discord",
    Callback = function()
        setclipboard("https://discord.gg/rvXsdjcY")
    end
})

Rayfield:Notify({
    Title = "Script Loaded",
    Content = "Hoop Nation 2 Script V1.0 loaded successfully!",
    Duration = 5,
    Image = 4483362458
})
