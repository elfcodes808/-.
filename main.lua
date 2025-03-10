-- Load Rayfield UI Library
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "ShadowZ Script Loader",
    LoadingTitle = "Loading UI...",
    LoadingSubtitle = "Loading ShadowZ Main Loader",
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

-- Check if the Window was created successfully
if not Window then
    error("Failed to create Rayfield window!")
end

-- Scripts Tab
local ScriptsTab = Window:CreateTab("Scripts", 4483362458)
local CreditsTab = Window:CreateTab("Credits", 4483362458)
local FixesTab = Window:CreateTab("Fixes", 4483362458)
local InfoTab = Window:CreateTab("Information", 4483362458)

-- Script buttons
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
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/-./refs/heads/main/HN"))()
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
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/-./refs/heads/main/BE"))()
        Rayfield:Notify({
            Title = "Boxing Beta is Loaded!",
            Content = "Callback error might occur every once in a while.",
            Duration = 5
        })
    end
})

ScriptsTab:CreateButton({
    Name = "Shrimp Game",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/ShadowZscripts/refs/heads/main/SG"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "Shrimp Game script is ready!",
            Duration = 5
        })
    end
})

ScriptsTab:CreateButton({
    Name = "Realistic Basketball",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/ShadowZscripts/refs/heads/main/RB"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "Realistic Basketball script is ready!",
            Duration = 5
        })
    end
})

ScriptsTab:CreateButton({
    Name = "Fisch Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/-./refs/heads/main/FC"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "Fisch script is ready!",
            Duration = 5
        })
    end
})

ScriptsTab:CreateButton({
    Name = "Homerun Simulator",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/-./refs/heads/main/HS"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "Homerun Simulator script is ready!",
            Duration = 5
        })
    end
})

-- New button added for Basketball Legends
ScriptsTab:CreateButton({
    Name = "Basketball Legends",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/-./refs/heads/main/BL"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "Basketball Legends script is ready!",
            Duration = 5
        })
    end
})

-- New button added for R Script
ScriptsTab:CreateButton({
    Name = "R Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/elfcodes808/-./refs/heads/main/R"))()
        Rayfield:Notify({
            Title = "Successfully loaded!",
            Content = "R script is ready!",
            Duration = 5
        })
    end
})

-- Fixes Tab
FixesTab:CreateParagraph({
    Title = "FIXES",
    Content = "Fixed callback error"
})

-- Credits Tab
CreditsTab:CreateParagraph({
    Title = "Special Thanks",
    Content = "Developed by kadencodes"
})

-- Information Tab
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
