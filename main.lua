-- Load Rayfield UI Library
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "ShadowZ Script Loader",
    LoadingTitle = "Loading UI...",
    LoadingSubtitle = "Powered by XyPhron Softworks",
    ConfigurationSaving = {
        Enabled = false
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
        Title = "STOP! Loading process paused.",
        Subtitle = "Insert a key to continue!",
        Note = "Join our support server for the key! .gg/C9nFAdEq4n",
        FileName = "KeySystem",
        SaveKey = false,
        GrabKeyFromSite = false,
        Key = {"KEY_1234Z1x0y2", "Admin_KEY124x0y2b6"}
    }
})

-- Key expiration functionality
local keyExpirationTime = 5  -- 5 seconds until the key expires
local keyStartTime = tick()  -- Record the start time when the script starts

-- Function to check if the key has expired
local function isKeyExpired()
    return tick() - keyStartTime >= keyExpirationTime
end

-- Wait for the key input and check if it has expired
if isKeyExpired() then
    Rayfield:Notify({
        Title = "Key Expired",
        Content = "Your key has expired. Please enter a new one.",
        Duration = 5
    })
    return
end

-- Scripts Tab
local ScriptsTab = Window:CreateTab("Scripts", 4483362458)
local CreditsTab = Window:CreateTab("Credits", 4483362458)
local FixesTab = Window:CreateTab("Fixes", 4483362458)
local InfoTab = Window:CreateTab("Information", 4483362458)

ScriptsTab:CreateButton({
    Name = "Siege Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/shadowzscript/refs/heads/main/seigescript.lua"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "Siege Script is ready!",
            Duration = 5
        })
    end
})

ScriptsTab:CreateButton({
    Name = "Hoops Nation 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/shadowzscript/refs/heads/main/Hoop%20Nation%202"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "Hoops Nation 2 script is ready!",
            Duration = 5
        })
    end
})

ScriptsTab:CreateButton({
    Name = "Boxing Beta Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/shadowzscript/refs/heads/main/boxingbeta.lua"))()
        Rayfield:Notify({
            Title = "Boxing Beta is Loaded!",
            Content = "Callback error might occur every once and a while.",
            Duration = 5
        })
    end
})

FixesTab:CreateParagraph({
    Title = "FIXES",
    Content = "Fixed callback error"
})

CreditsTab:CreateParagraph({
    Title = "Special Thanks",
    Content = "Developed by kadencodes"
})

InfoTab:CreateButton({
    Name = "Info window",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/shadowzscript/refs/heads/main/informationview.lua"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "Information is ready to read!",
            Duration = 5
        })
    end
})

Rayfield:Notify({
    Title = "Successfully loaded!",
    Content = "Script loader is ready!",
    Duration = 3
})
