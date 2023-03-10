-- DEFS_MISCS
local GroupId = 247010012
local point_id_list = {}
local MainGroupID = 247010001
local RegionID = 12001

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
	{ config_id = 12001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 160.030, y = 0.050, z = 79.953 } }
}

-- 触发器
triggers = {
	{ config_id = 1012001, name = "ENTER_REGION_12001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 12002, pos = { x = 156.096, y = 0.107, z = 87.620 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 12003, pos = { x = 164.180, y = 0.105, z = 87.566 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 12004, pos = { x = 160.075, y = 0.101, z = 88.511 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 12005, pos = { x = 152.919, y = 0.121, z = 86.405 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 2 },
	{ config_id = 12006, pos = { x = 167.139, y = 0.115, z = 85.964 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 2 },
	{ config_id = 12007, pos = { x = 151.699, y = 0.105, z = 83.683 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 2 },
	{ config_id = 12008, pos = { x = 168.807, y = 0.110, z = 83.699 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 2 },
	{ config_id = 12009, pos = { x = 151.448, y = 0.100, z = 79.977 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 12010, pos = { x = 168.908, y = 0.108, z = 79.993 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 12011, pos = { x = 160.110, y = 0.115, z = 88.050 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 12012, pos = { x = 154.324, y = 0.126, z = 87.118 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 4 },
	{ config_id = 12013, pos = { x = 165.801, y = 0.100, z = 87.084 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 4 },
	{ config_id = 12014, pos = { x = 151.381, y = 0.108, z = 82.439 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 4 },
	{ config_id = 12015, pos = { x = 168.931, y = 0.106, z = 82.444 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 4 },
	{ config_id = 12016, pos = { x = 151.395, y = 0.102, z = 77.554 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 12017, pos = { x = 168.837, y = 0.101, z = 77.609 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 4 },
	{ config_id = 12018, pos = { x = 154.373, y = 0.100, z = 72.887 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 4 },
	{ config_id = 12019, pos = { x = 165.731, y = 0.100, z = 72.802 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 4 },
	{ config_id = 12020, pos = { x = 160.012, y = 0.100, z = 72.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 12021, pos = { x = 152.896, y = 0.142, z = 87.134 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 12022, pos = { x = 167.176, y = 0.117, z = 87.137 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 8 },
	{ config_id = 12023, pos = { x = 152.898, y = 0.100, z = 72.783 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 8 },
	{ config_id = 12024, pos = { x = 167.099, y = 0.100, z = 72.861 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 12025, pos = { x = 160.201, y = 0.117, z = 87.383 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 12026, pos = { x = 160.003, y = 0.100, z = 72.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 12027, pos = { x = 151.921, y = 0.101, z = 79.956 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 8 },
	{ config_id = 12028, pos = { x = 168.297, y = 0.103, z = 79.921 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 12029, pos = { x = 152.026, y = 0.102, z = 75.892 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 8 },
	{ config_id = 12030, pos = { x = 167.994, y = 0.109, z = 83.331 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 8 },
	{ config_id = 12031, pos = { x = 163.433, y = 0.100, z = 72.308 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 12032, pos = { x = 156.181, y = 0.126, z = 87.230 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 12033, pos = { x = 165.900, y = 0.068, z = 80.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 32 }
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
		regions = { 12001 },
		triggers = { "ENTER_REGION_12001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"