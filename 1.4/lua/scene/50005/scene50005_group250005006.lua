--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19, monster_id = 21020201, pos = { x = 18.531, y = 4.000, z = -108.038 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 20, monster_id = 21010901, pos = { x = 11.729, y = 4.000, z = -101.494 }, rot = { x = 0.000, y = 99.612, z = 0.000 }, level = 20, disableWander = true }
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
		monsters = { 19, 20 },
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