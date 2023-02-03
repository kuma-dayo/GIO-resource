-- DEFS_MISCS
local GroupId = 247010010
local point_id_list = {}
local MainGroupID = 247010001
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
	{ config_id = 10001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 80.009, y = -0.631, z = 79.994 } }
}

-- 触发器
triggers = {
	{ config_id = 1010001, name = "ENTER_REGION_10001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 10002, pos = { x = 76.074, y = -0.574, z = 87.661 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10003, pos = { x = 84.159, y = -0.575, z = 87.608 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10004, pos = { x = 80.054, y = -0.579, z = 88.552 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 10005, pos = { x = 72.897, y = -0.559, z = 86.446 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 2 },
	{ config_id = 10006, pos = { x = 87.118, y = -0.566, z = 86.005 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 2 },
	{ config_id = 10007, pos = { x = 71.678, y = -0.575, z = 83.724 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 2 },
	{ config_id = 10008, pos = { x = 88.786, y = -0.570, z = 83.740 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 2 },
	{ config_id = 10009, pos = { x = 71.426, y = -0.581, z = 80.019 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 10010, pos = { x = 88.887, y = -0.573, z = 80.035 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 10011, pos = { x = 80.088, y = -0.566, z = 88.092 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 10012, pos = { x = 74.303, y = -0.555, z = 87.159 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 4 },
	{ config_id = 10013, pos = { x = 85.780, y = -0.581, z = 87.125 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 4 },
	{ config_id = 10014, pos = { x = 71.359, y = -0.572, z = 82.480 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 4 },
	{ config_id = 10015, pos = { x = 88.910, y = -0.574, z = 82.485 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 4 },
	{ config_id = 10016, pos = { x = 71.374, y = -0.578, z = 77.596 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 10017, pos = { x = 88.816, y = -0.579, z = 77.651 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 4 },
	{ config_id = 10018, pos = { x = 74.352, y = -0.580, z = 72.928 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 4 },
	{ config_id = 10019, pos = { x = 85.709, y = -0.581, z = 72.843 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 4 },
	{ config_id = 10020, pos = { x = 79.990, y = -0.581, z = 72.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 10021, pos = { x = 72.874, y = -0.539, z = 87.176 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 10022, pos = { x = 87.154, y = -0.563, z = 87.179 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 8 },
	{ config_id = 10023, pos = { x = 72.877, y = -0.581, z = 72.825 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 8 },
	{ config_id = 10024, pos = { x = 87.077, y = -0.581, z = 72.903 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 10025, pos = { x = 80.179, y = -0.563, z = 87.424 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 10026, pos = { x = 79.981, y = -0.581, z = 72.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 10027, pos = { x = 71.899, y = -0.580, z = 79.997 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 8 },
	{ config_id = 10028, pos = { x = 88.275, y = -0.577, z = 79.963 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 10029, pos = { x = 72.005, y = -0.579, z = 75.933 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 8 },
	{ config_id = 10030, pos = { x = 87.973, y = -0.572, z = 83.372 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 8 },
	{ config_id = 10031, pos = { x = 83.412, y = -0.580, z = 72.349 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 10032, pos = { x = 76.160, y = -0.555, z = 87.272 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 10033, pos = { x = 78.342, y = -0.680, z = 85.423 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 32 }
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