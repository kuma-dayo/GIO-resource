-- 基础信息
local base_info = {
	group_id = 133301191
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
	{ config_id = 191005, gadget_id = 70310479, pos = { x = -382.646, y = 288.273, z = 4014.682 }, rot = { x = 0.000, y = 38.675, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 191008, gadget_id = 70220103, pos = { x = -382.682, y = 310.382, z = 4014.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 191016, gadget_id = 70220003, pos = { x = -414.259, y = 272.009, z = 4011.681 }, rot = { x = 0.000, y = 269.477, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 191017, gadget_id = 70220020, pos = { x = -415.043, y = 272.073, z = 4007.580 }, rot = { x = 355.812, y = 218.610, z = 356.159 }, level = 33, area_id = 22 },
	{ config_id = 191018, gadget_id = 70310479, pos = { x = -377.025, y = 282.873, z = 4016.808 }, rot = { x = 0.265, y = 5.394, z = 359.488 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 191019, gadget_id = 70330216, pos = { x = -411.542, y = 272.169, z = 4015.411 }, rot = { x = 0.000, y = 78.303, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 191020, gadget_id = 70330216, pos = { x = -414.261, y = 272.183, z = 4005.457 }, rot = { x = 0.300, y = 133.829, z = 359.757 }, level = 33, area_id = 22 },
	{ config_id = 191021, gadget_id = 70220005, pos = { x = -416.665, y = 271.993, z = 4004.490 }, rot = { x = 0.000, y = 245.225, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 191022, gadget_id = 70220005, pos = { x = -416.140, y = 271.954, z = 4010.507 }, rot = { x = 0.000, y = 245.225, z = 0.000 }, level = 33, area_id = 22 }
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
		gadgets = { 191005, 191008, 191016, 191017, 191018, 191019, 191020, 191021, 191022 },
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