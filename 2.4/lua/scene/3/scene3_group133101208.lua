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
	{ config_id = 208001, gadget_id = 70500000, pos = { x = 1039.209, y = 306.902, z = 1228.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 9128, area_id = 6 },
	{ config_id = 208002, gadget_id = 70500000, pos = { x = 1049.019, y = 309.710, z = 1219.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 9128, area_id = 6 },
	{ config_id = 208003, gadget_id = 70500000, pos = { x = 1033.774, y = 307.341, z = 1220.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 9128, area_id = 6 },
	{ config_id = 208004, gadget_id = 70500000, pos = { x = 1034.322, y = 312.004, z = 1222.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 9128, area_id = 6 },
	{ config_id = 208005, gadget_id = 70500000, pos = { x = 1048.892, y = 309.284, z = 1222.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 9128, area_id = 6 },
	{ config_id = 208006, gadget_id = 70500000, pos = { x = 1032.968, y = 312.042, z = 1219.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 9128, area_id = 6 }
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
	suite = 2,
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
		gadgets = { 208001, 208002, 208003, 208004, 208005, 208006 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================