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
	{ config_id = 57, gadget_id = 70310004, pos = { x = 126.307, y = 4.000, z = -676.187 }, rot = { x = 0.000, y = 92.703, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 58, gadget_id = 70310001, pos = { x = 113.162, y = 4.000, z = -693.166 }, rot = { x = 0.000, y = 95.258, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		gadgets = { 57, 58 },
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