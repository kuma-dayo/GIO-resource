-- 基础信息
local base_info = {
	group_id = 133217309
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 309002, monster_id = 20011001, pos = { x = -4565.437, y = 200.067, z = -3775.878 }, rot = { x = 2.038, y = 76.661, z = 353.114 }, level = 30, drop_tag = "史莱姆", area_id = 14 },
	{ config_id = 309003, monster_id = 20011001, pos = { x = -4572.695, y = 200.000, z = -3778.524 }, rot = { x = 0.000, y = 19.475, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 14 }
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
		monsters = { 309002, 309003 },
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