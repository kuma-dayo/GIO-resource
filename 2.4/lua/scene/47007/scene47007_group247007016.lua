-- DEFS_MISCS
local GroupId = 247007016
local point_id_list = {}
local MainGroupID = 247007001
local RegionID = 16001

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
	{ config_id = 16001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 240.040, y = 0.050, z = 240.029 } }
}

-- 触发器
triggers = {
	{ config_id = 1016001, name = "ENTER_REGION_16001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 16002, pos = { x = 236.106, y = 0.107, z = 247.696 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 16003, pos = { x = 244.190, y = 0.105, z = 247.642 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 16004, pos = { x = 240.085, y = 0.101, z = 248.587 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 16005, pos = { x = 232.929, y = 0.121, z = 246.481 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 2 },
	{ config_id = 16006, pos = { x = 247.149, y = 0.115, z = 246.040 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 2 },
	{ config_id = 16007, pos = { x = 231.709, y = 0.105, z = 243.759 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 2 },
	{ config_id = 16008, pos = { x = 248.817, y = 0.110, z = 243.775 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 2 },
	{ config_id = 16009, pos = { x = 231.458, y = 0.100, z = 240.054 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 16010, pos = { x = 248.918, y = 0.108, z = 240.070 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 16011, pos = { x = 240.120, y = 0.115, z = 248.127 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 16012, pos = { x = 234.334, y = 0.126, z = 247.194 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 4 },
	{ config_id = 16013, pos = { x = 245.811, y = 0.100, z = 247.160 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 4 },
	{ config_id = 16014, pos = { x = 231.390, y = 0.108, z = 242.515 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 4 },
	{ config_id = 16015, pos = { x = 248.941, y = 0.106, z = 242.520 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 4 },
	{ config_id = 16016, pos = { x = 231.405, y = 0.102, z = 237.631 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 16017, pos = { x = 248.847, y = 0.101, z = 237.686 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 4 },
	{ config_id = 16018, pos = { x = 234.383, y = 0.100, z = 232.963 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 4 },
	{ config_id = 16019, pos = { x = 245.740, y = 0.100, z = 232.878 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 4 },
	{ config_id = 16020, pos = { x = 240.021, y = 0.100, z = 232.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 16021, pos = { x = 232.905, y = 0.142, z = 247.211 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 16022, pos = { x = 247.185, y = 0.117, z = 247.214 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 8 },
	{ config_id = 16023, pos = { x = 232.908, y = 0.100, z = 232.860 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 8 },
	{ config_id = 16024, pos = { x = 247.109, y = 0.100, z = 232.938 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 16025, pos = { x = 240.210, y = 0.117, z = 247.459 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 16026, pos = { x = 240.012, y = 0.100, z = 232.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 16027, pos = { x = 231.931, y = 0.101, z = 240.032 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 8 },
	{ config_id = 16028, pos = { x = 248.306, y = 0.103, z = 239.998 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 16029, pos = { x = 232.036, y = 0.102, z = 235.968 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 8 },
	{ config_id = 16030, pos = { x = 248.004, y = 0.109, z = 243.407 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 8 },
	{ config_id = 16031, pos = { x = 243.443, y = 0.100, z = 232.384 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 16032, pos = { x = 236.191, y = 0.126, z = 247.307 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 16033, pos = { x = 234.396, y = 0.050, z = 235.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 256 }
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
		regions = { 16001 },
		triggers = { "ENTER_REGION_16001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"