--!strict
-- ReplicatedStorage/Juice.luau  (ModuleScript, require from LocalScripts)
-- Technique: "every action answers back". Game-feel videos agree a tiny squash,
-- sound and number pop on each action is what makes a simple loop feel good.
-- Respects the player's Reduce Motion setting.

local GuiService = game:GetService("GuiService")
local TweenService = game:GetService("TweenService")

local Juice = {}

local function reduced(): boolean
	local ok, value = pcall(function()
		return GuiService.ReducedMotionEnabled
	end)
	return ok and value == true
end

-- Button press feedback: shrink on press, bounce back on release. Works on touch,
-- mouse and gamepad because it uses Activated, not hover.
function Juice.button(button: GuiButton, onActivated: () -> ())
	local scale = (button:FindFirstChildOfClass("UIScale") or Instance.new("UIScale")) :: UIScale
	scale.Parent = button
	local function to(value: number, time: number)
		if reduced() then
			scale.Scale = 1
			return
		end
		TweenService:Create(scale, TweenInfo.new(time, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = value }):Play()
	end
	button.MouseButton1Down:Connect(function() to(0.92, 0.06) end)
	button.MouseButton1Up:Connect(function() to(1, 0.12) end)
	button.MouseLeave:Connect(function() to(1, 0.12) end)
	button.Activated:Connect(onActivated)
end

-- Floating "+N" text above a part (coins collected, damage dealt).
function Juice.popNumber(adornee: BasePart, text: string, color: Color3?)
	local gui = Instance.new("BillboardGui")
	gui.Size = UDim2.fromScale(3, 1.2)
	gui.StudsOffset = Vector3.new(0, 2.5, 0)
	gui.AlwaysOnTop = true
	gui.Adornee = adornee

	local label = Instance.new("TextLabel")
	label.Size = UDim2.fromScale(1, 1)
	label.BackgroundTransparency = 1
	label.Text = text
	label.TextScaled = true
	label.TextColor3 = color or Color3.fromRGB(255, 221, 87)
	label.FontFace = Font.fromEnum(Enum.Font.FredokaOne)
	label.Parent = gui

	local stroke = Instance.new("UIStroke")
	stroke.Thickness = 2
	stroke.Parent = label

	gui.Parent = adornee
	if reduced() then
		task.delay(0.6, gui.Destroy, gui)
		return
	end
	local info = TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	TweenService:Create(gui, info, { StudsOffset = Vector3.new(0, 4.5, 0) }):Play()
	TweenService:Create(label, info, { TextTransparency = 1 }):Play()
	TweenService:Create(stroke, info, { Transparency = 1 }):Play()
	task.delay(0.75, gui.Destroy, gui)
end

return Juice
