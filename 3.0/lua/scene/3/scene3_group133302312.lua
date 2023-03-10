-- 基础信息
local base_info = {
	group_id = 133302312
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 312003, monster_id = 28020313, pos = { x = -979.536, y = 210.458, z = 2825.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 312004, monster_id = 28020314, pos = { x = -961.232, y = 211.162, z = 2846.436 }, rot = { x = 0.000, y = 201.023, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 312001, gadget_id = 70500000, pos = { x = -960.744, y = 214.381, z = 2821.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 312002, gadget_id = 70500000, pos = { x = -971.612, y = 210.658, z = 2848.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 }
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
		monsters = { 312003, 312004 },
		gadgets = { 312001, 312002 },
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