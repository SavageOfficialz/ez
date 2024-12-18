spawn(function()
	while wait() do 
		pcall(function()
			game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
      game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
      game:GetService("VirtualInputManager"):SendKeyEvent(true, "X", false, game)
      game:GetService("VirtualInputManager"):SendKeyEvent(false, "X", false, game)
      game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
      game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
      game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
      game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
		end)
	end
end)
