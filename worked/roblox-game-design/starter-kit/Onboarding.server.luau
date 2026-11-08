--!strict
-- ServerScriptService/Onboarding.server.luau
-- Technique: "get to the fun in under a minute" + "measure the first session".
-- Roblox ranks Home recommendations partly on players who leave in their first
-- 60 s / 61-180 s, so the first session is the most important screen you ship.
--
-- 1. New players start inside the core loop with a starter kit (no long menus).
-- 2. Each first-time step is logged as an onboarding funnel step. Open Creator Hub >
--    Analytics > Funnels to see where new players drop off.
-- Funnel events only work from the server, in a published game (not Studio).

local AnalyticsService = game:GetService("AnalyticsService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Name your steps after the arrows of your core loop. Keep them in order.
local STEPS = {
	"Joined",          -- 1
	"FirstAction",     -- 2  e.g. first swing / first roll / first stage attempt
	"FirstReward",     -- 3  e.g. first coins / first item
	"FirstUpgrade",    -- 4  e.g. bought first upgrade
	"SecondArea",      -- 5  e.g. reached zone 2 / stage 10
}

-- Client scripts fire this when the player does something for the first time.
-- The server only accepts the NEXT step in order, so exploiters can't spam it.
local stepRemote = Instance.new("RemoteEvent")
stepRemote.Name = "OnboardingStep"
stepRemote.Parent = ReplicatedStorage

local nextStep: { [Player]: number } = {}

local function logStep(player: Player, step: number)
	if nextStep[player] ~= step then
		return
	end
	nextStep[player] = step + 1
	-- pcall: analytics must never break gameplay.
	pcall(AnalyticsService.LogOnboardingFunnelStepEvent, AnalyticsService, player, step, STEPS[step])
end

Players.PlayerAdded:Connect(function(player)
	-- TODO: load saved data first and skip onboarding for returning players.
	nextStep[player] = 1
	logStep(player, 1)
	-- TODO: give the starter kit here (starter tool, a little soft currency) so the
	-- first action is possible within seconds of spawning.
end)

Players.PlayerRemoving:Connect(function(player)
	nextStep[player] = nil
end)

-- Server-side gameplay code can call this directly (preferred), e.g. when the
-- server grants the first reward.
stepRemote.OnServerEvent:Connect(function(player, step)
	if typeof(step) == "number" and step >= 2 and step <= #STEPS then
		logStep(player, step)
	end
end)

