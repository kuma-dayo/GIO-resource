-- 基础信息
local base_info = {
	group_id = 247007006
}

-- DEFS_MISCS
local GroupId = 247007006
local point_id_list = {}
local MainGroupID = 247007001
local RegionID = 6001

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
	{ config_id = 6001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 80.014, y = -0.582, z = 240.105 } }
}

-- 触发器
triggers = {
	{ config_id = 1006001, name = "ENTER_REGION_6001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 6002, pos = { x = 76.080, y = -0.525, z = 247.773 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6003, pos = { x = 84.164, y = -0.527, z = 247.719 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6004, pos = { x = 80.059, y = -0.531, z = 248.663 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6005, pos = { x = 72.903, y = -0.511, z = 246.557 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 2 },
	{ config_id = 6006, pos = { x = 87.123, y = -0.518, z = 246.117 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 2 },
	{ config_id = 6007, pos = { x = 71.683, y = -0.527, z = 243.836 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 2 },
	{ config_id = 6008, pos = { x = 88.791, y = -0.522, z = 243.851 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 2 },
	{ config_id = 6009, pos = { x = 71.431, y = -0.532, z = 240.130 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 6010, pos = { x = 88.892, y = -0.524, z = 240.146 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 6011, pos = { x = 80.094, y = -0.518, z = 248.203 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 6012, pos = { x = 74.308, y = -0.507, z = 247.271 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 4 },
	{ config_id = 6013, pos = { x = 85.785, y = -0.532, z = 247.236 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 4 },
	{ config_id = 6014, pos = { x = 71.364, y = -0.524, z = 242.591 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 4 },
	{ config_id = 6015, pos = { x = 88.915, y = -0.526, z = 242.597 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 4 },
	{ config_id = 6016, pos = { x = 71.379, y = -0.530, z = 237.707 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 6017, pos = { x = 88.821, y = -0.531, z = 237.762 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 4 },
	{ config_id = 6018, pos = { x = 74.357, y = -0.532, z = 233.039 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 4 },
	{ config_id = 6019, pos = { x = 85.714, y = -0.532, z = 232.955 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 4 },
	{ config_id = 6020, pos = { x = 79.995, y = -0.532, z = 232.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 6021, pos = { x = 72.879, y = -0.490, z = 247.287 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 6022, pos = { x = 87.159, y = -0.515, z = 247.290 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 8 },
	{ config_id = 6023, pos = { x = 72.882, y = -0.532, z = 232.936 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 8 },
	{ config_id = 6024, pos = { x = 87.082, y = -0.532, z = 233.014 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 6025, pos = { x = 80.184, y = -0.515, z = 247.535 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 6026, pos = { x = 79.986, y = -0.532, z = 232.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 6027, pos = { x = 71.905, y = -0.532, z = 240.109 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 8 },
	{ config_id = 6028, pos = { x = 88.280, y = -0.529, z = 240.074 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 6029, pos = { x = 72.010, y = -0.531, z = 236.044 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 8 },
	{ config_id = 6030, pos = { x = 87.978, y = -0.523, z = 243.483 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 8 },
	{ config_id = 6031, pos = { x = 83.417, y = -0.532, z = 232.461 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 6032, pos = { x = 76.165, y = -0.507, z = 247.383 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 6033, pos = { x = 85.028, y = -0.582, z = 235.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 256 }
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
		regions = { 6001 },
		triggers = { "ENTER_REGION_6001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"