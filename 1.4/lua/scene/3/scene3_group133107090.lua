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
	{ config_id = 90001, gadget_id = 70310007, pos = { x = -949.168, y = 195.002, z = 767.820 }, rot = { x = 0.000, y = 91.465, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 90003, gadget_id = 70310007, pos = { x = -936.678, y = 195.170, z = 759.376 }, rot = { x = 3.470, y = 91.465, z = 316.652 }, level = 32, area_id = 8 },
	{ config_id = 90004, gadget_id = 70310007, pos = { x = -917.235, y = 197.841, z = 766.626 }, rot = { x = 3.634, y = 121.401, z = 59.827 }, level = 32, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		gadgets = { 90001, 90003, 90004 },
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