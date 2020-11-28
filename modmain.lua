local krampus_sack_ice = GetModConfigData("krampus_sack_ice")
local backpack_ice = GetModConfigData("backpack_ice")
local piggyback_ice = GetModConfigData("piggyback_ice")
local cage_fridge = GetModConfigData("cage_frige")
local cook_pot = GetModConfigData("cook_pot")
local endtable = GetModConfigData("endtable")
local bird_cage = GetModConfigData("bird_cage")

TUNING.PERISH_FRIDGE_MULT = GetModConfigData("icebox_freeze")
TUNING.PERISH_SALTBOX_MULT = GetModConfigData("saltlicker")
TUNING.PERISH_MUSHROOM_LIGHT_MULT = GetModConfigData("mushroom_frige")

if cage_fridge then
	AddPrefabPostInit(
		"sisturn",
		function(inst)
			inst:AddTag("fridge")
			inst:AddTag("nocool")
		end
	)
end
if krampus_sack_ice then
	AddPrefabPostInit(
		"krampus_sack",
		function(inst)
			inst:AddTag("fridge")
			inst:AddTag("nocool")
		end
	)
end

if backpack_ice then
	AddPrefabPostInit(
		"backpack",
		function(inst)
			inst:AddTag("fridge")
			inst:AddTag("nocool")
		end
	)
end

if piggyback_ice then
	AddPrefabPostInit(
		"piggyback",
		function(inst)
			inst:AddTag("fridge")
			inst:AddTag("nocool")
		end
	)
end
if cook_pot then
	AddPrefabPostInit(
		"portablecookpot",
		function(inst)
			if inst.components.stewer then
				inst.components.stewer.onspoil = nil
			end
		end
	)

	AddPrefabPostInit(
		"cookpot",
		function(inst)
			if inst.components.stewer then
				inst.components.stewer.onspoil = nil
			end
		end
	)
end

if bird_cage then
	TUNING.PERISH_CAGE_MULT = 0
else
	TUNING.PERISH_CAGE_MULT = 0.25
end

if endtable then
	TUNING.ENDTABLE_FLOWER_WILTTIME = 30 * 16 * 10000
else
	TUNING.ENDTABLE_FLOWER_WILTTIME = 30 * 16 * 2.25
end
