spawn(function()
	while task.wait() do
		if true then
			pcall(function()
				for i,v in pairs(workspace.Interactable.Farm:GetChildren()) do
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Watering vegetables") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Watering vegetables")) and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Seeds Bag") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Seeds Bag")) then
						if v:FindFirstChild("Collectable").Transparency == 0 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Collectable").CFrame * CFrame.new(0,0,5)
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
						elseif v:FindFirstChild("UnCollectable").Transparency == 0 then
							game.Players.LocalPlayer.Character.Humanoid:EquipTool("Watering vegetables")
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Collectable").CFrame * CFrame.new(0,0,5)
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
						elseif v:FindFirstChild("UnCollectable").Transparency == 1 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Collectable").CFrame * CFrame.new(0,0,5)
							game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
						else
							return
						end
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Watering vegetables") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Watering vegetables") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1117.89697265625, 20.104951858520508, 2999.314208984375)
						task.wait(1)
						game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
					else
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-928.5620727539062, 20.104961395263672, 3023.774169921875)
						task.wait(1)
						game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
					end
				end
			end)
		end
	end 
end)