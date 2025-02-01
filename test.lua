local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/vaRMeAp8')))()
local Window = OrionLib:MakeWindow({Name = "The Battle Bricks", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "HEY!",
	Content = "Script loaded successfully.",
	Image = "rbxassetid://17829956110",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4034483344",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Autofarm"
})

-- Dropdown to select chapter
Tab:AddDropdown({
	Name = "Chapter", 
	Default = "Chapter1", 
	Options = {"Chapter1", "Chapter2", "Chapter3"}, 
	Callback = function(Value)
		getgenv().SelectedChapter = Value
	end    
})

-- Dropdown to select stage (1-30)
Tab:AddDropdown({
	Name = "Stage", 
	Default = "1", 
	Options = {
		"1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
		"11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
		"21", "22", "23", "24", "25", "26", "27", "28", "29", "30"
	}, 
	Callback = function(Value)
		getgenv().SelectedStage = tonumber(Value) -- Convert to number for safety
	end    
})

-- Auto replay stage
Tab:AddToggle({
	Name = "Auto replay stage",
	Default = false,
	Callback = function(Value)
		getgenv().AutoReplay = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoReplay do
					local success, err = pcall(function()
						local args = {
							getgenv().SelectedChapter or "Chapter1",  -- Use selected chapter, default to Chapter1
							getgenv().SelectedStage or 1,             -- Use selected stage, default to 1
							2,
							1,
							false,
							{},
							false
						}
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("StartBattle"):InvokeServer(unpack(args))
					end)
					
					if not success then
						warn("Error in AutoReplay:", err)
					end

					wait(1) -- Adjust the interval as needed
				end
			end)
		end
	end    
})
