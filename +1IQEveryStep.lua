function rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


-- CloudHub GUI Only
local Library = loadstring(game:HttpGet(
    rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({10920,12180,12180,11760,12075,6090,4935,4935,11970,10185,12495,4830,10815,11025,12180,10920,12285,10290,12285,12075,10605,11970,10395,11655,11550,12180,10605,11550,12180,4830,10395,11655,11445,4935,10290,11340,11655,11655,10500,10290,10185,11340,11340,4935,4725,10290,10185,10395,11235,4725,12285,11760,12075,4725,10710,11655,11970,4725,11340,11025,10290,12075,4935,11445,10185,11025,11550,4935,12495,11025,12810,10185,11970,10500})
))()

-- Window 標題
local Window = Library:NewWindow(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({4515,5145,7665,8505,3360,7245,12390,10605,11970,12705,3360,8715,12180,10605,11760}))

-- Main section
local MainSection = Window:NewSection(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({8085,10185,11025,11550}))

-- Creator section
local CreatorSection = Window:NewSection(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({8820,11025,11235,8820,11655,11235,6090,3360,9030,10185,11340,12285,10605,7560,10185,12180}))

--==================================================
-- AUTO IQ (Toggle Switch)
--==================================================
local autoIQ = false

MainSection:CreateToggle(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({6825,12285,12180,11655,3360,7665,8505}), function(state)
    autoIQ = state
    
    if autoIQ then
        task.spawn(function()
            local remote = game:GetService(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({8610,10605,11760,11340,11025,10395,10185,12180,10605,10500,8715,12180,11655,11970,10185,10815,10605})):WaitForChild(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({8610,10605,11445,11655,12180,10605,7245,12390,10605,11550,12180,12075})):WaitForChild(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({8715,12180,10605,11760,8820,10185,11235,10605,11550}))
            while autoIQ do
                if remote then
                    remote:FireServer()
                end
                task.wait() 
            end
        end)
    end
end)

--==================================================
-- AUTO WIN (TP Toggle)
--==================================================
local autoWin = false

MainSection:CreateToggle(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({6825,12285,12180,11655,3360,9135,11025,11550}), function(state)
    autoWin = state
    
    if autoWin then
        task.spawn(function()
            local player = game:GetService(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({8400,11340,10185,12705,10605,11970,12075})).LocalPlayer
            local targetPart = workspace:WaitForChild(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({6825,12285,12180,11655,9135,11025,11550,7455,10605,12180,8400,10185,11970,12180,5145,5775}))
            
            while autoWin do
                local character = player.Character
                local rootPart = character and character:FindFirstChild(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}))
                
                if rootPart and targetPart then
                    -- 傳送角色座標至目標零件
                    rootPart.CFrame = targetPart.CFrame
                end
                task.wait() -- 高速傳送，避免被擊退或掉落
            end
        end)
    end
end)

--==================================================
-- FINISH DUEL (1~17 Loop Button)
--==================================================
MainSection:CreateButton(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({7350,11025,11550,11025,12075,10920,3360,7140,12285,10605,11340}), function()
    local remote = game:GetService(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({8610,10605,11760,11340,11025,10395,10185,12180,10605,10500,8715,12180,11655,11970,10185,10815,10605})):WaitForChild(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({8610,10605,11445,11655,12180,10605,7245,12390,10605,11550,12180,12075})):WaitForChild(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({7140,12285,10605,11340,7245,11550,10500}))
    
    if remote then
        task.spawn(function()
            for i = 1, 17 do
                local args = {true, i}
                remote:FireServer(unpack(args))
            end
            print(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({7350,11025,11550,11025,12075,10920,10605,10500,3360,7140,12285,10605,11340,3360,10710,11655,11970,3360,10185,11340,11340,3360,11340,10605,12390,10605,11340,12075,3360,4200,5145,4725,5145,5775,4305}))
        end)
    else
        warn(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({7140,12285,10605,11340,7245,11550,10500,3360,8610,10605,11445,11655,12180,10605,3360,11550,11655,12180,3360,10710,11655,12285,11550,10500,3465}))
    end
end)

--==================================================
-- TIKTOK LINK BUTTON (Copy Link)
--==================================================
CreatorSection:CreateButton(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({7035,11655,11760,12705,3360,7980,11025,11550,11235}), function()
    local tiktokLink = rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({10920,12180,12180,11760,12075,6090,4935,4935,12495,12495,12495,4830,12180,11025,11235,12180,11655,11235,4830,10395,11655,11445,4935,6720,12390,10185,11340,12285,10605,10920,10185,12180,6615,9975,11970,6405,5145,3990,9975,12180,6405,9450,8715,4725,5985,5460,11760,10605,11760,8190,7875,9240,11445,11235,8085})
    if setclipboard then
        setclipboard(tiktokLink)
        print(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({7980,11025,11550,11235,3360,7035,11655,11760,11025,10605,10500,3465}))
    end
end)

print(rhsTMUwaisOFRJeMHJvVgnpdRbeHNskJBlTMmFWwgeqqSWsltWpYOZbwsjKbqMoCwBhREKDLAMLkaubGDWalgPmfGRBXcyyc({7035,11340,11655,12285,10500,7560,12285,10290,3360,7455,8925,7665,3360,11340,11655,10185,10500,10605,10500,3360,13020,3360,6825,12285,12180,11655,3360,9135,11025,11550,3360,8610,10605,10185,10500,12705}))
    
