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
	{ config_id = 914001, gadget_id = 70300118, pos = { x = 936.907, y = 212.780, z = 347.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 914002, gadget_id = 70710135, pos = { x = 937.316, y = 213.527, z = 346.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 914003, gadget_id = 70710096, pos = { x = 937.760, y = 213.527, z = 346.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 914004, gadget_id = 70710135, pos = { x = 937.233, y = 213.527, z = 346.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 914005, gadget_id = 70710102, pos = { x = 937.723, y = 213.527, z = 346.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 914006, gadget_id = 70710106, pos = { x = 937.328, y = 213.527, z = 346.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 914001 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 914002, 914003, 914004, 914005, 914006 },
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