
--------------------------------------------------------------------------------------------------------------
-- AI AND COUNTRY CHANGES 
--------------------------------------------------------------------------------------------------------------

NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.030
NDefines.NCountry.LOCAL_MANPOWER_ACCESSIBLE_NON_CORE_FACTOR = 0.08
NDefines.NCountry.ARMY_IMPORTANCE_FACTOR = 10.0
NDefines.NCountry.MAX_BOMBING_WAR_SUPPORT_IMPACT = -0.3
--------------------------------------------------------------------------------------------------------------
-- MILITARY EXPERIENCE 
--------------------------------------------------------------------------------------------------------------

NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 2500
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 2500
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 2500

NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 0 	--Base cost to unlock a regiment slot,
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 0	--Base cost to change a regiment column.
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 0 	--Base cost to unlock a support slot

NDefines.NMilitary.LAND_EQUIPMENT_BASE_COST = 3				-- Cost in XP to upgrade a piece of equipment one level is base + ( total levels * ramp )
NDefines.NMilitary.LAND_EQUIPMENT_RAMP_COST = 0					
NDefines.NMilitary.NAVAL_EQUIPMENT_BASE_COST = 1
NDefines.NMilitary.NAVAL_EQUIPMENT_RAMP_COST = 0
NDefines.NMilitary.AIR_EQUIPMENT_BASE_COST = 1
NDefines.NMilitary.AIR_EQUIPMENT_RAMP_COST = 0

NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 0.0				-- XP cost for adding a new equipment module in an empty slot when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 0.0				-- XP cost for replacing one equipment module with an unrelated module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 0.0				-- XP cost for converting one equipment module to a related module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 0.0


NDefines.NMilitary.ARMY_LEADER_XP_GAIN_PER_UNIT_IN_COMBAT = 0.15 ---MOD was 2.0 should half the increase

NDefines.NMilitary.COMBAT_STACKING_PENALTY = -0.16
NDefines.NMilitary.BASE_CAPTURE_EQUIPMENT_RATIO = 0.025
NDefines.NMilitary.ENCIRCLED_PENALTY = -0.45
NDefines.NMilitary.MULTIPLE_COMBATS_PENALTY = -0.25

NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_SPEED_IMPACT = -0.15
NDefines.NMilitary.FUEL_CAPACITY_DEFAULT_HOURS = 144
NDefines.NMilitary.INITIATIVE_PICK_COUNTER_ADVANTAGE_FACTOR  = 0.75

NDefines.NMilitary.PIERCING_THRESHOLDS = {					-- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
		1.15,
		1.00,
		0.85,
		0.70,
		0.50,
		0.00,
	}
	
NDefines.NMilitary.PIERCING_THRESHOLD_DAMAGE_VALUES = {	-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
		1.25,
		1.00,
		0.80,
		0.65,
		0.55,
		0.45,
	}



--- War Score ---
NDefines.NMilitary.WAR_SCORE_AIR_IC_LOSS_FACTOR = 0.025						-- war score gained for every IC of damage done to an enemy's air mission
NDefines.NMilitary.WAR_SCORE_LAND_DAMAGE_FACTOR = 0.01          				-- war score gained for every strengh damage done to an enemy's army
NDefines.NMilitary.WAR_SCORE_LAND_IC_LOSS_FACTOR = 0.01         				-- war score gained for every IC damage done to an enemy's army

--------------------------------------------------------------------------------------------------------------
-- AIR COMBAT REWORK
--------------------------------------------------------------------------------------------------------------

NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.04
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 200
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 200
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 2000
NDefines.NAir.AIR_WING_MAX_STATS_BOMBING = 200
NDefines.NAir.BIGGEST_AGILITY_FACTOR_DIFF = 5.0
NDefines.NAir.AIR_DEPLOYMENT_DAYS = 1	-- #MOD-- was 2,				-- Days to deploy one air wing
--# I hate this so much!

NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR = 0.15
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR = 0.04
NDefines.NAI.LAND_COMBAT_ANTI_LOGISTICS_PER_ENEMY_ARMY = 5     -- Amount of CAS planes requested per enemy army for anti-logistics
NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_FACTOR = 0.5				-- Anti Air Gun Damage factor
NDefines.NAir.CAS_NIGHT_ATTACK_FACTOR = 0.5	-- #MOD-- was 0.1,			-- CAS damaged get multiplied by this in land combats at night
--#large buff to CAS. should result in 36% more CAS damage on average (1.5/1.1) (100% at day + 50% at night is 1.5 for mod, and 1.1 for vanilla)
--#also, CAS was apparently utter trash at night, which means that in timeszones with bad sortie timing, CAS was way weaker than elsewhere. Eastern France, Benelux, and Indian Ocean were such zones). This should now not matter anymore. Also, Land units get -50% at night, why would CAS get -90% instead?

NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_STR = 0.5					-- Balancing value to convert damage ( naval_strike_attack * hits ) to Strength reduction.
NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_ORG = 0.75					-- Balancing value to convert damage ( naval_strike_attack * hits ) to Organisation reduction.
NDefines.NAir.NAVAL_STRIKE_CARRIER_MULTIPLIER = 30.0              -- damage bonus when planes are in naval combat where their carrier is present (and can thus sortie faster and more effectively)
NDefines.NAir.NAVAL_STRIKE_TARGETTING_TO_AMOUNT = 0.5			-- Balancing value to convert the naval_strike_targetting equipment stats to chances of how many airplanes managed to do successfull strike.


--------------------------------------------------------------------------------------------------------------
-- NAVAL COMBAT REWORK
--------------------------------------------------------------------------------------------------------------

NDefines.NNavy.ANTI_AIR_TARGETTING_TO_CHANCE = 0.5		-- Balancing value to convert averaged equipment stats (anti_air_targetting and naval_strike_agility) to probability chances of airplane being hit by navies AA.
NDefines.NNavy.ANTI_AIR_ATTACK_TO_AMOUNT = 0.005			-- Balancing value to convert equipment stat anti_air_attack to the random % value of airplanes being hit.
NDefines.NNavy.NAVAL_COMBAT_RESULT_TIMEOUT_YEARS = 24							-- after that many years we clear the naval combat results so they don't get stuck forever in the memory.
NDefines.NNavy.CONVOY_LOSS_HISTORY_TIMEOUT_MONTHS = 24					-- after this many months remove the history of lost convoys to not bloat savegames and memory since there is no way to see them anyway
NDefines.NNavy.NAVAL_COMBAT_AIR_CAPITAL_TARGET_SCORE = 50
NDefines.NNavy.NAVAL_COMBAT_AIR_CARRIER_TARGET_SCORE = 100
NDefines.NNavy.HIGHER_SHIP_RATIO_POSITIONING_PENALTY_FACTOR	= 0.75 -- if one side has more ships than the other that side will get this penalty for each +100% ship ratio it has
NDefines.NNavy.SUB_DETECTION_CHANCE_BASE_SPOTTING_EFFECT = 1.5			-- effect of base spotting for initial spotting of pure submarine forces. this along with next value is added together and rolled against a random to start spotting
NDefines.NNavy.SUB_DETECTION_CHANCE_SPOTTING_SPEED_EFFECT = 4.0				-- effect of spotting speed for initial spotting of pure submarine forces. this along with prev value is added together and rolled against a random to start spotting
NDefines.NNavy.SUB_DETECTION_CHANCE_BASE_SPOTTING_POW_EFFECT = 3.0	

NDefines.NNavy.ANTI_AIR_POW_ON_INCOMING_AIR_DAMAGE = 0.2	-- received air damage is calculated using following: 1 - ( (ship_anti_air + fleet_anti_air * SHIP_TO_FLEET_ANTI_AIR_RATIO )^ANTI_AIR_POW_ON_INCOMING_AIR_DAMAGE ) * ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE
NDefines.NNavy.ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE	= 0.15
NDefines.NNavy.MAX_ANTI_AIR_REDUCTION_EFFECT_ON_INCOMING_AIR_DAMAGE = 0.5	-- damage reduction for incoming air attacks is clamped to this value at maximum.

NDefines.NNavy.AGGRESSION_SETTINGS_VALUES = { -- ships will use this values while deciding to attack enemies
		0,		-- do not engage
		1.0,	-- low
		1.5,	-- medium
		2.5,	-- high
		10000,	-- I am death incarnate!
	}
	
NDefines.NNavy.WAR_SCORE_GAIN_FOR_SUNK_SHIP_MANPOWER_FACTOR = 0.008			-- war score gained for every manpower killed when sinking a ship
NDefines.NNavy.WAR_SCORE_GAIN_FOR_SUNK_SHIP_PRODUCTION_COST_FACTOR = 0.025		-- war score gained for every IC of the sunk ship
NDefines.NNavy.EXPERIENCE_FACTOR_CARRIER_GAIN = 0.04							-- Xp gain by carrier ships in the combat

