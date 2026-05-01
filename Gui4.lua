--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

local LMG2L = {};

-- Players.pss2275.PlayerGui.ScreenGui
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- Players.pss2275.PlayerGui.ScreenGui.Frame
LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"]);
LMG2L["Frame_2"]["BorderSizePixel"] = 0;
LMG2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(20, 20, 20);
LMG2L["Frame_2"]["Size"] = UDim2.new(0, 376, 0, 208);
LMG2L["Frame_2"]["Position"] = UDim2.new(0, 174, 0, 18);
LMG2L["Frame_2"]["BackgroundTransparency"] = 0.3;

-- Players.pss2275.PlayerGui.ScreenGui.Frame.scriptHere
LMG2L["scriptHere_3"] = Instance.new("Frame", LMG2L["Frame_2"]);
LMG2L["scriptHere_3"]["BorderSizePixel"] = 0;
LMG2L["scriptHere_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["scriptHere_3"]["Size"] = UDim2.new(0, 250, 0, 150);
LMG2L["scriptHere_3"]["Position"] = UDim2.new(0, 12, 0, 44);
LMG2L["scriptHere_3"]["Name"] = [[scriptHere]];

-- Players.pss2275.PlayerGui.ScreenGui.Frame.scriptHere.UICorner
LMG2L["UICorner_4"] = Instance.new("UICorner", LMG2L["scriptHere_3"]);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.scriptHere.Main
LMG2L["Main_5"] = Instance.new("ScrollingFrame", LMG2L["scriptHere_3"]);
LMG2L["Main_5"]["BorderSizePixel"] = 0;
LMG2L["Main_5"]["BackgroundColor3"] = Color3.fromRGB(110, 110, 110);
LMG2L["Main_5"]["Name"] = [[Main]];
LMG2L["Main_5"]["Size"] = UDim2.new(0, 250, 0, 152);
LMG2L["Main_5"]["BorderColor3"] = Color3.fromRGB(107, 107, 107);
LMG2L["Main_5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y; -- 讓捲動區域自動變長
LMG2L["Main_5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

-- ✨ 修正：將 UIListLayout 的父級改到 Main_5，按鈕才會自動排版
LMG2L["UIListLayout_9"] = Instance.new("UIListLayout", LMG2L["Main_5"]);
LMG2L["UIListLayout_9"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
LMG2L["UIListLayout_9"]["Padding"] = UDim.new(0, 5);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.scriptHere.Main.UICorner
LMG2L["UICorner_8"] = Instance.new("UICorner", LMG2L["Main_5"]);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.Creator
LMG2L["Creator_a"] = Instance.new("TextLabel", LMG2L["Frame_2"]);
LMG2L["Creator_a"]["BorderSizePixel"] = 0;
LMG2L["Creator_a"]["BackgroundColor3"] = Color3.fromRGB(169, 169, 169);
LMG2L["Creator_a"]["Size"] = UDim2.new(0, 86, 0, 22);
LMG2L["Creator_a"]["Text"] = [[Creator]];
LMG2L["Creator_a"]["Name"] = [[Creator]];
LMG2L["Creator_a"]["Position"] = UDim2.new(0, 278, 0, 136);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.Creator.UICorner
LMG2L["UICorner_b"] = Instance.new("UICorner", LMG2L["Creator_a"]);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.closegui
LMG2L["closegui_c"] = Instance.new("TextButton", LMG2L["Frame_2"]);
LMG2L["closegui_c"]["BorderSizePixel"] = 0;
LMG2L["closegui_c"]["TextSize"] = 15;
LMG2L["closegui_c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["closegui_c"]["Size"] = UDim2.new(0, 42, 0, 30);
LMG2L["closegui_c"]["Text"] = [[X]];
LMG2L["closegui_c"]["Name"] = [[closegui]];
LMG2L["closegui_c"]["Position"] = UDim2.new(0, 326, 0, 6);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.closegui.UICorner
LMG2L["UICorner_d"] = Instance.new("UICorner", LMG2L["closegui_c"]);

LMG2L["LocalScript_e"] = Instance.new("LocalScript", LMG2L["closegui_c"]);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.UICorner
LMG2L["UICorner_f"] = Instance.new("UICorner", LMG2L["Frame_2"]);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.scriptName
LMG2L["scriptName_10"] = Instance.new("TextLabel", LMG2L["Frame_2"]);
LMG2L["scriptName_10"]["BorderSizePixel"] = 0;
LMG2L["scriptName_10"]["TextSize"] = 15;
LMG2L["scriptName_10"]["BackgroundColor3"] = Color3.fromRGB(183, 183, 183);
LMG2L["scriptName_10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["scriptName_10"]["Size"] = UDim2.new(0, 308, 0, 30);
LMG2L["scriptName_10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["scriptName_10"]["Text"] = [[]];
LMG2L["scriptName_10"]["Name"] = [[scriptName]];
LMG2L["scriptName_10"]["Position"] = UDim2.new(0, 8, 0, 6);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.scriptName.UICorner
LMG2L["UICorner_11"] = Instance.new("UICorner", LMG2L["scriptName_10"]);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.ImageButton
LMG2L["ImageButton_13"] = Instance.new("ImageButton", LMG2L["Frame_2"]);
LMG2L["ImageButton_13"]["BorderSizePixel"] = 0;
LMG2L["ImageButton_13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ImageButton_13"]["Image"] = [[rbxassetid://85965578049367]];
LMG2L["ImageButton_13"]["Size"] = UDim2.new(0, 86, 0, 78);
LMG2L["ImageButton_13"]["Position"] = UDim2.new(0, 280, 0, 50);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.TextLabel
LMG2L["TextLabel_14"] = Instance.new("TextLabel", LMG2L["Frame_2"]);
LMG2L["TextLabel_14"]["BorderSizePixel"] = 0;
LMG2L["TextLabel_14"]["TextSize"] = 13;
LMG2L["TextLabel_14"]["BackgroundColor3"] = Color3.fromRGB(168, 168, 168);
LMG2L["TextLabel_14"]["Size"] = UDim2.new(0, 84, 0, 28);
LMG2L["TextLabel_14"]["Text"] = [[ValueHat]];
LMG2L["TextLabel_14"]["Position"] = UDim2.new(0, 278, 0, 166);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.TextLabel.UICorner
LMG2L["UICorner_15"] = Instance.new("UICorner", LMG2L["TextLabel_14"]);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.UIDragDetector
LMG2L["UIDragDetector_16"] = Instance.new("UIDragDetector", LMG2L["Frame_2"]);

-- Players.pss2275.PlayerGui.ScreenGui.Frame.closegui.LocalScript
local function C_e()
	local script = LMG2L["LocalScript_e"];
	local button = script.Parent
	local frame = button.Parent
	local title = frame:WaitForChild("scriptName")
	
	local isMinimized = false	
	local originalSize = UDim2.new(0, 376, 0, 208)	
	local minimizedSize = UDim2.new(0, 376, 0, 42)	
	
	button.MouseButton1Click:Connect(function()	
		isMinimized = not isMinimized	
		button.Text = isMinimized and "+" or "X"	
		frame:TweenSize(targetSize, "Out", "Quad", 0.3, true)	
		for _, child in pairs(frame:GetChildren()) do	
			if child ~= button and child ~= title and child:IsA("GuiObject") then	
				child.Visible = not isMinimized	
			end	
		end	
	end)	
end;
task.spawn(C_e);

--- 🚀【短指令系統】---

function LMG2L:SetTitle(text)
    if LMG2L["scriptName_10"] then
        LMG2L["scriptName_10"].Text = text
    end
end

function LMG2L:AddButton(text, callback)
    local btn = Instance.new("TextButton")
    btn.Name = "ValueButton_" .. text
    btn.Parent = LMG2L["Main_5"] 
    btn.Size = UDim2.new(0, 232, 0, 32)
    btn.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
    btn.TextColor3 = Color3.fromRGB(251, 251, 251)
    btn.Text = text
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 14
    btn.BorderSizePixel = 0
    Instance.new("UICorner", btn)
    btn.MouseButton1Click:Connect(function()
        pcall(callback)
    end)
    return btn
end

function LMG2L:SetCreator(text)
    if LMG2L["TextLabel_14"] then
        LMG2L["TextLabel_14"].Text = text
    end
end

-- ✨ 最終修正：必須回傳整個表格，外部才能抓到 AddButton
return LMG2L
