local Rayfield = loadstring(game: HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
    Name = "Risks NFL Universe Football | Paid VERSION",
    LoadingTitle = "Made by Daddy Risk",
    LoadingSubtitle = "by Risk",
    Theme = "Blue",

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "Big Hub"
    },

    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },

    KeySystem = true,
    KeySettings = {
        Title = "NFL Universe Football🏈 | made by Risk",
        Subtitle = "Key System",
        Note = "Join discord | for key",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = { "Kam11"}
    }
})

local MainTab = Window:CreateTab("powers⚡", nil)
local MainSection = MainTab:CreateSection("Main")

Rayfield: Notify({
    Title = "Thank you for using Blitzed",
    Content = "",
    Duration = 5,
    Image = 4483362458,
    Actions = {
        Ignore = {
            Name = "Okay!",
            Callback = function()
                print("The user tapped Okay!")
            end
        }
    },
})

--Walk Speed Slider
local Slider = MainTab:CreateSlider({
    Name = "Walk Speed",
    Range = { 0, 500},
    Increment = 16,
    Suffix = "Bananas",
    CurrentValue = 10,
    Flag = "Slider1",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

--Jump High Toggle
local isJumpHigh = false

local ToggleJumpHigh = MainTab:CreateToggle({
    Name = "Jump High",
    CurrentValue = false,
    Flag = "JumpHighToggle",
    Callback = function(Value)
        isJumpHigh = Value

        local character = game.Players.LocalPlayer.Character
        if character and character:FindFirstChild("Humanoid") then
            local humanoid = character.Humanoid
            if isJumpHigh then
                humanoid.JumpPower = 150
                humanoid.JumpHeight = 100
            else
        humanoid.JumpPower = 50
                humanoid.JumpHeight = 7
            end
        end
    end,
})

local Button = MainTab:CreateButton({
    Name = "fly",
    Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
    end,
})

--Tab for fun activities
local Tab = Window:CreateTab("fun activity🧸", 4483362458)

local Button = Tab:CreateButton({
    Name = "Mag | MUST HAVE GOOD PING",
    Callback = function()
        -- Wait until the character is loaded
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded: Wait()

-- Wait for hands to load
local leftHand = character:FindFirstChild("LeftHand") or character:WaitForChild("LeftHand")
local rightHand = character:FindFirstChild("RightHand") or character:WaitForChild("RightHand")

-- Adjust transparency and size
local function enlargeAndMakeTransparent(part)
    -- Make the hand larger by scaling
    part.Size = part.Size * Vector3.new(2,2,2)-- Change the scale multiplier as desired
    --Make the hand transparent
    part.Transparency = 0.3-- Adjust transparency(0 is fully opaque, 1 is fully transparent)
end

-- Apply the function to each hand
enlargeAndMakeTransparent(leftHand)
enlargeAndMakeTransparent(rightHand)
    end,
})
