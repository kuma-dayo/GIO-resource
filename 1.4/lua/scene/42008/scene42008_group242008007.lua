-- Trigger变量
local defs = {
	group_id = 242008007,
	gear_group_id = 242008002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12046,12047,12048},route=1,route_points={1,2,3,4,5,6,7,8,9,10,11,12},tags=2,count=15,max=5,min=5},{monster_package={12046,12047,12048},route=2,route_points={1,2,3,4,5,6,7,8,9,10,11,12},tags=4,count=15,max=5,min=5},{monster_package={12050,12051,12052},route=3,route_points={1,2,3,4,5,6,7,8,9,10,11,12,13},tags=8,count=6,max=1,min=1,fill_time=8,fill_count=1},{monster_package={12050,12051,12052},route=4,route_points={1,2,3,4,5,6,7,8,9,10,11,12,13},tags=16,count=6,max=1,min=1,fill_time=8,fill_count=1}},
        
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
	{ config_id = 7001, pos = { x = 51.437, y = 10.066, z = -25.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 7002, pos = { x = 51.711, y = 10.048, z = -29.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 7003, pos = { x = 49.106, y = 10.050, z = -25.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 7004, pos = { x = 49.081, y = 10.043, z = -29.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 7005, pos = { x = 51.584, y = 10.051, z = -27.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 7006, pos = { x = 48.535, y = 10.047, z = -27.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 7007, pos = { x = 52.069, y = 10.051, z = -31.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 7008, pos = { x = 53.554, y = 10.053, z = -25.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 7009, pos = { x = 51.437, y = 10.092, z = -70.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7010, pos = { x = 51.711, y = 10.069, z = -73.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7011, pos = { x = 49.106, y = 10.070, z = -70.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7012, pos = { x = 49.081, y = 10.065, z = -74.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7013, pos = { x = 51.584, y = 10.063, z = -72.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7014, pos = { x = 48.535, y = 10.081, z = -72.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7015, pos = { x = 52.069, y = 10.073, z = -76.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7016, pos = { x = 53.554, y = 10.066, z = -69.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7017, pos = { x = 48.874, y = -4.261, z = -48.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 7018, pos = { x = 49.149, y = -4.273, z = -51.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 7019, pos = { x = 46.543, y = -4.253, z = -48.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 7020, pos = { x = 46.518, y = -4.267, z = -52.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 7021, pos = { x = 49.022, y = -4.270, z = -50.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 7022, pos = { x = 45.973, y = -4.259, z = -50.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 16 },
	{ config_id = 7023, pos = { x = 49.507, y = -4.254, z = -54.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 16 },
	{ config_id = 7024, pos = { x = 50.992, y = -4.270, z = -47.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 16 },
	{ config_id = 7025, pos = { x = 52.168, y = -4.244, z = -53.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 16 },
	{ config_id = 7026, pos = { x = 53.045, y = -4.283, z = -50.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 16 }
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