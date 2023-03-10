-- 基础信息
local base_info = {
	group_id = 133303466
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
	{ config_id = 466001, gadget_id = 70330197, pos = { x = -1495.092, y = 184.702, z = 3295.277 }, rot = { x = 0.000, y = 329.477, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 466002, gadget_id = 70330197, pos = { x = -1507.924, y = 199.767, z = 3288.046 }, rot = { x = 0.000, y = 58.436, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 466003, gadget_id = 70330197, pos = { x = -1530.374, y = 204.021, z = 3286.607 }, rot = { x = 0.000, y = 289.553, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 466004, gadget_id = 70330197, pos = { x = -1562.994, y = 206.409, z = 3286.249 }, rot = { x = 0.000, y = 249.439, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 466005, gadget_id = 70330197, pos = { x = -1570.757, y = 219.895, z = 3291.553 }, rot = { x = 0.000, y = 180.418, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 466006, gadget_id = 70330197, pos = { x = -1548.113, y = 194.575, z = 3278.069 }, rot = { x = 5.594, y = 7.529, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 466007, gadget_id = 70330197, pos = { x = -1535.006, y = 185.054, z = 3300.066 }, rot = { x = 0.000, y = 308.496, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 466008, gadget_id = 70330197, pos = { x = -1495.568, y = 213.316, z = 3269.267 }, rot = { x = 5.308, y = 10.284, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 466009, gadget_id = 70330197, pos = { x = -1498.737, y = 223.226, z = 3257.685 }, rot = { x = 0.000, y = 308.496, z = 0.000 }, level = 30, area_id = 23 }
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
		gadgets = { 466001, 466002, 466003, 466004, 466005, 466006, 466007, 466008, 466009 },
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