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
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
