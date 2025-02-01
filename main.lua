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

Tab:AddToggle({
	Name = "Auto replay stage 2",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = {
	"Chapter1",
	2,
	2,
	1,
	false,
	{},
	false
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("StartBattle"):InvokeServer(unpack(args))
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

Tab:AddToggle({
	Name = "Auto fire canon",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = {
	"Cannon"
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
					
					if not success then
						warn("Error in AutoSpawn:", err)
					end

					wait(1) -- Adjust the interval as needed
				end
			end)
		end
	end    
})

		Tab:AddToggle({
	Name = "Auto upgrade bank",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		
		if Value then
			task.spawn(function()
				while getgenv().AutoSpawn do
					local success, err = pcall(function()
						local args = {
	"Bank"
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
					
					if not success then
						warn("Error in AutoSpawn:", err)
					end

					wait(1) -- Adjust the interval as needed
				end
			end)
		end
	end    
})

OrionLib:Init()
