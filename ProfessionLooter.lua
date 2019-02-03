local WelcomeFrame, events = CreateFrame("frame", "ProfessionLooterFrame"), {} -- Set up core Frame
WelcomeFrame:RegisterEvent("PLAYER_LOGIN")
WelcomeFrame:RegisterEvent("LOOT_OPENED")
WelcomeFrame:SetScript("OnEvent", function(self, event, ...)
		events[event](self, ...)
	end)
function events:PLAYER_LOGIN(...)
	print("Profession Looter is Running!")
end

--BfA Soulbounds
local soulbounds = {
	"Hydrocore",
	"Sanguicell"
}
-- BfA Ores
local ores = {
	"Monelite Ore",
	"Platinum Ore",
	"Storm Silver Ore"
}
-- BfA Herbs
local herbs = {
	"Siren's Pollen",
	"Winter's Kiss",
	"Akunda's Bite",
	"Riverbud",
	"Sea Stalk",
	"Star Moss",
	"Anchor Weed"
}
-- BfA Leather
local leathers = {
	"Coarse Leather",
	"Tempest Hide",
	"Shimmerscale",
	"Mistscale",
	"Blood-Stained Bone",
	"Calcified Bone"
}
-- BfA Cloth
local cloths = {
	"Tidespray Linen",
	"Deep Sea Satin"
}
-- BfA Fish
local fishes = {
	"Midnight Salmon",
	"Great Sea Catfish",
	"Redtail Loach",
	"Slimy Mackerel",
	"Sand Shifter",
	"Tiragarde Perch",
	"Lane Snapper",
	"Frenzied Fangtooth"
}
-- BfA Food
local foods = {
	"Stringy Loins",
	"Meaty Haunch",
	"Thick Paleo Steak",
	"Briny Flesh"
}
-- BfA Enchants
local enchants = {
	"Gloom Dust",
	"Umbra Shard",
	"Veiled Crystal"
}

function events:LOOT_OPENED(...)
	local lootCount = GetNumLootItems()
	
	for count = 1, lootCount do
		local _, sName, iQuantity, _, iQuality, _, bQuest, _, bActive = GetLootSlotInfo(count) -- Get the item info
		if bQuest or bActive == false then
			LootSlot(count)
			break
		end
		for i, soubound in ipairs(soulbounds) do
			if soubound == sName then
				LootSlot(count)
				break
			end
		end
		for i, ore in ipairs(ores) do
			if ore == sName then
				LootSlot(count)
				break
			end
		end
		for i, herb in ipairs(herbs) do
			if herb == sName then
				LootSlot(count)
				break
			end
		end
		for i, leather in ipairs(leathers) do
			if leather == sName then
				LootSlot(count)
				break
			end
		end
		for i, cloth in ipairs(cloths) do
			if cloth == sName then
				LootSlot(count)
				break
			end
		end
		for i, fish in ipairs(fishes) do
			if fish == sName then
				LootSlot(count)
				break
			end
		end
		for i, food in ipairs(foods) do
			if food == sName then
				LootSlot(count)
				break
			end
		end
		for i, enchant in ipairs(enchants) do
			if enchant == sName then
				LootSlot(count)
				break
			end
		end
	end
end