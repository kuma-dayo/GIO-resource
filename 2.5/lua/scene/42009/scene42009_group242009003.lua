-- 基础信息
local base_info = {
	group_id = 242009003
}

-- Trigger变量
local defs = {
	group_id = 242009003,
	gear_group_id = 242009002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12010,12011,12012},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=15,max=5,min=5},{monster_package={12004,12005,12006,12007,12008,12009},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=15,max=4,min=4}},
        
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
	{ config_id = 3013, pos = { x = 33.278, y = -7.698, z = -88.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3014, pos = { x = 33.234, y = -7.697, z = -90.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3015, pos = { x = 35.188, y = -7.695, z = -90.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3016, pos = { x = 33.221, y = -7.699, z = -93.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3017, pos = { x = 35.911, y = -7.700, z = -92.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3018, pos = { x = 35.860, y = -7.700, z = -88.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 3019, pos = { x = 2.610, y = -7.698, z = -60.715 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 3020, pos = { x = 4.069, y = -7.700, z = -58.321 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 3021, pos = { x = 2.281, y = -7.700, z = -56.346 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 3022, pos = { x = 4.043, y = -7.698, z = -61.228 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 3023, pos = { x = 4.302, y = -7.699, z = -54.650 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 3024, pos = { x = 5.457, y = -7.696, z = -60.325 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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