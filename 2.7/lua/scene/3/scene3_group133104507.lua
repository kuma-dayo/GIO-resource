-- 基础信息
local base_info = {
	group_id = 133104507
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 507001, monster_id = 28020102, pos = { x = 971.549, y = 240.834, z = 765.044 }, rot = { x = 0.000, y = 252.289, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 507002, monster_id = 28030402, pos = { x = 978.731, y = 238.107, z = 777.515 }, rot = { x = 0.000, y = 326.907, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 },
	{ config_id = 507003, monster_id = 28030402, pos = { x = 993.088, y = 234.089, z = 779.246 }, rot = { x = 0.000, y = 101.446, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 6 },
	{ config_id = 507004, monster_id = 28030402, pos = { x = 993.168, y = 234.238, z = 774.480 }, rot = { x = 0.000, y = 325.735, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 }
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
		monsters = { 507001, 507002, 507003, 507004 },
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