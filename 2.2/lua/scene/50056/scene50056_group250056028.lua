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
	{ config_id = 28001, pos = { x = -184.347, y = 0.124, z = 69.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 28002, pos = { x = -167.151, y = 0.124, z = 69.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 28003, pos = { x = -140.178, y = 0.124, z = 44.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 28004, pos = { x = -139.994, y = 0.124, z = 27.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 28005, pos = { x = -113.644, y = 0.124, z = 69.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 28006, pos = { x = -95.884, y = 0.124, z = 69.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 28007, pos = { x = -114.815, y = 0.124, z = 0.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 28008, pos = { x = -94.645, y = 0.124, z = -0.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================