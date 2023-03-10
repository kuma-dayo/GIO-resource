-- 基础信息
local base_info = {
	group_id = 247008012
}

-- DEFS_MISCS
local GroupId = 247008012
local point_id_list = {}
local MainGroupID = 247008001
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
	{ config_id = 12001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = 240.021, y = 0.078, z = 160.000 } }
}

-- 触发器
triggers = {
	{ config_id = 1012001, name = "ENTER_REGION_12001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 12002, pos = { x = 236.086, y = 0.135, z = 167.668 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 12003, pos = { x = 244.171, y = 0.134, z = 167.614 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 12004, pos = { x = 240.066, y = 0.130, z = 168.558 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 12005, pos = { x = 232.909, y = 0.150, z = 166.452 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 2 },
	{ config_id = 12006, pos = { x = 247.130, y = 0.143, z = 166.011 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 2 },
	{ config_id = 12007, pos = { x = 231.690, y = 0.134, z = 163.730 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, tag = 2 },
	{ config_id = 12008, pos = { x = 248.798, y = 0.139, z = 163.746 }, rot = { x = 0.000, y = 250.000, z = 0.000 }, tag = 2 },
	{ config_id = 12009, pos = { x = 231.438, y = 0.128, z = 160.025 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 12010, pos = { x = 248.899, y = 0.136, z = 160.041 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 12011, pos = { x = 240.100, y = 0.143, z = 168.098 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 12012, pos = { x = 234.315, y = 0.154, z = 167.165 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 4 },
	{ config_id = 12013, pos = { x = 245.791, y = 0.128, z = 167.131 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 4 },
	{ config_id = 12014, pos = { x = 231.371, y = 0.137, z = 162.486 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, tag = 4 },
	{ config_id = 12015, pos = { x = 248.922, y = 0.135, z = 162.491 }, rot = { x = 0.000, y = 260.000, z = 0.000 }, tag = 4 },
	{ config_id = 12016, pos = { x = 231.386, y = 0.131, z = 157.602 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, tag = 4 },
	{ config_id = 12017, pos = { x = 248.828, y = 0.129, z = 157.657 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, tag = 4 },
	{ config_id = 12018, pos = { x = 234.364, y = 0.129, z = 152.934 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 4 },
	{ config_id = 12019, pos = { x = 245.721, y = 0.128, z = 152.850 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 4 },
	{ config_id = 12020, pos = { x = 240.002, y = 0.128, z = 152.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 12021, pos = { x = 232.886, y = 0.170, z = 167.182 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 12022, pos = { x = 247.166, y = 0.145, z = 167.185 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, tag = 8 },
	{ config_id = 12023, pos = { x = 232.888, y = 0.128, z = 152.831 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, tag = 8 },
	{ config_id = 12024, pos = { x = 247.089, y = 0.128, z = 152.909 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 12025, pos = { x = 240.191, y = 0.146, z = 167.430 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 8 },
	{ config_id = 12026, pos = { x = 239.993, y = 0.128, z = 152.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 12027, pos = { x = 231.911, y = 0.129, z = 160.003 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 8 },
	{ config_id = 12028, pos = { x = 248.287, y = 0.132, z = 159.969 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 12029, pos = { x = 232.017, y = 0.130, z = 155.939 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, tag = 8 },
	{ config_id = 12030, pos = { x = 247.985, y = 0.137, z = 163.378 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, tag = 8 },
	{ config_id = 12031, pos = { x = 243.424, y = 0.129, z = 152.355 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, tag = 8 },
	{ config_id = 12032, pos = { x = 236.172, y = 0.154, z = 167.278 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, tag = 8 },
	{ config_id = 12033, pos = { x = 245.849, y = 0.056, z = 164.239 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 16 }
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