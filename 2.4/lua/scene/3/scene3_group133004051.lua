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

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 184, monster_id = 28050101, pos = { x = 2138.660, y = 221.270, z = -502.337 }, rot = { x = 0.000, y = 300.920, z = 0.000 }, level = 1, drop_tag = "魔法生物", area_id = 3 },
		{ config_id = 185, monster_id = 28050101, pos = { x = 2161.799, y = 237.991, z = -457.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", area_id = 3 }
	}
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