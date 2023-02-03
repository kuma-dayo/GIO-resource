-- DEFS_MISCS
local GroupId = 247005014
local point_id_list = {}
local MainGroupID = 247005001
local RegionID = 14001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 14001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 159.985, y = 0.050, z = 319.654 } }
}

-- 触发器
triggers = {
	{ config_id = 1014001, name = "ENTER_REGION_14001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 14002, pos = { x = 159.935, y = 0.039, z = 333.030 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 14003, pos = { x = 156.939, y = 0.039, z = 332.329 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 14004, pos = { x = 163.162, y = 0.039, z = 332.445 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 14005, pos = { x = 153.027, y = 0.039, z = 331.121 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 14006, pos = { x = 167.100, y = 0.039, z = 330.673 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 14007, pos = { x = 150.580, y = 0.039, z = 328.622 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 14008, pos = { x = 170.335, y = 0.039, z = 328.639 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 14009, pos = { x = 149.768, y = 0.039, z = 326.086 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 14010, pos = { x = 170.448, y = 0.039, z = 325.738 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 14011, pos = { x = 149.718, y = 0.039, z = 322.992 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 14012, pos = { x = 160.004, y = 0.039, z = 331.718 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 14013, pos = { x = 155.108, y = 0.039, z = 329.752 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 14014, pos = { x = 165.058, y = 0.039, z = 329.925 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 14015, pos = { x = 151.708, y = 0.039, z = 326.655 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, tag = 4 },
	{ config_id = 14016, pos = { x = 169.245, y = 0.039, z = 325.633 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 14017, pos = { x = 152.157, y = 0.039, z = 320.998 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 14018, pos = { x = 168.656, y = 0.039, z = 319.718 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 14019, pos = { x = 155.165, y = 0.039, z = 317.187 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 4 },
	{ config_id = 14020, pos = { x = 165.236, y = 0.039, z = 316.377 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, tag = 4 },
	{ config_id = 14021, pos = { x = 159.996, y = 0.039, z = 314.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 14022, pos = { x = 149.989, y = 0.039, z = 332.060 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 14023, pos = { x = 170.056, y = 0.039, z = 332.060 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 14024, pos = { x = 149.989, y = 0.039, z = 313.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 14025, pos = { x = 170.056, y = 0.039, z = 313.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 14026, pos = { x = 151.723, y = 0.039, z = 332.060 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 14027, pos = { x = 171.789, y = 0.039, z = 332.060 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 14028, pos = { x = 151.723, y = 0.039, z = 313.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 14029, pos = { x = 171.789, y = 0.039, z = 313.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 14030, pos = { x = 147.307, y = 0.039, z = 332.060 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 14031, pos = { x = 167.373, y = 0.039, z = 332.060 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 14032, pos = { x = 147.307, y = 0.039, z = 313.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 14033, pos = { x = 167.373, y = 0.039, z = 313.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 14034, pos = { x = 158.809, y = 0.039, z = 326.070 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14035, pos = { x = 161.041, y = 0.039, z = 326.070 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14036, pos = { x = 156.896, y = 0.039, z = 326.070 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14037, pos = { x = 163.087, y = 0.039, z = 326.070 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14038, pos = { x = 155.024, y = 0.039, z = 326.070 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14039, pos = { x = 164.925, y = 0.039, z = 326.070 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14040, pos = { x = 156.779, y = 0.039, z = 323.698 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14041, pos = { x = 162.825, y = 0.039, z = 323.698 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14042, pos = { x = 161.041, y = 0.039, z = 323.698 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14043, pos = { x = 158.809, y = 0.039, z = 323.698 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 14044, pos = { x = 155.262, y = 0.055, z = 320.167 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 32 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 14001 },
		triggers = { "ENTER_REGION_14001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"