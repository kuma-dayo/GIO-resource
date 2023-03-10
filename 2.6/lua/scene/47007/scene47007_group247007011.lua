-- 基础信息
local base_info = {
	group_id = 247007011
}

-- DEFS_MISCS
local GroupId = 247007011
local point_id_list = {}
local MainGroupID = 247007001
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
	{ config_id = 11001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 160.087, y = 0.050, z = 240.079 } }
}

-- 触发器
triggers = {
	{ config_id = 1011001, name = "ENTER_REGION_11001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 11002, pos = { x = 156.152, y = 0.107, z = 247.746 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11003, pos = { x = 164.237, y = 0.105, z = 247.693 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11004, pos = { x = 160.132, y = 0.101, z = 248.637 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 11005, pos = { x = 152.975, y = 0.121, z = 246.531 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 2 },
	{ config_id = 11006, pos = { x = 167.196, y = 0.115, z = 246.090 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 2 },
	{ config_id = 11007, pos = { x = 151.756, y = 0.105, z = 243.809 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 2 },
	{ config_id = 11008, pos = { x = 168.864, y = 0.110, z = 243.825 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 2 },
	{ config_id = 11009, pos = { x = 151.504, y = 0.100, z = 240.104 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 11010, pos = { x = 168.965, y = 0.108, z = 240.120 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 11011, pos = { x = 160.166, y = 0.115, z = 248.177 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 11012, pos = { x = 154.381, y = 0.126, z = 247.244 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 4 },
	{ config_id = 11013, pos = { x = 165.857, y = 0.100, z = 247.210 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 4 },
	{ config_id = 11014, pos = { x = 151.437, y = 0.108, z = 242.565 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 4 },
	{ config_id = 11015, pos = { x = 168.988, y = 0.106, z = 242.570 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 4 },
	{ config_id = 11016, pos = { x = 151.451, y = 0.102, z = 237.681 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 11017, pos = { x = 168.894, y = 0.101, z = 237.736 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 4 },
	{ config_id = 11018, pos = { x = 154.430, y = 0.100, z = 233.013 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 4 },
	{ config_id = 11019, pos = { x = 165.787, y = 0.100, z = 232.928 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 4 },
	{ config_id = 11020, pos = { x = 160.068, y = 0.100, z = 232.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 11021, pos = { x = 152.952, y = 0.142, z = 247.261 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 11022, pos = { x = 167.232, y = 0.117, z = 247.264 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 8 },
	{ config_id = 11023, pos = { x = 152.954, y = 0.100, z = 232.910 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 8 },
	{ config_id = 11024, pos = { x = 167.155, y = 0.100, z = 232.988 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 11025, pos = { x = 160.257, y = 0.117, z = 247.509 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 11026, pos = { x = 160.059, y = 0.100, z = 232.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 11027, pos = { x = 151.977, y = 0.101, z = 240.082 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 8 },
	{ config_id = 11028, pos = { x = 168.353, y = 0.104, z = 240.048 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 11029, pos = { x = 152.083, y = 0.102, z = 236.018 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 8 },
	{ config_id = 11030, pos = { x = 168.051, y = 0.109, z = 243.457 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 8 },
	{ config_id = 11031, pos = { x = 163.490, y = 0.100, z = 232.434 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 11032, pos = { x = 156.238, y = 0.126, z = 247.357 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 11033, pos = { x = 166.064, y = 0.050, z = 236.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 256 }
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