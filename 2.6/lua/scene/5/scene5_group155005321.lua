-- 基础信息
local base_info = {
	group_id = 155005321
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 321001, monster_id = 26050601, pos = { x = 636.055, y = 245.236, z = 775.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "岩龙蜥", area_id = 200 },
	{ config_id = 321002, monster_id = 26050901, pos = { x = 651.704, y = 240.529, z = 711.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 },
	{ config_id = 321003, monster_id = 26050901, pos = { x = 648.528, y = 243.145, z = 733.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "幼岩龙蜥", area_id = 200 }
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
		monsters = { 321001, 321002, 321003 },
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