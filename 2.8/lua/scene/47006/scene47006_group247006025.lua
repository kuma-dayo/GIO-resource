-- 基础信息
local base_info = {
	group_id = 247006025
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
	{ config_id = 25001, pos = { x = -0.326, y = 0.082, z = 123.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 25002, pos = { x = -0.013, y = 0.082, z = 202.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 25003, pos = { x = -29.328, y = 1.130, z = 239.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 25004, pos = { x = -79.949, y = 0.140, z = 282.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 25005, pos = { x = -160.168, y = 1.130, z = 281.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 25006, pos = { x = -36.011, y = -1.950, z = 319.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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