-- 基础信息
local base_info = {
	group_id = 133301388
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 388002, monster_id = 21010101, pos = { x = -1013.025, y = 278.403, z = 3804.025 }, rot = { x = 0.000, y = 29.886, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9002, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 388001, gadget_id = 70330197, pos = { x = -1011.412, y = 278.237, z = 3799.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
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
		monsters = { 388002 },
		gadgets = { 388001 },
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