-- 基础信息
local base_info = {
	group_id = 166001426
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 426005, monster_id = 28020605, pos = { x = 652.951, y = 707.672, z = 341.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 300 },
	{ config_id = 426006, monster_id = 28050102, pos = { x = 665.511, y = 709.643, z = 368.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 426007, monster_id = 28050102, pos = { x = 659.358, y = 707.492, z = 368.422 }, rot = { x = 0.000, y = 103.453, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 426011, monster_id = 28010201, pos = { x = 683.827, y = 706.677, z = 302.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 426001, gadget_id = 70500000, pos = { x = 693.871, y = 707.703, z = 360.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 },
	{ config_id = 426002, gadget_id = 70500000, pos = { x = 693.717, y = 707.424, z = 364.033 }, rot = { x = 358.251, y = 0.189, z = 347.660 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 426003, gadget_id = 70500000, pos = { x = 710.982, y = 709.274, z = 375.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1001, area_id = 300 },
	{ config_id = 426004, gadget_id = 70500000, pos = { x = 712.342, y = 709.439, z = 379.642 }, rot = { x = 0.000, y = 234.980, z = 333.520 }, level = 36, point_type = 1001, area_id = 300 },
	{ config_id = 426008, gadget_id = 70290309, pos = { x = 645.874, y = 709.535, z = 361.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 426009, gadget_id = 70290309, pos = { x = 656.423, y = 708.370, z = 359.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 426010, gadget_id = 70290309, pos = { x = 659.803, y = 708.487, z = 371.865 }, rot = { x = 0.000, y = 288.157, z = 0.000 }, level = 36, area_id = 300 }
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
		monsters = { 426005, 426006, 426007, 426011 },
		gadgets = { 426001, 426002, 426003, 426004, 426008, 426009, 426010 },
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