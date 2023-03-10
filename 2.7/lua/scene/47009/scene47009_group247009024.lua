-- 基础信息
local base_info = {
	group_id = 247009024
}

-- DEFS_MISCS
local GroupId = 247009024
local point_id_list = {}
local MainGroupID = 247009001
local RegionID = 24001

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
	{ config_id = 24001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = -80.046, y = -0.582, z = 160.044 } }
}

-- 触发器
triggers = {
	{ config_id = 1024001, name = "ENTER_REGION_24001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 24002, pos = { x = -83.980, y = -0.525, z = 171.636 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 24003, pos = { x = -75.896, y = -0.527, z = 171.583 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 24004, pos = { x = -80.001, y = -0.531, z = 172.527 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 },
	{ config_id = 24005, pos = { x = -87.158, y = -0.511, z = 170.421 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 16 },
	{ config_id = 24006, pos = { x = -72.937, y = -0.518, z = 169.980 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 16 },
	{ config_id = 24007, pos = { x = -88.377, y = -0.527, z = 167.699 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 16 },
	{ config_id = 24008, pos = { x = -71.269, y = -0.522, z = 167.715 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 16 },
	{ config_id = 24009, pos = { x = -88.629, y = -0.532, z = 163.994 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 16 },
	{ config_id = 24010, pos = { x = -71.168, y = -0.524, z = 164.010 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 16 },
	{ config_id = 24011, pos = { x = -79.967, y = -0.518, z = 171.953 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 32 },
	{ config_id = 24012, pos = { x = -85.752, y = -0.507, z = 171.020 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 32 },
	{ config_id = 24013, pos = { x = -74.275, y = -0.532, z = 170.986 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 32 },
	{ config_id = 24014, pos = { x = -88.696, y = -0.524, z = 166.341 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 32 },
	{ config_id = 24015, pos = { x = -71.145, y = -0.526, z = 166.347 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 32 },
	{ config_id = 24016, pos = { x = -88.681, y = -0.530, z = 161.457 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 32 },
	{ config_id = 24017, pos = { x = -71.239, y = -0.531, z = 161.512 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 32 },
	{ config_id = 24018, pos = { x = -85.703, y = -0.532, z = 156.789 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 32 },
	{ config_id = 24019, pos = { x = -74.346, y = -0.532, z = 156.705 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 32 },
	{ config_id = 24020, pos = { x = -80.065, y = -0.532, z = 155.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 32 },
	{ config_id = 24021, pos = { x = -87.181, y = -0.490, z = 166.978 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 64 },
	{ config_id = 24022, pos = { x = -72.901, y = -0.515, z = 166.981 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 64 },
	{ config_id = 24023, pos = { x = -87.178, y = -0.532, z = 152.627 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 64 },
	{ config_id = 24024, pos = { x = -72.978, y = -0.532, z = 152.705 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 64 },
	{ config_id = 24025, pos = { x = -79.876, y = -0.515, z = 167.227 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 64 },
	{ config_id = 24026, pos = { x = -80.074, y = -0.532, z = 152.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 64 },
	{ config_id = 24027, pos = { x = -88.156, y = -0.532, z = 159.800 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 64 },
	{ config_id = 24028, pos = { x = -71.780, y = -0.529, z = 159.765 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 64 },
	{ config_id = 24029, pos = { x = -88.050, y = -0.531, z = 155.736 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 64 },
	{ config_id = 24030, pos = { x = -72.082, y = -0.523, z = 163.175 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 64 },
	{ config_id = 24031, pos = { x = -76.643, y = -0.532, z = 152.400 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 64 },
	{ config_id = 24032, pos = { x = -83.895, y = -0.507, z = 167.322 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 64 },
	{ config_id = 24033, pos = { x = -84.089, y = -0.524, z = 157.840 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24034, pos = { x = -84.089, y = -0.524, z = 159.245 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24035, pos = { x = -84.089, y = -0.524, z = 160.894 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24036, pos = { x = -84.089, y = -0.524, z = 162.298 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24037, pos = { x = -86.302, y = -0.524, z = 155.086 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24038, pos = { x = -86.302, y = -0.524, z = 156.491 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24039, pos = { x = -86.302, y = -0.524, z = 158.140 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24040, pos = { x = -86.302, y = -0.524, z = 159.544 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24041, pos = { x = -86.302, y = -0.524, z = 161.900 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24042, pos = { x = -86.302, y = -0.524, z = 163.305 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 128 },
	{ config_id = 24044, pos = { x = -87.582, y = -0.600, z = 159.929 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 256 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
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
		regions = { 24001 },
		triggers = { "ENTER_REGION_24001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"