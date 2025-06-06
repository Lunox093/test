local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Menyanety hub| Saber Simulator [SUMMER]☀️",
    LoadingTitle = "Menyanety HUB",
     LoadingSubtitle = "by Menyanety",
     ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, 
       FileName = "YoutubeMenyanetyHub"
   },
    Discord = {
       Enabled = true,
       Invite = "gbVWxRFtqt", 
       RememberJoins = true 
    },
    KeySystem = true, 
    KeySettings = {
       Title = "Saber Simulator [SUMMER]☀️",
       Subtitle = "Link In Discord Server",
       Note = "https://discord.gg/gbVWxRFtqt",
       FileName = "menyanetyhubkey", 
       SaveKey = true, 
       GrabKeyFromSite = true, 
       Key = {"https://pastebin.com/raw/kudCasSy"} 
    }
 })



local MainTab = Window:CreateTab("Main", 4483362458)
local Button = MainTab:CreateSection("Main", 4483362458)     

local Toggle = MainTab:CreateToggle({
    Name = "Auto BeachBall",
    CurrentValue = false,
    Flag = "AutoBeachBallToggle",
    Callback = function(Value)
        _G.AutoFarm = Value
        
        while _G.AutoFarm and task.wait(0.1) do 
            local A_1 = {
                [1] = game:GetService("Workspace").Gameplay.CurrencyPickup.CurrencyHolder.BeachBall
            }
            local Event = game:GetService("ReplicatedStorage").Events.CollectCurrencyPickup
            Event:FireServer(A_1)
        end
    end,
})

local Toggle = MainTab:CreateToggle({
    Name = "Auto Swing",
    CurrentValue = false,
    Flag = "AutoSwingToggle",
    Callback = function(Value)
        _G.AutoSwing = Value

        while _G.AutoSwing and task.wait(0.3) do 
            local Event = game:GetService("ReplicatedStorage").Events.SwingSaber
            Event:FireServer()
        end
    end,
})

local Toggle = MainTab:CreateToggle({
    Name = "Auto Sell",
    CurrentValue = false,
    Flag = "AutoSellToggle",
    Callback = function(Value)
        _G.AutoSellStrength = Value
        
        while _G.AutoSellStrength and task.wait(0.1) do 
            local success, err = pcall(function()
                game:GetService("ReplicatedStorage").Events.SellStrength:FireServer()
            end)
            
            if not success then
                warn("error:", err)
                _G.AutoSellStrength = false
                Toggle:Set(false)
            end
        end
    end,
})

local Toggle = MainTab:CreateToggle({
    Name = "Auto Buy Saber",
    CurrentValue = false,
    Flag = "AutoBuySaberToggle",
    Callback = function(Value)
        _G.AutoBuyWeapons = Value
        
        while _G.AutoBuyWeapons and task.wait(1) do 
            local success, err = pcall(function()
                game:GetService("ReplicatedStorage").Events.UIAction:FireServer("BuyAllWeapons")
            end)
            
            if not success then
                warn("error", err)
                _G.AutoBuyWeapons = false 
                Toggle:Set(false) 
            end
        end
    end,
})

local Toggle = MainTab:CreateToggle({
    Name = "Auto Buy DNA",
    CurrentValue = false,
    Flag = "BuyAllDNAsToggle",
    Callback = function(Value)
        _G.BuyAllDNAs = Value
        
        while _G.BuyAllDNAs and task.wait(1) do 
            local success, err = pcall(function()
                game:GetService("ReplicatedStorage").Events.UIAction:FireServer("BuyAllDNAs")
            end)
            
            if not success then
                warn("error", err)
                _G.BuyAllDNAs = false 
                Toggle:Set(false) 
            end
        end
    end,
})

local allClasses = {
    "Apprentice",
    "Soldier",
    "Paladin",
    "Assassin",
    "Warrior",
    "Warlord",
    "Berserker",
    "Saber",
    "Cyborg",
    "Master",
    "Titan",
    "Phantom",
    "Shadow",
    "Ghoul",
    "Tempest",
    "Elementalist",
    "Beast",
    "Dark Ninja",
    "Warlock",
    "Overlord",
    "Demigod",
    "ArchAngel",
    "Wraith",
    "Deity",
    "Nemesis",
    "Executioner",
    "Terminator",
    "Colossus",
    "Zeus",
    "Elf",
    "Santa",
    "Corruptor",
    "Prestige",
    "Caster",
    "Cyclops",
    "King",
    "Hacker",
    "Angel",
    "Minotaur",
    "Cerberus",
    "Yeti",
    "Samurai",
    "Baron",
    "Detective",
    "Red Baron",
    "Witch",
    "Gladiator",
    "Purple Baron",
    "Guard",
    "Shadow Titan",
    "SuperHuman",
    "Brain",
    "Shadow Guard",
    "Shadow Gladiator",
    "Red Elf",
    "Gingerbread",
    "Ninja Warrior",
    "Snowman",
    "Lord Of Death",
    "Demonic",
    "Alien"

}

local AutoBuyClassesToggle = MainTab:CreateToggle({
    Name = "Auto Buy Class",
    CurrentValue = false,
    Flag = "AutoBuyClassesToggle",
    Callback = function(Value)
        _G.AutoBuyClasses = Value
        
        while _G.AutoBuyClasses and task.wait(0.1) do 
            for _, className in ipairs(allClasses) do
                if not _G.AutoBuyClasses then break end 
                
                local success, err = pcall(function()
                    game:GetService("ReplicatedStorage").Events.UIAction:FireServer(
                        "BuyClass",
                        className
                    )
                end)
                
                if not success then
                    warn("error "..className..":", err)
                end
                
                task.wait(0.1) 
            end
        end
    end,
})

