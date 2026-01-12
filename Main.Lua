-- [[ THE BENJO PANEL ◆ PREMIUM ELITE ]] --
-- UPDATED: New Discord Link in Credits

local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Window = WindUI:CreateWindow({
    Folder = "benjo_final_instant",
    Title = "THE BENJO PANEL ◆ PREMIUM",
    NewElements = true,
    OpenButton = {
        Enabled = true,
        Color = ColorSequence.new(Color3.fromHex("#FFD700"), Color3.fromHex("#FF4B4B")),
        Title = "BENJO MENU",
        Draggable = true,
    },
    Icon = "solar:crown-bold",
    AccentColor = Color3.fromHex("#FFD700"),
})

-- --- DASHBOARD (Tab 1) ---
local Tab1 = Window:Tab({ Title = "Dashboard", Icon = "solar:home-bold" })
Tab1:Button({ Title = "User: " .. LocalPlayer.Name, Callback = function() end })
Tab1:Button({ Title = "Rank: [ AUTHORIZED DEVELOPER ]", Callback = function() end })

-- --- MAIN GAMES (Tab 2) ---
local Tab2 = Window:Tab({ Title = "Main Games", Icon = "solar:star-bold" })

Tab2:Button({
    Title = "ADOPT ME PREMIUM",
    Description = "Unlock all exclusive premium features.",
    Icon = "solar:play-circle-bold",
    Callback = function() loadstring(game:HttpGet("https://pastefy.app/BaR5pLQ3/raw"))() end
})

Tab2:Button({
    Title = "Murder Mystery 2",
    Description = "Silent Aim, ESP, and Auto-Farm.",
    Icon = "solar:play-circle-bold",
    Callback = function() loadstring(game:HttpGet("https://pastefy.app/FQ3Ctgd5/raw"))() end
})

Tab2:Button({
    Title = "Brookhaven (Premium)",
    Description = "Unlock all gamepasses & house features.",
    Icon = "solar:play-circle-bold",
    Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fda9babd071d6b536a745774b6bc681c.lua"))() end
})

-- --- OTHER GAMES (Tab 3) ---
local Tab3 = Window:Tab({ Title = "Other Games", Icon = "solar:gamepad-bold" })

Tab3:Button({
    Title = "Blox Fruits",
    Description = "Premium Leveling & Farm.",
    Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/fda9babd071d6b536a745774b6bc681c.lua"))() end
})

Tab3:Button({
    Title = "Arsenal",
    Description = "Aimbot, ESP, and Gun Mods.",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0d3f/Quartyz/main/Gold.lua"))() end
})

Tab3:Button({
    Title = "Rivals",
    Description = "Silent Aim & ESP.",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/blexn9/Script/refs/heads/main/Main"))() end
})

-- --- SETTINGS (Tab 4) ---
local Tab4 = Window:Tab({ Title = "Settings", Icon = "solar:settings-bold" })

Tab4:Slider({
    Title = "WalkSpeed",
    Value = { Min = 16, Max = 250, Default = 16 },
    Callback = function(v) pcall(function() LocalPlayer.Character.Humanoid.WalkSpeed = v end) end
})

Tab4:Button({
    Title = "Server Hop",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/K00LKids/ServerHop/main/Hop.lua"))() end
})

-- --- CREDITS (Tab 5) ---
local Tab5 = Window:Tab({ Title = "Credits", Icon = "solar:info-circle-bold" })
Tab5:Button({ 
    Title = "Owner: BENJO", 
    Description = "Click to copy Discord link.",
    Callback = function() 
        setclipboard("https://discord.gg/Uwwbd2T3cf") 
        WindUI:Notify({Title = "Copied", Content = "Discord link copied to clipboard!", Duration = 3})
    end 
})
Tab5:Button({ 
    Title = "Join Discord", 
    Description = "https://discord.gg/Uwwbd2T3cf",
    Callback = function() setclipboard("https://discord.gg/Uwwbd2T3cf") end 
})

-- Automatically open to Main Games on start
Window:SelectTab(Tab2)

WindUI:Notify({
    Title = "BENJO PANEL",
    Content = "Credits updated with new Discord!",
    Duration = 5
})
