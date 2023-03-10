-- 基础信息
local base_info = {
	group_id = 155005365
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
	{ config_id = 365001, gadget_id = 70500000, pos = { x = 395.760, y = 309.212, z = 249.835 }, rot = { x = 351.350, y = 234.887, z = 10.425 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365002, gadget_id = 70500000, pos = { x = 394.070, y = 309.222, z = 239.503 }, rot = { x = 345.466, y = 34.705, z = 354.120 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365003, gadget_id = 70500000, pos = { x = 394.546, y = 309.284, z = 240.118 }, rot = { x = 33.784, y = 121.023, z = 357.997 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365004, gadget_id = 70500000, pos = { x = 395.468, y = 309.203, z = 250.481 }, rot = { x = 342.968, y = 323.849, z = 337.440 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365005, gadget_id = 70500000, pos = { x = 397.696, y = 249.966, z = 367.104 }, rot = { x = 29.167, y = 314.607, z = 332.797 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365006, gadget_id = 70500000, pos = { x = 412.492, y = 251.638, z = 360.694 }, rot = { x = 33.523, y = 344.127, z = 351.500 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365007, gadget_id = 70500000, pos = { x = 396.807, y = 249.771, z = 367.339 }, rot = { x = 18.542, y = 0.904, z = 1.303 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365008, gadget_id = 70500000, pos = { x = 411.767, y = 251.418, z = 361.105 }, rot = { x = 329.897, y = 245.769, z = 338.613 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365009, gadget_id = 70500000, pos = { x = 407.262, y = 251.241, z = 363.796 }, rot = { x = 37.368, y = 336.159, z = 341.863 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365010, gadget_id = 70500000, pos = { x = 406.525, y = 250.816, z = 364.494 }, rot = { x = 340.710, y = 232.943, z = 337.435 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365011, gadget_id = 70500000, pos = { x = 155.999, y = 307.790, z = 286.166 }, rot = { x = 353.748, y = 25.020, z = 24.304 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365012, gadget_id = 70500000, pos = { x = 156.142, y = 307.982, z = 286.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365013, gadget_id = 70500000, pos = { x = 623.370, y = 191.432, z = 501.348 }, rot = { x = 8.059, y = 56.736, z = 354.545 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365014, gadget_id = 70500000, pos = { x = 622.549, y = 191.452, z = 501.501 }, rot = { x = 0.664, y = 25.727, z = 338.040 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 365015, gadget_id = 70500000, pos = { x = 621.921, y = 191.499, z = 501.605 }, rot = { x = 342.267, y = 344.695, z = 12.153 }, level = 36, point_type = 1001, area_id = 200 }
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
		gadgets = { 365001, 365002, 365003, 365004, 365005, 365006, 365007, 365008, 365009, 365010, 365011, 365012, 365013, 365014, 365015 },
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