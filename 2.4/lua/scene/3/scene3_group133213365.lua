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
	{ config_id = 365002, gadget_id = 70360130, pos = { x = -3528.995, y = 200.000, z = -2977.187 }, rot = { x = 0.000, y = 0.000, z = 20.760 }, level = 1, area_id = 12 },
	{ config_id = 365003, gadget_id = 70360130, pos = { x = -3531.412, y = 200.000, z = -2975.728 }, rot = { x = 54.698, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 365004, gadget_id = 70360130, pos = { x = -3532.830, y = 200.000, z = -2978.570 }, rot = { x = 33.010, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
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
		gadgets = { 365002, 365003, 365004 },
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