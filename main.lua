-- Load OrionLib (make sure this is loaded first)
local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/vaRMeAp8')))()
local Window = OrionLib:MakeWindow({Name = "The Battle Bricks", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

-- Show initial notification
OrionLib:MakeNotification({
	Name = "HEY!",
	Content = "Script loaded successfully.",
	Image = "rbxassetid://17829956110",
	Time = 5
})

-- Create the 'Main' tab
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4034483344",
	PremiumOnly = false
})

-- Add a section under the 'Main' tab
local Section = Tab:AddSection({
	Name = "Autofarm"
})

-- Add a dropdown for selecting chapter
Tab:AddDropdown({
	Name = "Chapter", 
	Default = "Chapter1", 
	Options = {"Chapter1", "Chapter2", "Chapter3"}, 
	Callback = function(Value)
		getgenv().SelectedChapter = Value
	end    
})

-- Add a Textbox for selecting the stage
Tab:AddTextbox({
    Name = "Stage", 
    Default = "1", 
    TextDisappear = false, 
    Callback = function(Value)
        -- Check if the entered value is a number
        local num = tonumber(Value)
        if num and num >= 1 and num <= 30 then
            -- If valid, set the stage to the entered number
            getgenv().SelectedStage = num
        else
            -- If invalid, print an error message and reset to default
            warn("Please enter a number between 1 and 30.")
            getgenv().SelectedStage = 1 -- Default to 1 if invalid
        end
    end  
})

-- Add toggle for auto replay stage
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
							getgenv().SelectedChapter or "Chapter1",  -- Default to Chapter1 if no selection
							getgenv().SelectedStage or 1,             -- Default to Stage 1 if no input
							2,
							1,
							false,
							{},
							false
						}
						-- Trigger battle start event
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("StartBattle"):InvokeServer(unpack(args))
					end)
					
					if not success then
						warn("Error in AutoReplay:", err)
					end

					wait(1) -- Wait before trying again
				end
			end)
		end
	end    
})

-- Add toggle for auto spawn unit 1
Tab:AddToggle({
	Name = "Auto spawn unit 1",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = { "Slot1" }
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
					end)
					
					if not success then
						warn("Error in AutoSpawn:", err)
					end

					wait(0.5) -- Adjust the interval as needed
				end
			end)
		end
	end    
})

-- Add toggle for auto spawn unit 2
Tab:AddToggle({
	Name = "Auto spawn unit 2",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = { "Slot2" }
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
					end)
					
					if not success then
						warn("Error in AutoSpawn:", err)
					end

					wait(0.5) -- Adjust the interval as needed
				end
			end)
		end
	end    
})

-- Add toggle for auto spawn unit 3
Tab:AddToggle({
	Name = "Auto spawn unit 3",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = { "Slot3" }
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
					end)
					
					if not success then
						warn("Error in AutoSpawn:", err)
					end

					wait(0.5) -- Adjust the interval as needed
				end
			end)
		end
	end    
})

-- Add toggle for auto spawn unit 4
Tab:AddToggle({
	Name = "Auto spawn unit 4",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = { "Slot4" }
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
					end)
					
					if not success then
						warn("Error in AutoSpawn:", err)
					end

					wait(0.5) -- Adjust the interval as needed
				end
			end)
		end
	end    
})

-- Add toggle for auto fire canon
Tab:AddToggle({
	Name = "Auto fire canon",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = { "Cannon" }
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
					end)
					
					if not success then
						warn("Error in AutoSpawn:", err)
					end

					wait(1) -- Adjust the interval as needed
				end
			end)
		end
	end    
})

-- Add toggle for auto upgrade bank
Tab:AddToggle({
	Name = "Auto upgrade bank",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = { "Bank" }
						game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
					end)
					
					if not success then
						warn("Error in AutoSpawn:", err)
					end

					wait(1) -- Adjust the interval as needed
				end
			end)
		end
	end    
})

-- Initialize the UI
OrionLib:Init()
