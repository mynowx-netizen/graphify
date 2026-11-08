--!strict
-- ServerScriptService/Tuning.luau  (ModuleScript)
-- Technique: "prototype fast, then tune live". Every number players feel (XP curve,
-- reward size, prices in soft currency, hint delay) lives in Experience Configs, so
-- you can retune or A/B test it from Creator Hub without republishing.
-- The DEFAULTS table keeps the game working in Studio and if Configs fail.

local ConfigService = game:GetService("ConfigService")

local DEFAULTS = {
	xp_base = 25,          -- XP needed for level 2
	xp_exponent = 1.35,    -- >1 = fast early levels, slower later (what the loop videos recommend)
	hint_delay_s = 10,     -- seconds before a stuck new player sees a hint
	daily_reward_coins = 50,
}

local Tuning = {}

-- Per-player values, so Experiments can give different players different values.
function Tuning.forPlayer(player: Player)
	local ok, snapshot = pcall(ConfigService.GetConfigForPlayerAsync, ConfigService, player)
	return function(key: string): any
		if ok and snapshot then
			local value = snapshot:GetValue(key)
			if value ~= nil then
				return value
			end
		end
		return (DEFAULTS :: any)[key]
	end
end

-- XP needed to go from `level` to `level + 1`.
function Tuning.xpToNext(get: (string) -> any, level: number): number
	return math.floor(get("xp_base") * level ^ get("xp_exponent"))
end

return Tuning
