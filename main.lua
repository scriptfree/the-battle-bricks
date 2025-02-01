local OrionLib = loadstring(game:HttpGet(('https://pastebin.com/raw/vaRMeAp8')))()
local Window = OrionLib:MakeWindow({Name = "The Battle Bricks", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "HEY!",
	Content = "Script loaded successfully.",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Autofarm"
})

Tab:AddToggle({
	Name = "Auto spawn unit 1",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		while getgenv().AutoSpawn do
			local args = {
				"Slot1"
			}
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
			wait(0.5)
		end
	end    
})

Tab:AddToggle({
	Name = "Auto spawn unit 2",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		while getgenv().AutoSpawn do
			local args = {
				"Slot2"
			}
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
			wait(0.5)
		end
	end    
})

Tab:AddToggle({
	Name = "Auto spawn unit 3",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		while getgenv().AutoSpawn do
			local args = {
				"Slot3"
			}
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
			wait(0.5)
		end
	end    
})

Tab:AddToggle({
	Name = "Auto spawn unit 4",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		while getgenv().AutoSpawn do
			local args = {
				"Slot4"
			}
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
			wait(0.5)
		end
	end    
})

Tab:AddToggle({
	Name = "Auto fire canon",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		while getgenv().AutoSpawn do
			local args = {
	"Cannon"
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
			wait(0.5)
		end
	end    
})

Tab:AddToggle({
	Name = "Auto upgrade bank",
	Default = false,
	Callback = function(Value)
		getgenv().AutoSpawn = Value
		while getgenv().AutoSpawn do
			local args = {
	"Bank"
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("PlayerSpawn"):InvokeServer(unpack(args))
			wait(0.5)
		end
	end    
})
