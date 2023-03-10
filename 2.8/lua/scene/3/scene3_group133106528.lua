-- 基础信息
local base_info = {
	group_id = 133106528
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 528001, monster_id = 28050102, pos = { x = -882.814, y = 141.917, z = 1910.394 }, rot = { x = 0.000, y = 129.789, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 },
	{ config_id = 528002, monster_id = 28050102, pos = { x = -885.080, y = 141.856, z = 1915.793 }, rot = { x = 0.000, y = 18.049, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 }
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
		{ config_id = 528004, monster_id = 28050102, pos = { x = -886.378, y = 141.834, z = 1910.123 }, rot = { x = 0.000, y = 91.788, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 19 }
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
		monsters = { 528001, 528002 },
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