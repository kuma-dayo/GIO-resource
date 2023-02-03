-- 基础信息
local base_info = {
	group_id = 133301423
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
	{ config_id = 423001, gadget_id = 70290002, pos = { x = -1237.340, y = 176.816, z = 2955.083 }, rot = { x = 0.000, y = 30.137, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 423002, gadget_id = 70500000, pos = { x = -1237.934, y = 178.304, z = 2956.390 }, rot = { x = 3.222, y = 295.007, z = 355.364 }, level = 30, point_type = 3011, owner = 423001, area_id = 21 },
	{ config_id = 423003, gadget_id = 70500000, pos = { x = -1237.140, y = 179.562, z = 2954.034 }, rot = { x = 5.612, y = 344.108, z = 359.394 }, level = 30, point_type = 3011, owner = 423001, area_id = 21 },
	{ config_id = 423004, gadget_id = 70500000, pos = { x = -1236.658, y = 179.608, z = 2956.534 }, rot = { x = 4.330, y = 30.274, z = 3.624 }, level = 30, point_type = 3011, owner = 423001, area_id = 21 }
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
		gadgets = { 423001, 423002, 423003, 423004 },
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