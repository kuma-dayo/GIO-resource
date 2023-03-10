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
	{ config_id = 2883, gadget_id = 70211121, pos = { x = 1211.726, y = 274.100, z = -1696.124 }, rot = { x = 0.000, y = 76.199, z = 0.000 }, level = 11, chest_drop_id = 1010600, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 2884, gadget_id = 70211121, pos = { x = 1211.630, y = 274.102, z = -1696.168 }, rot = { x = 0.000, y = 78.420, z = 0.000 }, level = 11, drop_tag = "解谜高级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 }
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
		gadgets = { 2884 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 2883 },
		regions = { },
		triggers = { },
		rand_weight = 0,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================