-- 基础信息
local base_info = {
	group_id = 247003011
}

-- DEFS_MISCS
local GroupId = 247003011
local point_id_list = {}
local MainGroupID = 247003001
local RegionID = 11001

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
	{ config_id = 11001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 160.024, y = 0.050, z = -0.048 } }
}

-- 触发器
triggers = {
	{ config_id = 1011001, name = "ENTER_REGION_11001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 11002, pos = { x = 159.974, y = 0.039, z = 13.329 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11003, pos = { x = 156.979, y = 0.039, z = 12.627 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11004, pos = { x = 163.201, y = 0.039, z = 12.743 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11005, pos = { x = 153.067, y = 0.039, z = 11.419 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11006, pos = { x = 167.139, y = 0.039, z = 10.972 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11007, pos = { x = 150.620, y = 0.039, z = 8.920 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11008, pos = { x = 170.374, y = 0.039, z = 8.937 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11009, pos = { x = 149.808, y = 0.039, z = 6.385 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 11010, pos = { x = 170.488, y = 0.039, z = 6.036 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 11011, pos = { x = 149.758, y = 0.039, z = 3.291 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 11012, pos = { x = 160.043, y = 0.039, z = 12.016 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 11013, pos = { x = 155.148, y = 0.039, z = 10.051 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 11014, pos = { x = 165.098, y = 0.039, z = 10.224 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 11015, pos = { x = 151.747, y = 0.039, z = 6.953 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, tag = 4 },
	{ config_id = 11016, pos = { x = 169.284, y = 0.039, z = 5.932 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 11017, pos = { x = 152.196, y = 0.039, z = 1.297 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 11018, pos = { x = 168.695, y = 0.039, z = 0.017 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 11019, pos = { x = 155.204, y = 0.039, z = -2.515 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 4 },
	{ config_id = 11020, pos = { x = 165.275, y = 0.039, z = -3.324 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, tag = 4 },
	{ config_id = 11021, pos = { x = 160.035, y = 0.039, z = -5.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 11022, pos = { x = 150.029, y = 0.039, z = 12.358 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 11023, pos = { x = 170.095, y = 0.039, z = 12.358 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 11024, pos = { x = 150.029, y = 0.039, z = -6.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 11025, pos = { x = 170.095, y = 0.039, z = -6.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 11026, pos = { x = 151.762, y = 0.039, z = 12.358 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 11027, pos = { x = 171.829, y = 0.039, z = 12.358 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 11028, pos = { x = 151.762, y = 0.039, z = -6.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 11029, pos = { x = 171.829, y = 0.039, z = -6.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 11030, pos = { x = 147.346, y = 0.039, z = 12.358 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 11031, pos = { x = 167.413, y = 0.039, z = 12.358 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 11032, pos = { x = 147.346, y = 0.039, z = -6.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 11033, pos = { x = 167.413, y = 0.039, z = -6.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 11034, pos = { x = 158.848, y = 0.039, z = 6.368 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11035, pos = { x = 161.081, y = 0.039, z = 6.368 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11036, pos = { x = 156.935, y = 0.039, z = 6.368 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11037, pos = { x = 163.127, y = 0.039, z = 6.368 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11038, pos = { x = 155.063, y = 0.039, z = 6.368 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11039, pos = { x = 164.965, y = 0.039, z = 6.368 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11040, pos = { x = 156.818, y = 0.039, z = 3.997 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11041, pos = { x = 162.865, y = 0.039, z = 3.997 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11042, pos = { x = 161.081, y = 0.039, z = 3.997 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11043, pos = { x = 158.848, y = 0.039, z = 3.997 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 11044, pos = { x = 160.003, y = 0.054, z = 7.282 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 32 }
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
		regions = { 11001 },
		triggers = { "ENTER_REGION_11001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"