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
	{ config_id = 2966, gadget_id = 70220014, pos = { x = 2598.002, y = 225.793, z = -1159.346 }, rot = { x = 0.000, y = 168.779, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 2967, gadget_id = 70220014, pos = { x = 2596.573, y = 225.822, z = -1156.094 }, rot = { x = 0.000, y = 224.824, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 3390, gadget_id = 70211101, pos = { x = 2595.816, y = 225.072, z = -1165.249 }, rot = { x = 356.063, y = 7.076, z = 4.370 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4462, gadget_id = 70310006, pos = { x = 2597.147, y = 225.436, z = -1161.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 1 }
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
	rand_suite = true
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
		gadgets = { 2966, 2967, 3390, 4462 },
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