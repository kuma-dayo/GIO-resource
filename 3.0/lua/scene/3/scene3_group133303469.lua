-- 基础信息
local base_info = {
	group_id = 133303469
}

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
	{ config_id = 469001, gadget_id = 70330197, pos = { x = -1471.654, y = 252.488, z = 3449.373 }, rot = { x = 0.000, y = 211.378, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 469002, gadget_id = 70330197, pos = { x = -1456.420, y = 276.652, z = 3465.174 }, rot = { x = 0.000, y = 211.378, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 469003, gadget_id = 70330197, pos = { x = -1429.051, y = 237.070, z = 3438.262 }, rot = { x = 0.000, y = 212.538, z = 0.000 }, level = 30, area_id = 23 }
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
	gadgets = {
		{ config_id = 469004, gadget_id = 70300048, pos = { x = -1464.974, y = 249.398, z = 3427.364 }, rot = { x = 0.000, y = 237.124, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 469005, gadget_id = 70300048, pos = { x = -1463.847, y = 249.393, z = 3426.472 }, rot = { x = 0.000, y = 222.421, z = 0.000 }, level = 30, area_id = 23 }
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
		gadgets = { 469001, 469002, 469003 },
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