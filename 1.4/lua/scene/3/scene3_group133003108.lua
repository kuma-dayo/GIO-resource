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
	{ config_id = 4091, gadget_id = 70211101, pos = { x = 2541.852, y = 249.799, z = -1551.705 }, rot = { x = 358.428, y = 349.972, z = 5.577 }, level = 6, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
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
		-- description = 小灯草生态临时,
		monsters = { },
		gadgets = { 4091 },
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