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
	{ config_id = 97, gadget_id = 70380001, pos = { x = 132.818, y = 3.575, z = -600.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50008019 },
	{ config_id = 98, gadget_id = 70380001, pos = { x = 132.440, y = 3.320, z = -608.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50008020 },
	{ config_id = 99, gadget_id = 70380001, pos = { x = 132.370, y = 3.513, z = -590.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 50008021 }
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
		gadgets = { 97, 98, 99 },
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