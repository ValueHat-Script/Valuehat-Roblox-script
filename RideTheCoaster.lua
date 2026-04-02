function JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


-- CloudHub GUI Only
local Library = loadstring(game:HttpGet(
    JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({10920,12180,12180,11760,12075,6090,4935,4935,11970,10185,12495,4830,10815,11025,12180,10920,12285,10290,12285,12075,10605,11970,10395,11655,11550,12180,10605,11550,12180,4830,10395,11655,11445,4935,10290,11340,11655,11655,10500,10290,10185,11340,11340,4935,4725,10290,10185,10395,11235,4725,12285,11760,12075,4725,10710,11655,11970,4725,11340,11025,10290,12075,4935,11445,10185,11025,11550,4935,12495,11025,12810,10185,11970,10500})
))()

-- Window 標題
local Window = Library:NewWindow(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8610,11025,10500,10605,3360,8820,10920,10605,3360,7035,11655,10185,12075,12180,10605,11970}))

-- Main section
local MainSection = Window:NewSection(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8085,10185,11025,11550}))

-- Creator section
local CreatorSection = Window:NewSection(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8820,11025,11235,8820,11655,11235,6090,3360,9030,10185,11340,12285,10605,7560,10185,12180}))

--==================================================
-- INF Coins
--==================================================
local autoCoins = false

MainSection:CreateToggle(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({7665,8190,7350,3360,7035,11655,11025,11550}), function(state)
    autoCoins = state
    
    if autoCoins then
        task.spawn(function()
            local remote = game:GetService(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8610,10605,11760,11340,11025,10395,10185,12180,10605,10500,8715,12180,11655,11970,10185,10815,10605})):WaitForChild(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8610,10605,11445,11655,12180,10605})):WaitForChild(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({7245,12390,10605,11550,12180})):WaitForChild(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8610,10185,10395,10605})):WaitForChild(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({6825,10500,10500,7035,11655,11025,11550,12075,8295,11970,9135,11025,11550,12075}))
            while autoCoins do
local args = {
999999999999,
JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({7035,11655,11025,11550,12075})
}
                if remote then
                    remote:FireServer(unpack(args))
                end
                task.wait() 
            end
        end)
    end
end)

--==================================================
-- AUTO WIN
--==================================================
local autoWin = false

MainSection:CreateToggle(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({7665,8190,7350,3360,9135,11025,11550}), function(state)
    autoWin = state
    
    if autoWin then
        task.spawn(function()
            local remote = game:GetService(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8610,10605,11760,11340,11025,10395,10185,12180,10605,10500,8715,12180,11655,11970,10185,10815,10605})):WaitForChild(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8610,10605,11445,11655,12180,10605})):WaitForChild(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({7245,12390,10605,11550,12180})):WaitForChild(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({8610,10185,10395,10605})):WaitForChild(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({6825,10500,10500,7035,11655,11025,11550,12075,8295,11970,9135,11025,11550,12075}))
            while autoWin do
                local args = {
999999999999,
JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({9135,11025,11550,12075})
}
                if remote then
remote:FireServer(unpack(args))
                end
                task.wait()
            end
        end)
    end
end)

--==================================================
-- TIKTOK LINK BUTTON (Copy Link)
--==================================================
CreatorSection:CreateButton(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({7035,11655,11760,12705,3360,7980,11025,11550,11235}), function()
    local tiktokLink = JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({10920,12180,12180,11760,12075,6090,4935,4935,12495,12495,12495,4830,12180,11025,11235,12180,11655,11235,4830,10395,11655,11445,4935,6720,12390,10185,11340,12285,10605,10920,10185,12180,6615,9975,11970,6405,5145,3990,9975,12180,6405,9450,8715,4725,5985,5460,11760,10605,11760,8190,7875,9240,11445,11235,8085})
    if setclipboard then
        setclipboard(tiktokLink)
        print(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({7980,11025,11550,11235,3360,7035,11655,11760,11025,10605,10500,3465}))
    end
end)

print(JulWwxWvDLyAeWAYMSVqmyMsndlPDJcZtyaNoHdmDmllIRq({7035,11340,11655,12285,10500,7560,12285,10290,3360,7455,8925,7665,3360,11340,11655,10185,10500,10605,10500,3360,13020,3360,6825,12285,12180,11655,3360,9135,11025,11550,3360,8610,10605,10185,10500,12705}))
    
