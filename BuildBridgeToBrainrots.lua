function akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


local Rayfield = loadstring(game:HttpGet(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({10920,12180,12180,11760,12075,6090,4935,4935,12075,11025,11970,11025,12285,12075,4830,11445,10605,11550,12285,4935,11970,10185,12705,10710,11025,10605,11340,10500})))()

local Window = Rayfield:CreateWindow({
    Name = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({6930,12285,11025,11340,10500,3360,6930,11970,11025,10500,10815,10605,3360,8820,11655,3360,6930,11970,10185,11025,11550,11970,11655,12180,12075,3360,4200,10290,12705,3360,9030,10185,11340,12285,10605,7560,10185,12180,4305}),
    LoadingTitle = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({6825,12285,12180,11655,3360,6930,11970,10185,11025,11550,11970,11655,12180,12075}),
    LoadingSubtitle = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({10290,12705,3360,9030,10185,11340,12285,10605,7560,10185,12180,4200,8820,11025,11235,8820,11655,11235,4305}),
    ConfigurationSaving = { Enabled = false },
    KeySystem = false
})

-- ===== Settings & Variables =====
getgenv().AutoFarm = false
getgenv().SelectedRarities = {
    [akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7455,8295,7140})] = false,
    [akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8295,7455})] = false,
    [akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8715,7245,7035,8610,7245,8820})] = false,
    [akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8085,9345,8820,7560,7665,7035})] = false,
    [akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7980,7245,7455,7245,8190,7140,6825,8610,9345})] = false
}

local player = game.Players.LocalPlayer
local spawnPos = player.Character and player.Character:FindFirstChild(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180})) and player.Character.HumanoidRootPart.CFrame

-- ===== GUI Tabs =====
local Tab = Window:CreateTab(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8085,10185,11025,11550}), 4483362458)

Tab:CreateSection(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8820,10185,11970,10815,10605,12180,3360,8715,10605,11340,10605,10395,12180,11025,11655,11550}))

-- Generate Toggles
for rarity, _ in pairs(getgenv().SelectedRarities) do
    Tab:CreateToggle({
        Name = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({6825,12285,12180,11655,3360}) .. rarity,
        CurrentValue = false,
        Flag = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8820,11655,10815,10815,11340,10605,9975}) .. rarity,
        Callback = function(Value)
            getgenv().SelectedRarities[rarity] = Value
        end,
    })
end

Tab:CreateSection(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7035,11655,11550,12180,11970,11655,11340,3360,8400,10185,11550,10605,11340}))

Tab:CreateToggle({
    Name = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7245,11550,10185,10290,11340,10605,3360,6825,12285,12180,11655,3360,7350,10185,11970,11445,3360,7980,11655,11655,11760}),
    CurrentValue = false,
    Flag = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8085,10185,11025,11550,7350,10185,11970,11445}),
    Callback = function(Value)
        getgenv().AutoFarm = Value
        if Value then
            task.spawn(function()
                while getgenv().AutoFarm do
                    local foundAny = false
                    local brainrots = workspace:FindFirstChild(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({6930,11970,10185,11025,11550,11970,11655,12180,12075}))
                    
                    if brainrots then
                        for _, model in ipairs(brainrots:GetChildren()) do
                            if not getgenv().AutoFarm then break end
                            
                            -- Get Rarity and force to Uppercase for perfect matching
                            local rarityObj = model:FindFirstChild(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8610,10185,11970,11025,12180,12705,8820,12705,11760,10605})) or model:GetAttribute(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8610,10185,11970,11025,12180,12705,8820,12705,11760,10605}))
                            if rarityObj then
                                local rarityRaw = (typeof(rarityObj) == akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7665,11550,12075,12180,10185,11550,10395,10605})) and rarityObj.Value or rarityObj
                                local rarityVal = tostring(rarityRaw):upper()
                                
                                if getgenv().SelectedRarities[rarityVal] then
                                    local prompt = model:FindFirstChildWhichIsA(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8400,11970,11655,12600,11025,11445,11025,12180,12705,8400,11970,11655,11445,11760,12180}), true)
                                    local hrp = player.Character and player.Character:FindFirstChild(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}))
                                    
                                    if prompt and hrp then
                                        foundAny = true
                                        
                                        -- Teleport
                                        local targetCFrame = (prompt.Parent:IsA(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({6930,10185,12075,10605,8400,10185,11970,12180})) and prompt.Parent.CFrame or model:GetModelCFrame())
                                        hrp.CFrame = targetCFrame * CFrame.new(0, 3, 0)
                                        task.wait(0.3)
                                        
                                        -- Fire Interaction
                                        if fireproximityprompt then
                                            fireproximityprompt(prompt)
                                        else
                                            prompt:InputHoldBegin()
                                            task.wait(0.1)
                                            prompt:InputHoldEnd()
                                        end
                                        task.wait(0.2)
                                        
                                        -- Return to Home
                                        if spawnPos then
                                            hrp.CFrame = spawnPos
                                        end
                                        task.wait(0.4)
                                    end
                                end
                            end
                        end
                    end
                    
                    if not foundAny then
                        task.wait(1)
                    end
                    task.wait(0.1)
                end
            end)
        end
    end,
})

Tab:CreateButton({
    Name = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8610,10605,12075,10605,12180,3360,7560,11655,11445,10605,3360,8400,11655,12075,11025,12180,11025,11655,11550}),
    Callback = function()
        if player.Character and player.Character:FindFirstChild(akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180})) then
            spawnPos = player.Character.HumanoidRootPart.CFrame
            Rayfield:Notify({Title = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({8715,12705,12075,12180,10605,11445}), Content = akHkCwymyvhdaCqGkcpZJsNBxAmnvJnIFyTOVRNYePgdYKldxOJMbWezrgMudkhVyYOLXFxTbjzhvrqkWnmAAazoVjtB({7560,11655,11445,10605,3360,11760,11655,12075,11025,12180,11025,11655,11550,3360,12285,11760,10500,10185,12180,10605,10500,3465}), Duration = 2})
        end
    end,
})
    
