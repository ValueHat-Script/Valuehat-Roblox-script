function mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


-- CloudHub GUI Only
local Fluent = loadstring(game:HttpGet(
    mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({10920,12180,12180,11760,12075,6090,4935,4935,10815,11025,12180,10920,12285,10290,4830,10395,11655,11445,4935,10500,10185,12495,11025,10500,4725,12075,10395,11970,11025,11760,12180,12075,4935,7350,11340,12285,10605,11550,12180,4935,11970,10605,11340,10605,10185,12075,10605,12075,4935,11340,10185,12180,10605,12075,12180,4935,10500,11655,12495,11550,11340,11655,10185,10500,4935,11445,10185,11025,11550,4830,11340,12285,10185})
))()

local Library = loadstring(game:HttpGet(
    mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({10920,12180,12180,11760,12075,6090,4935,4935,11970,10185,12495,4830,10815,11025,12180,10920,12285,10290,12285,12075,10605,11970,10395,11655,11550,12180,10605,11550,12180,4830,10395,11655,11445,4935,10290,11340,11655,11655,10500,10290,10185,11340,11340,4935,4725,10290,10185,10395,11235,4725,12285,11760,12075,4725,10710,11655,11970,4725,11340,11025,10290,12075,4935,11445,10185,11025,11550,4935,12495,11025,12810,10185,11970,10500})
))()

-- Window 標題
local Window = Library:NewWindow(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({7980,11655,10815,11655,3360,7035,11655,11340,11655,11970,3360,6930,11970,11025,10500,10815,10605}))

-- Main section
local MainSection = Window:NewSection(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({8085,10185,11025,11550}))

-- Creator section
local CreatorSection = Window:NewSection(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({8820,11025,11235,8820,11655,11235,6090,3360,9030,10185,11340,12285,10605,7560,10185,12180}))

--==================================================
-- AUTO CASH TOGGLE
--==================================================
local autoCashEnabled = false

MainSection:CreateToggle(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({6825,12285,12180,11655,3360,7035,10185,12075,10920}), function(state)
    autoCashEnabled = state
    
    if autoCashEnabled then
        task.spawn(function()
            local winRemote = game:GetService(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({8610,10605,11760,11340,11025,10395,10185,12180,10605,10500,8715,12180,11655,11970,10185,10815,10605})):WaitForChild(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({7245,12390,10605,11550,12180,12075})):WaitForChild(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({9135,11025,11550}))
            while autoCashEnabled do
                winRemote:FireServer()
                task.wait()
            end
        end)
    end
end)

--==================================================
-- AUTO LANDMINE TOGGLE (新功能)
--==================================================
local autoLandmineEnabled = false

MainSection:CreateToggle(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({6825,12285,12180,11655,3360,7980,10185,11550,10500,11445,11025,11550,10605}), function(state)
    autoLandmineEnabled = state
    
    if autoLandmineEnabled then
        task.spawn(function()
            local player = game:GetService(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({8400,11340,10185,12705,10605,11970,12075})).LocalPlayer
            
            while autoLandmineEnabled do
                local character = player.Character
                local rootPart = character and character:FindFirstChild(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}))
                local backpack = player:FindFirstChild(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({6930,10185,10395,11235,11760,10185,10395,11235}))
                
                if rootPart and backpack then
                    local landmine = backpack:FindFirstChild(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({7980,10185,11550,10500,11445,11025,11550,10605}))
                    if landmine then
                        local event = landmine:FindFirstChild(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({7245,12390,10605,11550,12180}))
                        if event then
                            -- 在當前座標放置地雷
                            event:FireServer(rootPart.CFrame)
                        end
                    end
                end
                task.wait(0.1) -- 高速放置，若太卡請改為 task.wait(0.1)
            end
        end)
    end
end)

--==================================================
-- TIKTOK LINK BUTTON (Copy Link)
--==================================================
CreatorSection:CreateButton(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({7035,11655,11760,12705,3360,7980,11025,11550,11235}), function()
    local tiktokLink = mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({10920,12180,12180,11760,12075,6090,4935,4935,12495,12495,12495,4830,12180,11025,11235,12180,11655,11235,4830,10395,11655,11445,4935,6720,12390,10185,11340,12285,10605,10920,10185,12180,6615,9975,11970,6405,5145,3990,9975,12180,6405,9450,8715,4725,5985,5460,11760,10605,11760,8190,7875,9240,11445,11235,8085})
    
    if setclipboard then
        setclipboard(tiktokLink)
        print(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({8820,11025,11235,8820,11655,11235,3360,7980,11025,11550,11235,3360,10395,11655,11760,11025,10605,10500,3465}))
    else
        warn(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({7245,12600,10605,10395,12285,12180,11655,11970,3360,10500,11655,10605,12075,3360,11550,11655,12180,3360,12075,12285,11760,11760,11655,11970,12180,3360,10395,11340,11025,11760,10290,11655,10185,11970,10500}))
    end
end)

print(mzlLZvptKOOItNYgLOcZGiokSgyovGWAakgXOtDwDXHhofZLfEyeuwPdlnGwAZfrxaKoUO({7035,11340,11655,12285,10500,7560,12285,10290,3360,7455,8925,7665,3360,11340,11655,10185,10500,10605,10500,3360,13020,3360,6825,12285,12180,11655,3360,7980,10185,11550,10500,11445,11025,11550,10605,3360,8610,10605,10185,10500,12705}))
    
