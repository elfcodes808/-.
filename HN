local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
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
local MainTab = Window:CreateTab("🏀 Main", 4483362458)
local MiscTab = Window:CreateTab("⚙️ Misc", 4483362458)
local CreditTab = Window:CreateTab("📜 Credits", 4483362458)

-- Add Label
MainTab:CreateLabel("Hoop Nation 2 Script V1.0")

-- Variables
local AutoGreenEnabled = false
local FakeLagEnabled = false
local InfiniteStaminaEnabled = false

-- Auto Green Function
local function AutoGreen()
    -- Start animation for auto green
    local args = {
        true,
        100
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot"):FireServer(unpack(args))

    task.wait(0.5)  -- Adjust delay as needed

    -- Stop animation after shooting
    local argsStop = {
        false,
        -0.9786103653907776,
        false
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot"):FireServer(unpack(argsStop))
end

-- Fake Lag Function (Simulate lag by adding random delays)
local function FakeLag()
    while FakeLagEnabled do
        -- Simulate fake lag by introducing random delays before executing actions
        local delayTime = math.random(1, 3) / 10  -- Random delay between 0.1 to 0.3 seconds
        task.wait(delayTime)  -- Simulate lag
    end
end

-- Infinite Stamina Function
local function InfiniteStamina()
    while InfiniteStaminaEnabled do
        local args = { true }
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Sprint"):FireServer(unpack(args))

        -- Keep refreshing stamina so it never runs out
        game:GetService("ReplicatedStorage").Events.Stamina:FireServer(100)
        task.wait(0.1)  -- Adjust the rate at which stamina is refreshed
    end
end

-- Main Tab Toggle for Auto Green
MainTab:CreateToggle({
    Name = "Auto Green",
    CurrentValue = false,
    Callback = function(Value)
        AutoGreenEnabled = Value
    end
})

-- Main Tab Toggle for Fake Lag
MainTab:CreateToggle({
    Name = "Fake Lag",
    CurrentValue = false,
    Callback = function(Value)
        FakeLagEnabled = Value
        if Value then
            task.spawn(FakeLag)  -- Start the Fake Lag function in a separate thread
        end
    end
})

-- Main Tab Toggle for Infinite Stamina
MainTab:CreateToggle({
    Name = "Infinite Stamina",
    CurrentValue = false,
    Callback = function(Value)
        InfiniteStaminaEnabled = Value
        if Value then
            task.spawn(InfiniteStamina)  -- Start the Infinite Stamina function in a separate thread
        end
    end
})

-- Listen for the "E" key press for Auto Green
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end  -- Ignore if the event is already processed by the game

    -- Check if the "E" key was pressed and the Auto Green toggle is enabled
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
