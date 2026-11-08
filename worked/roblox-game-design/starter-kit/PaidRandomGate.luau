--!strict
-- ServerScriptService/PaidRandomGate.luau  (ModuleScript)
-- Technique: "monetize honestly". If eggs/crates/spins/luck boosts can be bought
-- with Robux (directly or through a currency bought with Robux), Roblox requires:
--   * every outcome's odds shown as numbers that add up to 100% BEFORE purchase,
--   * no "nothing" outcome,
--   * an alternative (earn it by playing, fixed order, or direct purchase) for
--     players in places where paid random items are restricted.
-- Call canBuyPaidRandom(player) before showing the Robux button.

local PolicyService = game:GetService("PolicyService")

local Gate = {}
local cache: { [Player]: boolean } = {}

function Gate.canBuyPaidRandom(player: Player): boolean
	if cache[player] ~= nil then
		return cache[player]
	end
	local ok, info = pcall(PolicyService.GetPolicyInfoForPlayerAsync, PolicyService, player)
	-- If the policy lookup fails, assume restricted (safe default).
	local allowed = ok and type(info) == "table" and info.ArePaidRandomItemsRestricted == false
	cache[player] = allowed
	return allowed
end

game:GetService("Players").PlayerRemoving:Connect(function(player)
	cache[player] = nil
end)

-- Purchases themselves: copy Roblox's official ProcessReceipt sample (UpdateAsync on
-- receipt.PurchaseId, grant inside the callback, return PurchaseGranted only after
-- the grant is recorded). It is in the MarketplaceService.ProcessReceipt reference:
-- https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#ProcessReceipt

return Gate
