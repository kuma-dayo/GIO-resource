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
	{ config_id = 106001, gadget_id = 70500000, pos = { x = -4437.862, y = 205.263, z = -4562.605 }, rot = { x = 40.546, y = 253.825, z = 359.708 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 106002, gadget_id = 70500000, pos = { x = -4431.869, y = 204.303, z = -4561.820 }, rot = { x = 8.656, y = 92.368, z = 3.424 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 106003, gadget_id = 70500000, pos = { x = -4434.059, y = 204.060, z = -4565.322 }, rot = { x = 31.379, y = 187.130, z = 25.489 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 106004, gadget_id = 70500000, pos = { x = -4425.958, y = 203.354, z = -4560.245 }, rot = { x = 348.428, y = 260.406, z = 45.234 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 106005, gadget_id = 70500000, pos = { x = -4436.547, y = 202.482, z = -4555.361 }, rot = { x = 18.244, y = 199.271, z = 286.214 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 106006, gadget_id = 70500000, pos = { x = -4439.017, y = 202.796, z = -4565.269 }, rot = { x = 40.322, y = 211.504, z = 348.823 }, level = 30, point_type = 1001, area_id = 14 },
	{ config_id = 106007, gadget_id = 70500000, pos = { x = -4426.367, y = 202.466, z = -4564.424 }, rot = { x = 17.428, y = 228.859, z = 12.631 }, level = 30, point_type = 1001, area_id = 14 }
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
		gadgets = { 106001, 106002, 106003, 106004, 106005, 106006, 106007 },
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