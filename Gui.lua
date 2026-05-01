--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

local LMG2L = {};

-- 1. 基礎視窗
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- 2. 主框架 (完全保留原本樣式)
LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"]);
LMG2L["Frame_2"]["BorderSizePixel"] = 0;
LMG2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 20);
LMG2L["Frame_2"]["Size"] = UDim2.new(0, 376, 0, 208);
LMG2L["Frame_2"]["Position"] = UDim2.new(0, 174, 0, 18);
LMG2L["Frame_2"]["BackgroundTransparency"] = 0.3;
Instance.new("UICorner", LMG2L["Frame_2"]);
Instance.new("UIDragDetector", LMG2L["Frame_2"]);

-- 3. 標題欄 (對應 scriptName_10)
LMG2L["scriptName_10"] = Instance.new("TextLabel", LMG2L["Frame_2"]);
LMG2L["scriptName_10"]["Size"] = UDim2.new(0, 308, 0, 30);
LMG2L["scriptName_10"]["Position"] = UDim2.new(0, 8, 0, 6);
LMG2L["scriptName_10"]["BackgroundColor3"] = Color3.fromRGB(183, 183, 183);
LMG2L["scriptName_10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["scriptName_10"]["Text"] = "Default Title"; -- 預設文字
LMG2L["scriptName_10"]["TextSize"] = 15;
Instance.new("UICorner", LMG2L["scriptName_10"]);

-- 4. 按鈕容器 (Main_5)
LMG2L["scriptHere_3"] = Instance.new("Frame", LMG2L["Frame_2"]);
LMG2L["scriptHere_3"]["Size"] = UDim2.new(0, 250, 0, 150);
LMG2L["scriptHere_3"]["Position"] = UDim2.new(0, 12, 0, 44);
LMG2L["scriptHere_3"]["BackgroundTransparency"] = 1;

LMG2L["Main_5"] = Instance.new("ScrollingFrame", LMG2L["scriptHere_3"]);
LMG2L["Main_5"]["Size"] = UDim2.new(0, 250, 0, 152);
LMG2L["Main_5"]["BackgroundColor3"] = Color3.fromRGB(183, 183, 183);
LMG2L["Main_5"]["BorderSizePixel"] = 0;
LMG2L["Main_5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
LMG2L["Main_5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
Instance.new("UICorner", LMG2L["Main_5"]);

local List = Instance.new("UIListLayout", LMG2L["Main_5"]);
List.Padding = UDim.new(0, 6);
List.HorizontalAlignment = Enum.HorizontalAlignment.Center;
List.SortOrder = Enum.SortOrder.LayoutOrder;

-- 5. 縮小功能
LMG2L["closegui_c"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["closegui_c"]["Size"] = UDim2.new(0, 42, 0, 30);
LMG2L["closegui_c"]["Position"] = UDim2.new(0, 326, 0, 6);
LMG2L["closegui_c"]["Text"] = "X";
Instance.new("UICorner", LMG2L["closegui_c"]);

local isMin = false
LMG2L["closegui_c"].MouseButton1Click:Connect(function()
    isMin = not isMin
    LMG2L["closegui_c"].Text = isMin and "+" or "X"
    LMG2L["Frame_2"]:TweenSize(isMin and UDim2.new(0, 376, 0, 42) or UDim2.new(0, 376, 0, 208), "Out", "Quad", 0.3, true)
    for _, v in pairs(LMG2L["Frame_2"]:GetChildren()) do
        if v:IsA("GuiObject") and v ~= LMG2L["closegui_c"] and v ~= LMG2L["scriptName_10"] then
            v.Visible = not isMin
        end
    end
end)

-- 6. 保留原本的裝飾 (Creator, Image)
local Creator = Instance.new("TextLabel", LMG2L["Frame_2"]);
Creator.Size = UDim2.new(0, 86, 0, 22);
Creator.Position = UDim2.new(0, 278, 0, 136);
Creator.Text = "Creator";
Instance.new("UICorner", Creator);

local ShibaImg = Instance.new("ImageButton", LMG2L["Frame_2"]);
ShibaImg.Image = "rbxassetid://85965578049367";
ShibaImg.Size = UDim2.new(0, 86, 0, 78);
ShibaImg.Position = UDim2.new(0, 280, 0, 50);

--- ✨【這就是你想要的短指令包裝】✨ ---

-- 🚀 指令 1: 改標題 (ScriptName)
function LMG2L:SetTitle(text)
    LMG2L["scriptName_10"].Text = text
end

-- 🚀 指令 2: 加按鈕 (Button)
function LMG2L:AddButton(text, callback)
    local b = Instance.new("TextButton", LMG2L["Main_5"])
    b.Size = UDim2.new(0, 232, 0, 32)
    b.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
    b.TextColor3 = Color3.fromRGB(251, 251, 251)
    b.Text = text
    b.BorderSizePixel = 0
    Instance.new("UICorner", b)
    b.MouseButton1Click:Connect(function() pcall(callback) end)
    return b
end

return LMG2L
