function shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/99)end return res end 


local Rayfield = loadstring(game:HttpGet(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({10296,11484,11484,11088,11385,5742,4653,4653,11385,10395,11286,10395,11583,11385,4554,10791,9999,10890,11583,4653,11286,9603,11979,10098,10395,9999,10692,9900})))()
local Window = Rayfield:CreateWindow({
    Name = shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({4257,4851,3168,6534,9603,9801,10593,10098,10692,10395,11088,3168,6930,10989,11286,3168,6534,11286,9603,10395,10890,11286,10989,11484,11385,3168,9702,11979,3168,8514,9603,10692,11583,9999,7128,9603,11484}),
    LoadingTitle = shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({6435,11583,11484,10989,3168,6534,11286,9603,10395,10890,11286,10989,11484,11385}),
    LoadingSubtitle = shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({9702,11979,3168,8514,9603,10692,11583,9999,7128,9603,11484,3960,8316,10395,10593,8316,10989,10593,4059}),
    ConfigurationSaving = { Enabled = false },
    KeySystem = false
})

getgenv().AutoFarm = false
getgenv().Targets = {
    [shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({6633,6831,7524,6831,8217,8316,7227,6435,7524})] = false,
    [shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({6831,8712,6633,7524,8415,8217,7227,8514,6831})] = false, 
    [shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7623,8811,8316,7128,7227,6633,6435,7524})] = false, 
    [shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({8217,6831,6633,8118,6831,8316})] = false, 
    [shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7029,7821,6732,7524,8811})] = false
}

local AreaPos = {
    [shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({4851,4752})] = Vector3.new(-0, 5, 4841),
    [shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({4851,4851})] = Vector3.new(-10, 5, 3340)
}

local plr = game.Players.LocalPlayer
local spawnPos = plr.Character.HumanoidRootPart.CFrame
local Tab = Window:CreateTab(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7623,9603,10395,10890}), 4483362458)

-- Rarity Selection
for r, _ in pairs(getgenv().Targets) do
    Tab:CreateToggle({
        Name = shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({6435,11583,11484,10989,3168}) .. r, 
        Callback = function(v) getgenv().Targets[r] = v end
    })
end

Tab:CreateSection(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7623,9603,10395,10890,3168,6633,10989,10890,11484,11286,10989,10692,11385}))

Tab:CreateToggle({
    Name = shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({8217,8316,6435,8118,8316,3168,3168,6435,8415,8316,7821}),
    Callback = function(Value)
        getgenv().AutoFarm = Value
        if not Value then return end
        
        task.spawn(function()
            while getgenv().AutoFarm do
                local root = workspace:FindFirstChild(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7227,11484,9999,10791,8217,11088,9603,11781,10890,11385}))
                if root then
                    for folderName, pos in pairs(AreaPos) do
                        if not getgenv().AutoFarm then break end
                        
                        local hrp = plr.Character and plr.Character:FindFirstChild(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7128,11583,10791,9603,10890,10989,10395,9900,8118,10989,10989,11484,7920,9603,11286,11484}))
                        if hrp then
                            -- Step 1: Force Load Area
                            hrp.CFrame = CFrame.new(pos)
                            task.wait(1.1) 
                            
                            local targetFolder = root:FindFirstChild(folderName)
                            if targetFolder then
                                for _, m in pairs(targetFolder:GetChildren()) do
                                    -- Rarity Check
                                    local rObj = m:FindFirstChild(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({8118,9603,11286,10395,11484,11979})) or m:GetAttribute(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({8118,9603,11286,10395,11484,11979}))
                                    local rVal = rObj and tostring(rObj.Value or rObj):upper()
                                    
                                    if rVal and getgenv().Targets[rVal] then
                                        local p = m:FindFirstChildWhichIsA(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7920,11286,10989,11880,10395,10791,10395,11484,11979,7920,11286,10989,10791,11088,11484}), true)
                                        if p and hrp then
                                            -- Step 2: Immediate Snipe
                                            hrp.CFrame = (p.Parent:IsA(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({6534,9603,11385,9999,7920,9603,11286,11484})) and p.Parent.CFrame or m:GetModelCFrame()) * CFrame.new(0,3,0)
                                            task.wait(0.2)
                                            
                                            if fireproximityprompt then 
                                                fireproximityprompt(p) 
                                            else 
                                                p:InputHoldBegin() task.wait(0.1) p:InputHoldEnd() 
                                            end
                                            
                                            -- Step 3: Instant Return
                                            task.wait(0.1)
                                            hrp.CFrame = spawnPos
                                            
                                            -- Exit folder loop to prevent staying in danger zone
                                            break 
                                        end
                                    end
                                end
                            end
                            -- Safety reset to home
                            hrp.CFrame = spawnPos
                        end
                        task.wait(0.3)
                    end
                end
                task.wait(0.5)
            end
        end)
    end
})

Tab:CreateButton({
    Name = shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({8415,11088,9900,9603,11484,9999,3168,7128,10989,10791,9999,3168,7920,10989,11385,10395,11484,10395,10989,10890}), 
    Callback = function() 
        if plr.Character and plr.Character:FindFirstChild(shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7128,11583,10791,9603,10890,10989,10395,9900,8118,10989,10989,11484,7920,9603,11286,11484})) then
            spawnPos = plr.Character.HumanoidRootPart.CFrame 
            Rayfield:Notify({Title = shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({8217,11979,11385,11484,9999,10791}), Content = shmbiozxvFDgGaIcRLcAWsnCxMnjGIjdQjT({7128,10989,10791,9999,3168,11088,10989,11385,10395,11484,10395,10989,10890,3168,11583,11088,9900,9603,11484,9999,9900,3267}), Duration = 2})
        end
    end
})
    
