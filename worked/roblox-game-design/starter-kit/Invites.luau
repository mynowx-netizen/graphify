--!strict
-- ReplicatedStorage/Invites.luau  (ModuleScript, require from your UI LocalScript)
-- Technique: "make it social". Co-play is a Home ranking signal, and the dev-story
-- videos credit friends inviting friends for most organic growth.
-- Put a big "Invite friends" button where players are having fun (lobby, win screen).
-- The invite carries launch data so the friend spawns next to the inviter.

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local SocialService = game:GetService("SocialService")

local player = Players.LocalPlayer

local function invite()
	local okCan, canSend = pcall(SocialService.CanSendGameInviteAsync, SocialService, player)
	if not (okCan and canSend) then
		return
	end
	local options = Instance.new("ExperienceInviteOptions")
	options.PromptMessage = "Bring a friend. You both get a bonus!"
	options.LaunchData = HttpService:JSONEncode({ inviter = player.UserId }) -- max 200 characters
	SocialService:PromptGameInvite(player, options)
end

-- From a LocalScript: local invite = require(ReplicatedStorage.Invites)
-- Juice.button(inviteButton, invite)
return invite
