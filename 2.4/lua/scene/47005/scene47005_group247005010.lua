-- DEFS_MISCS
local GroupId = 247005010
local point_id_list = {}
local MainGroupID = 247005001
local RegionID = 10001

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
	{ config_id = 10001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 160.000, y = 0.100, z = 239.939 } }
}

-- 触发器
triggers = {
	{ config_id = 1010001, name = "ENTER_REGION_10001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 10002, pos = { x = 159.950, y = 0.089, z = 253.315 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10003, pos = { x = 156.954, y = 0.089, z = 252.613 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10004, pos = { x = 163.177, y = 0.089, z = 252.729 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10005, pos = { x = 153.043, y = 0.089, z = 251.405 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10006, pos = { x = 167.115, y = 0.089, z = 250.958 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10007, pos = { x = 150.596, y = 0.089, z = 248.906 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10008, pos = { x = 170.350, y = 0.089, z = 248.924 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10009, pos = { x = 149.784, y = 0.089, z = 246.371 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 10010, pos = { x = 170.464, y = 0.089, z = 246.023 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 10011, pos = { x = 149.734, y = 0.089, z = 243.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 10012, pos = { x = 160.019, y = 0.089, z = 252.003 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 10013, pos = { x = 155.124, y = 0.089, z = 250.037 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 10014, pos = { x = 165.073, y = 0.089, z = 250.210 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 10015, pos = { x = 151.723, y = 0.089, z = 246.940 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, tag = 4 },
	{ config_id = 10016, pos = { x = 169.260, y = 0.089, z = 245.918 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 10017, pos = { x = 152.172, y = 0.089, z = 241.283 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 10018, pos = { x = 168.671, y = 0.089, z = 240.003 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 10019, pos = { x = 155.180, y = 0.089, z = 237.472 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 4 },
	{ config_id = 10020, pos = { x = 165.251, y = 0.089, z = 236.662 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, tag = 4 },
	{ config_id = 10021, pos = { x = 160.011, y = 0.089, z = 234.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 10022, pos = { x = 150.004, y = 0.089, z = 252.345 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 10023, pos = { x = 170.071, y = 0.089, z = 252.345 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 10024, pos = { x = 150.004, y = 0.089, z = 233.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 10025, pos = { x = 170.071, y = 0.089, z = 233.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 10026, pos = { x = 151.738, y = 0.089, z = 252.345 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 10027, pos = { x = 171.805, y = 0.089, z = 252.345 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 10028, pos = { x = 151.738, y = 0.089, z = 233.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 10029, pos = { x = 171.805, y = 0.089, z = 233.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 10030, pos = { x = 147.322, y = 0.089, z = 252.345 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 10031, pos = { x = 167.389, y = 0.089, z = 252.345 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 10032, pos = { x = 147.322, y = 0.089, z = 233.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 10033, pos = { x = 167.389, y = 0.089, z = 233.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 10034, pos = { x = 158.824, y = 0.089, z = 246.354 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10035, pos = { x = 161.057, y = 0.089, z = 246.354 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10036, pos = { x = 156.911, y = 0.089, z = 246.354 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10037, pos = { x = 163.103, y = 0.089, z = 246.354 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10038, pos = { x = 155.039, y = 0.089, z = 246.354 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10039, pos = { x = 164.941, y = 0.089, z = 246.354 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10040, pos = { x = 156.794, y = 0.089, z = 243.983 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10041, pos = { x = 162.840, y = 0.089, z = 243.983 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10042, pos = { x = 161.057, y = 0.089, z = 243.983 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10043, pos = { x = 158.824, y = 0.089, z = 243.983 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 10044, pos = { x = 158.824, y = 0.089, z = 248.283 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 32 }
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
		regions = { 10001 },
		triggers = { "ENTER_REGION_10001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"