local AutoEquipPetsToggle = MainTab:CreateToggle({
    Name = "Auto Equip Best Pets",
    CurrentValue = false,
    Flag = "AutoEquipPetsToggle",
    Callback = function(Value)
        _G.AutoEquipBestPets = Value
        
        while _G.AutoEquipBestPets and task.wait(1) do 
            local success, err = pcall(function()
                game:GetService("ReplicatedStorage").Events.UIAction:FireServer("EquipBestPets")
            end)
            
            if not success then
                warn("error", err)
                _G.AutoEquipBestPets = false 
                AutoEquipPetsToggle:Set(false) 
            end
        end
    end,
})

local Toggle = MainTab:CreateToggle({
    Name = "Auto Evole Pets",
    CurrentValue = false,
    Flag = "AutoCombinePetsToggle",
    Callback = function(Value)
        _G.AutoCombinePets = Value
        
        while _G.AutoCombinePets and task.wait(1) do 
            local success, err = pcall(function()
                game:GetService("ReplicatedStorage").Events.UIAction:FireServer("CombineAllPets")
            end)
            
            if not success then
                warn("error", err)
                _G.AutoCombinePets = false
                Toggle:Set(false)
            end
        end
    end,
})

local ShopTab = Window:CreateTab("Summer Shop", 4483362458)
local Button = ShopTab:CreateSection("Summer Shop", 4483362458)

local Toggle = ShopTab:CreateToggle({
    Name = "Auto Buy Luck",
    CurrentValue = false,
    Flag = "AutoBuyLuckToggle",
    Callback = function(Value)
        _G.AutoBuyLuck = Value
        
        while _G.AutoBuyLuck and task.wait(1) do 
            local Event = game:GetService("ReplicatedStorage").Events.UIAction
            
            for level = 1, 10 do
                Event:FireServer("BuyEventUpgrade", "Luck", level)
            end
        end
    end,
})

local Toggle = ShopTab:CreateToggle({
    Name = "Auto Buy Beach Balls",
    CurrentValue = false,
    Flag = "AutoBuyBeachBallsToggle",
    Callback = function(Value)
        _G.AutoBuyBeachBalls = Value
        
        while _G.AutoBuyBeachBalls and task.wait(1) do 
            local Event = game:GetService("ReplicatedStorage").Events.UIAction
            
            for level = 1, 10 do
                Event:FireServer("BuyEventUpgrade", "EventCoinsMulti", level)
            end
        end
    end,
})

local Toggle = ShopTab:CreateToggle({
    Name = "Auto Buy CrownMulti",
    CurrentValue = false,
    Flag = "AutoBuyCrownToggle",
    Callback = function(Value)
        _G.AutoBuyCrown = Value
        
        while _G.AutoBuyCrown and task.wait(1) do 
            local Event = game:GetService("ReplicatedStorage").Events.UIAction

            for level = 1, 10 do
                Event:FireServer("BuyEventUpgrade", "CrownMulti", level)
            end
        end
    end,
})

local Toggle = ShopTab:CreateToggle({
    Name = "Auto Buy Sell Boost",
    CurrentValue = false,
    Flag = "AutoBuyEventSellToggle",
    Callback = function(Value)
        _G.AutoBuyEventSell = Value
        
        while _G.AutoBuyEventSell and task.wait(1) do
            local Event = game:GetService("ReplicatedStorage").Events.UIAction

            for level = 1, 10 do
                Event:FireServer("BuyEventUpgrade", "CrownMulti", level)
            end
        end
    end,
})

local Toggle = ShopTab:CreateToggle({
    Name = "Auto Buy Event Boss Hits",
    CurrentValue = false,
    Flag = "AutoBuyEventBossHitsToggle",
    Callback = function(Value)
        _G.AutoBuyEventBossHits = Value
        
        while _G.AutoBuyEventBossHits and task.wait(1) do
            local Event = game:GetService("ReplicatedStorage").Events.UIAction

            for level = 1, 10 do
                Event:FireServer("BuyEventUpgrade", "BossHits", level)
            end
        end
    end,
})

local Toggle = ShopTab:CreateToggle({
    Name = "Auto Buy Summer Egg",
    CurrentValue = false,
    Flag = "AutoBuyEggToggle",
    Callback = function(Value)
        _G.AutoBuyEgg = Value
        
        while _G.AutoBuyEgg and task.wait(0.1) do  
            local Event = game:GetService("ReplicatedStorage").Events.UIAction
            Event:FireServer("BuyEgg", "EK Egg")
        end
    end,
})

local MiscTab = Window:CreateTab("Misc", 4483362458)
local Button = MiscTab:CreateSection("Misc", 4483362458)


local RedeemAllButton = MiscTab:CreateButton({
    Name = "Auto Codes",
    Callback = function()
        local codes = {
            "REVAMP",
            "Saber",
            "Vehnix",
            "Slayer",
            "5000Followers"
        }
        
        for _, code in ipairs(codes) do
            game:GetService("ReplicatedStorage").Events.CheckCode:InvokeServer(code)
            task.wait(0.5) 
        end
        
        Rayfield:Notify({
            Title = "All codes activated",
            Content = "Working!",
            Duration = 3,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "Okay",
                    Callback = function()
                    end
                },
            },
        })
    end,
})



Rayfield:LoadConfiguration()
