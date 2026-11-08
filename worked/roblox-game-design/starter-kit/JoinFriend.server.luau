--!strict
-- ServerScriptService/JoinFriend.server.luau
-- Reads the launch data from Invites.luau and spawns the invited friend next
-- to the person who invited them. Reward both players with something cosmetic or
-- a small boost; never lock gameplay behind inviting.

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
	local joinData = player:GetJoinData()
	local raw = joinData and joinData.LaunchData
	if type(raw) ~= "string" or raw == "" then
		return
	end
	local ok, data = pcall(HttpService.JSONDecode, HttpService, raw)
	if not ok or type(data) ~= "table" or type(data.inviter) ~= "number" then
		return
	end
	local inviter = Players:GetPlayerByUserId(data.inviter)
	if not inviter then
		return -- inviter is in another server; consider TeleportService later
	end
	player.CharacterAdded:Once(function(character)
		local target = inviter.Character and inviter.Character:FindFirstChild("HumanoidRootPart")
		if target and target:IsA("BasePart") then
			task.wait() -- let the character finish spawning
			character:PivotTo(target.CFrame * CFrame.new(4, 0, 0))
		end
	end)
	-- TODO: grant the "came with a friend" bonus to both players here.
end)