NDefines.NNavy.CARRIER_STACK_PENALTY = 8 -- The most efficient is 4 carriers in combat. 5+ brings the penalty to the amount of wings in battle.
NDefines.NNavy.ANTI_AIR_TARGETTING_TO_CHANCE = 0.07 -- Balancing value to convert averaged equipment stats (anti_air_targetting and naval_strike_agility) to probability chances of airplane being hit by navies AA.
NDefines.NNavy.ANTI_AIR_ATTACK_TO_AMOUNT = 0.005 -- Balancing value to convert equipment stat anti_air_attack to the random % value of airplanes being hit.

--------------------------------------------------------------------------------------------------------------
-- STRATEGIC BOMBING DAMAGE REWORK
--------------------------------------------------------------------------------------------------------------

---NDefines.NCountry.BOMBING_WAR_SUPPORT_PENALTY_SCALE = -100.00 			-- Scaling of bomber damage to war support impact, will be added weekly as a war support penalty
---NDefines.NCountry.MAX_BOMBING_WEEKLY_WAR_SUPPORT_PENALTY = -0.50		-- Max penalty that will gained per week from bomber's damage
---NDefines.NCountry.BOMBING_WEEKLY_WAR_SUPPORT_PENALTY_DECAY = 0.10		-- Weekly decay of bomber damage war support penalty

NDefines.NAir.AIR_WING_BOMB_DAMAGE_FACTOR = 6					-- Used to balance the damage done while bombing.

NDefines.NAir.BOMBING_TARGETING_RANDOM_FACTOR = 0.15							-- % of picking the wrong target

NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_CHANCE = 0.1		-- Chance to hit a ship in port when it is bombed.
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_DAMAGE_FACTOR = 50
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 0.25		-- Chance to hit a plane in airbase when it is bombed.
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 50

--------------------------------------------------------------------------------------------------------------
-- STRATEGIC NAVAL BOMBARDEMENT REWORK
--------------------------------------------------------------------------------------------------------------

NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.35
NDefines.NNavy.HEAVY_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.1  -- heavy gun attack value is divided by this value * 100 and added to shore bombardment modifier
NDefines.NNavy.LIGHT_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.05 -- light gun attack value is divided by this value * 100 and added to shore bombardment modifier

--------------------------------------------------------------------------------------------------------------
-- SUPPLY FLOW REWORK
--------------------------------------------------------------------------------------------------------------

NDefines.NSupply.VP_TO_SUPPLY_BASE = 0.35 -- Bonus to supply from a VP, no matter the level (Base is 0.2)
NDefines.NSupply.AVAILABLE_MANPOWER_STATE_SUPPLY = 0.10 --Factor for state supply from max manpower (population) (Base is 0.18, this is PER MILLION.)
NDefines.NSupply.VP_TO_SUPPLY_BONUS_CONVERSION = 0.1 -- Bonus to supply local supplies from Victory Points, multiplied by this aspect and rounded to closest integer (Base is 0.05)
NDefines.NSupply.CAPITAL_INITIAL_SUPPLY_FLOW = 5.0 -- starting supply from
NDefines.NSupply.CAPITAL_STARTING_PENALTY_PER_PROVINCE = 0.5 -- starting penalty that will be added as supply moves away from its origin (modified by stuff like terrain) (Default is 0.5)
NDefines.NSupply.CAPITAL_ADDED_PENALTY_PER_PROVINCE = 1.2 -- added penalty as we move away from origin (Default is 1.2)

-- defines that are used for supply reach for built nodes
NDefines.NSupply.NODE_INITIAL_SUPPLY_FLOW = 2.8
NDefines.NSupply.NODE_STARTING_PENALTY_PER_PROVINCE = 0.30 -- default is 0.5
NDefines.NSupply.NODE_ADDED_PENALTY_PER_PROVINCE = 0.50 -- default is 0.7

-- defines that are used for supply reach for dockyards
NDefines.NSupply.NAVAL_BASE_INITIAL_SUPPLY_FLOW = 3.3
NDefines.NSupply.NAVAL_BASE_STARTING_PENALTY_PER_PROVINCE = 0.84
NDefines.NSupply.NAVAL_BASE_ADDED_PENALTY_PER_PROVINCE = 1.1
