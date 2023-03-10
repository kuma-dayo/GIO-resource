-- Trigger变量
local defs = {
	group_id = 242009005,
	gear_group_id = 242009002
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={12039},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=15,max=5,min=5},{monster_package={12030,12031,12032},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=15,max=4,min=4}},
        
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
	{ config_id = 5025, pos = { x = 33.319, y = -7.700, z = -88.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 5026, pos = { x = 33.276, y = -7.697, z = -90.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 5027, pos = { x = 35.230, y = -7.695, z = -90.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 5028, pos = { x = 33.262, y = -7.699, z = -92.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 5029, pos = { x = 35.952, y = -7.700, z = -92.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 5030, pos = { x = 35.902, y = -7.700, z = -88.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 5031, pos = { x = 2.325, y = -7.698, z = -60.685 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5032, pos = { x = 3.784, y = -7.700, z = -58.291 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5033, pos = { x = 1.997, y = -7.699, z = -56.314 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5034, pos = { x = 3.759, y = -7.697, z = -61.199 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5035, pos = { x = 4.018, y = -7.699, z = -54.615 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5036, pos = { x = 5.172, y = -7.695, z = -60.294 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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