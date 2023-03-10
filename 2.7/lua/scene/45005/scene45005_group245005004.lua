-- 基础信息
local base_info = {
	group_id = 245005004
}

-- Trigger变量
local defs = {
	group_id = 245005004,
	gear_group_id = 245005002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12003},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12003},route=2,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12001,12002},route=3,route_points={1,2,3,4,5,6,7,8},tags=4,count=15,max=5,min=5},{monster_package={12001,12002},route=4,route_points={1,2,3,4,5,6,7,8},tags=8,count=15,max=5,min=5}},
        
}

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
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 4025, pos = { x = 86.191, y = -6.240, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 4026, pos = { x = 88.410, y = -6.241, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 4027, pos = { x = 86.191, y = -6.240, z = 3.359 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 4028, pos = { x = 88.213, y = -6.240, z = 3.686 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 4029, pos = { x = 86.191, y = -6.243, z = 5.646 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 4030, pos = { x = 88.699, y = -6.249, z = 5.742 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 4031, pos = { x = 59.648, y = -2.376, z = -10.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 4032, pos = { x = 61.108, y = -2.381, z = -7.813 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 4033, pos = { x = 59.320, y = -2.370, z = -5.836 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 4034, pos = { x = 61.082, y = -2.376, z = -10.721 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 4035, pos = { x = 61.341, y = -2.374, z = -4.138 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 4036, pos = { x = 62.496, y = -2.381, z = -9.817 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 4037, pos = { x = 106.777, y = -2.363, z = -58.559 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 4038, pos = { x = 108.236, y = -2.362, z = -56.165 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 4039, pos = { x = 106.448, y = -2.363, z = -54.188 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 4040, pos = { x = 108.210, y = -2.362, z = -59.073 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 4041, pos = { x = 110.303, y = -2.363, z = -54.581 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 4042, pos = { x = 109.624, y = -2.361, z = -58.168 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "TowerDefense_Monster02"