-- 基础信息
local base_info = {
	group_id = 247010022
}

-- DEFS_MISCS
local GroupId = 247010022
local point_id_list = {}
local MainGroupID = 247010001
local RegionID = 22001

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
	{ config_id = 22001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 400.020, y = 0.050, z = 399.989 } }
}

-- 触发器
triggers = {
	{ config_id = 1022001, name = "ENTER_REGION_22001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 22002, pos = { x = 396.085, y = 0.107, z = 407.657 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 22003, pos = { x = 404.170, y = 0.105, z = 407.603 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 22004, pos = { x = 400.065, y = 0.101, z = 408.548 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 22005, pos = { x = 392.908, y = 0.121, z = 406.442 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 2 },
	{ config_id = 22006, pos = { x = 407.129, y = 0.115, z = 406.001 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 2 },
	{ config_id = 22007, pos = { x = 391.688, y = 0.105, z = 403.720 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 2 },
	{ config_id = 22008, pos = { x = 408.796, y = 0.110, z = 403.736 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 2 },
	{ config_id = 22009, pos = { x = 391.437, y = 0.100, z = 400.014 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 22010, pos = { x = 408.897, y = 0.108, z = 400.030 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 22011, pos = { x = 400.099, y = 0.115, z = 408.087 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 22012, pos = { x = 394.314, y = 0.126, z = 407.155 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 4 },
	{ config_id = 22013, pos = { x = 405.790, y = 0.100, z = 407.121 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 4 },
	{ config_id = 22014, pos = { x = 391.370, y = 0.108, z = 402.476 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 4 },
	{ config_id = 22015, pos = { x = 408.920, y = 0.106, z = 402.481 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 4 },
	{ config_id = 22016, pos = { x = 391.384, y = 0.102, z = 397.591 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 22017, pos = { x = 408.826, y = 0.101, z = 397.646 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 4 },
	{ config_id = 22018, pos = { x = 394.362, y = 0.100, z = 392.923 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 4 },
	{ config_id = 22019, pos = { x = 405.720, y = 0.100, z = 392.839 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 4 },
	{ config_id = 22020, pos = { x = 400.001, y = 0.100, z = 392.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 22021, pos = { x = 392.885, y = 0.142, z = 407.171 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 22022, pos = { x = 407.165, y = 0.117, z = 407.174 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 8 },
	{ config_id = 22023, pos = { x = 392.887, y = 0.100, z = 392.820 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 8 },
	{ config_id = 22024, pos = { x = 407.088, y = 0.100, z = 392.898 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 22025, pos = { x = 400.190, y = 0.117, z = 407.419 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 22026, pos = { x = 399.992, y = 0.100, z = 392.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 22027, pos = { x = 391.910, y = 0.101, z = 399.993 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 8 },
	{ config_id = 22028, pos = { x = 408.286, y = 0.103, z = 399.958 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 22029, pos = { x = 392.015, y = 0.102, z = 395.929 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 8 },
	{ config_id = 22030, pos = { x = 407.983, y = 0.109, z = 403.368 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 8 },
	{ config_id = 22031, pos = { x = 403.423, y = 0.100, z = 392.345 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 22032, pos = { x = 396.170, y = 0.126, z = 407.267 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 22033, pos = { x = 399.949, y = 0.050, z = 404.633 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 32 }
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
		regions = { 22001 },
		triggers = { "ENTER_REGION_22001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"