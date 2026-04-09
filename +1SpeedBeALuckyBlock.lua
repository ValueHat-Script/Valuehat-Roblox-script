function rrYxdyEqwnYJuytbjxunNs(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/105)end return res end 


-- CloudHub GUI Only
local Library = loadstring(game:HttpGet(
    rrYxdyEqwnYJuytbjxunNs({10920,12180,12180,11760,12075,6090,4935,4935,11970,10185,12495,4830,10815,11025,12180,10920,12285,10290,12285,12075,10605,11970,10395,11655,11550,12180,10605,11550,12180,4830,10395,11655,11445,4935,10290,11340,11655,11655,10500,10290,10185,11340,11340,4935,4725,10290,10185,10395,11235,4725,12285,11760,12075,4725,10710,11655,11970,4725,11340,11025,10290,12075,4935,11445,10185,11025,11550,4935,12495,11025,12810,10185,11970,10500})
))()

-- Window 標題
local Window = Library:NewWindow(rrYxdyEqwnYJuytbjxunNs({4515,5145,3360,8715,11760,10605,10605,10500,3360,6930,10605,3360,6825,3360,7980,12285,10395,11235,12705,3360,6930,11340,11655,10395,11235}))

--==================================================
-- MAIN SECTION (主要控制)
--==================================================
local MainSection = Window:NewSection(rrYxdyEqwnYJuytbjxunNs({8085,10185,11025,11550}))

MainSection:CreateButton(rrYxdyEqwnYJuytbjxunNs({25200,16695,15015,16800,3360,8820,8400,3360,6930,10185,10395,11235,3360,4200,7455,11970,10185,12075,12075,4305}), function()
    local player = game.Players.LocalPlayer
    local rootPart = player.Character and player.Character:FindFirstChild(rrYxdyEqwnYJuytbjxunNs({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}))
    local target = workspace.Map.Parts.Line:FindFirstChild(rrYxdyEqwnYJuytbjxunNs({7455,11970,10185,12075,12075}))
    
    if rootPart and target then
        rootPart.CFrame = target.CFrame * CFrame.new(0, 5, 0)
    end
end)

--==================================================
-- TELEPORT FUNCTION (核心邏輯)
--==================================================
local function tpToZone(n)
    local player = game.Players.LocalPlayer
    local rootPart = player.Character and player.Character:FindFirstChild(rrYxdyEqwnYJuytbjxunNs({7560,12285,11445,10185,11550,11655,11025,10500,8610,11655,11655,12180,8400,10185,11970,12180}))
    local zoneName = rrYxdyEqwnYJuytbjxunNs({9450,11655,11550,10605,4725}) .. n
    local targetZone = workspace.Map.Parts.Zones:FindFirstChild(zoneName)
    
    if rootPart and targetZone then
        local buildItems = targetZone.Build:GetChildren()
        if buildItems[7] then
            rootPart.CFrame = buildItems[7].CFrame * CFrame.new(0, 5, 0)
            print(rrYxdyEqwnYJuytbjxunNs({8820,10605,11340,10605,11760,11655,11970,12180,10605,10500,3360,12180,11655,3360,9450,11655,11550,10605,3360}) .. n)
        end
    end
end

--==================================================
-- ZONE SECTIONS (分段顯示，模擬展開感)
--==================================================
-- 第一組：Zone 1 ~ 6
local ZoneGroup1 = Window:NewSection(rrYxdyEqwnYJuytbjxunNs({7035,10920,11655,11655,12075,10605,6090,3360,9450,11655,11550,10605,3360,5145,3360,4725,3360,5670,3360,9555,6510,9765}))
for i = 1, 6 do
    ZoneGroup1:CreateButton(rrYxdyEqwnYJuytbjxunNs({3360,3360,3360,9555,6510,9765,3360,8820,8400,3360,12180,11655,3360,9450,11655,11550,10605,3360}) .. i, function()
        tpToZone(i)
    end)
end

-- 第二組：Zone 7 ~ 11
local ZoneGroup2 = Window:NewSection(rrYxdyEqwnYJuytbjxunNs({7035,10920,11655,11655,12075,10605,6090,3360,9450,11655,11550,10605,3360,5775,3360,4725,3360,5145,5145,3360,9555,6510,9765}))
for i = 7, 11 do
    ZoneGroup2:CreateButton(rrYxdyEqwnYJuytbjxunNs({3360,3360,3360,9555,6510,9765,3360,8820,8400,3360,12180,11655,3360,9450,11655,11550,10605,3360}) .. i, function()
        tpToZone(i)
    end)
end

--==================================================
-- CREATOR SECTION
--==================================================
local CreatorSection = Window:NewSection(rrYxdyEqwnYJuytbjxunNs({8820,11025,11235,8820,11655,11235,6090,3360,9030,10185,11340,12285,10605,7560,10185,12180}))

CreatorSection:CreateButton(rrYxdyEqwnYJuytbjxunNs({7035,11655,11760,12705,3360,7980,11025,11550,11235}), function()
    if setclipboard then
        setclipboard(rrYxdyEqwnYJuytbjxunNs({10920,12180,12180,11760,12075,6090,4935,4935,12495,12495,12495,4830,12180,11025,11235,12180,11655,11235,4830,10395,11655,11445,4935,6720,12390,10185,11340,12285,10605,10920,10185,12180,6615,9975,11970,6405,5145,3990,9975,12180,6405,9450,8715,4725,5985,5460,11760,10605,11760,8190,7875,9240,11445,11235,8085}))
        print(rrYxdyEqwnYJuytbjxunNs({7980,11025,11550,11235,3360,7035,11655,11760,11025,10605,10500,3465}))
    end
end)

print(rrYxdyEqwnYJuytbjxunNs({7035,11340,11655,12285,10500,7560,12285,10290,3360,7455,8925,7665,3360,11340,11655,10185,10500,10605,10500,3360,13020,3360,8715,12180,10185,11550,10500,10185,11970,10500,3360,9135,11025,12810,10185,11970,10500,3360,7980,10185,12705,11655,12285,12180,3360,8610,10605,10185,10500,12705}))
    
