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
	{ config_id = 322, gadget_id = 70211101, pos = { x = 2645.681, y = 215.893, z = 445.209 }, rot = { x = 9.422, y = 266.534, z = 340.989 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 892, gadget_id = 70211101, pos = { x = 2580.041, y = 198.374, z = 400.530 }, rot = { x = 0.000, y = 75.380, z = 355.797 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 905, gadget_id = 70211101, pos = { x = 2630.251, y = 211.216, z = 463.095 }, rot = { x = 340.102, y = 130.520, z = 7.290 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 906, gadget_id = 70211101, pos = { x = 2651.999, y = 220.338, z = 428.494 }, rot = { x = 350.296, y = 87.874, z = 7.668 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
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
		gadgets = { 322, 892, 905, 906 },
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