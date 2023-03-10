-- 基础信息
local base_info = {
	group_id = 133225189
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
	{ config_id = 189001, gadget_id = 70500000, pos = { x = -6382.319, y = 255.504, z = -2632.393 }, rot = { x = 23.162, y = 345.423, z = 21.446 }, level = 33, point_type = 1001, area_id = 18 },
	{ config_id = 189002, gadget_id = 70500000, pos = { x = -6388.151, y = 255.050, z = -2630.374 }, rot = { x = 24.424, y = 338.008, z = 343.145 }, level = 33, point_type = 1001, area_id = 18 },
	{ config_id = 189003, gadget_id = 70500000, pos = { x = -6399.794, y = 253.673, z = -2634.833 }, rot = { x = 5.441, y = 297.159, z = 350.601 }, level = 33, point_type = 1002, area_id = 18 },
	{ config_id = 189004, gadget_id = 70500000, pos = { x = -6390.123, y = 255.305, z = -2634.075 }, rot = { x = 358.436, y = 232.863, z = 353.726 }, level = 33, point_type = 1002, area_id = 18 },
	{ config_id = 189005, gadget_id = 70500000, pos = { x = -6401.927, y = 253.159, z = -2634.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 1008, area_id = 18 }
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
		gadgets = { 189001, 189002, 189003, 189004, 189005 },
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