-- 基础信息
local base_info = {
	group_id = 133301647
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
	{ config_id = 647001, gadget_id = 70310006, pos = { x = -194.664, y = 93.384, z = 3918.735 }, rot = { x = 0.000, y = 26.139, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 647002, gadget_id = 70220048, pos = { x = -196.469, y = 93.528, z = 3906.702 }, rot = { x = 10.513, y = 337.729, z = 10.752 }, level = 27, area_id = 22 },
	{ config_id = 647003, gadget_id = 70220048, pos = { x = -197.576, y = 93.748, z = 3905.159 }, rot = { x = 0.000, y = 11.900, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 647004, gadget_id = 70220050, pos = { x = -199.201, y = 91.265, z = 3915.807 }, rot = { x = 0.000, y = 250.714, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 647006, gadget_id = 70220051, pos = { x = -199.803, y = 94.833, z = 3903.592 }, rot = { x = 272.849, y = 42.044, z = 354.355 }, level = 27, area_id = 22 },
	{ config_id = 647007, gadget_id = 70220052, pos = { x = -198.907, y = 94.076, z = 3904.985 }, rot = { x = 348.764, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 647008, gadget_id = 70300104, pos = { x = -207.825, y = 93.343, z = 3907.471 }, rot = { x = 1.517, y = 316.322, z = 339.358 }, level = 27, area_id = 22 }
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
		gadgets = { 647001, 647002, 647003, 647004, 647006, 647007, 647008 },
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