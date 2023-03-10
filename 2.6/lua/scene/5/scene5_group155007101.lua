-- 基础信息
local base_info = {
	group_id = 155007101
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
	{ config_id = 101004, gadget_id = 70500000, pos = { x = -337.407, y = 208.969, z = 1618.563 }, rot = { x = 355.929, y = 269.508, z = 0.000 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 101005, gadget_id = 70500000, pos = { x = -340.240, y = 208.654, z = 1623.171 }, rot = { x = 0.000, y = 310.671, z = 14.151 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 101006, gadget_id = 70500000, pos = { x = -339.302, y = 208.727, z = 1622.236 }, rot = { x = 11.165, y = 0.000, z = 0.000 }, level = 36, point_type = 1001, area_id = 200 }
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
		{ config_id = 101001, gadget_id = 70500000, pos = { x = -353.293, y = 208.482, z = 1608.965 }, rot = { x = 0.000, y = 322.136, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 },
		{ config_id = 101002, gadget_id = 70500000, pos = { x = -349.868, y = 208.398, z = 1610.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 },
		{ config_id = 101003, gadget_id = 70500000, pos = { x = -341.375, y = 208.230, z = 1622.412 }, rot = { x = 0.000, y = 345.828, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 }
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
		gadgets = { 101004, 101005, 101006 },
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