-- 基础信息
local base_info = {
	group_id = 133107091
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
	{ config_id = 91002, gadget_id = 70220020, pos = { x = -773.320, y = 173.159, z = 874.625 }, rot = { x = 6.809, y = 331.480, z = 0.922 }, level = 1, area_id = 8 },
	{ config_id = 91003, gadget_id = 70220020, pos = { x = -783.883, y = 169.240, z = 894.483 }, rot = { x = 36.453, y = 356.884, z = 23.115 }, level = 1, area_id = 8 },
	{ config_id = 91005, gadget_id = 70220020, pos = { x = -766.857, y = 171.300, z = 888.234 }, rot = { x = 355.003, y = 238.027, z = 346.567 }, level = 1, area_id = 8 },
	{ config_id = 91007, gadget_id = 70220004, pos = { x = -773.221, y = 171.495, z = 888.677 }, rot = { x = 4.809, y = 0.134, z = 3.195 }, level = 1, area_id = 8 },
	{ config_id = 91008, gadget_id = 70220004, pos = { x = -779.460, y = 172.308, z = 882.603 }, rot = { x = 4.809, y = 0.134, z = 3.195 }, level = 1, area_id = 8 },
	{ config_id = 91009, gadget_id = 70220004, pos = { x = -774.416, y = 172.906, z = 877.928 }, rot = { x = 4.809, y = 0.134, z = 3.195 }, level = 1, area_id = 8 }
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
		gadgets = { 91002, 91003, 91005, 91007, 91008, 91009 },
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