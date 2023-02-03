-- 基础信息
local base_info = {
	group_id = 144001192
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
	{ config_id = 192001, gadget_id = 70520003, pos = { x = 182.028, y = 132.242, z = 312.910 }, rot = { x = 354.270, y = 220.334, z = 6.706 }, level = 1, area_id = 102 },
	{ config_id = 192002, gadget_id = 70520003, pos = { x = 179.221, y = 131.879, z = 310.642 }, rot = { x = 354.270, y = 220.334, z = 6.706 }, level = 1, area_id = 102 },
	{ config_id = 192003, gadget_id = 70520003, pos = { x = 180.045, y = 134.592, z = 309.305 }, rot = { x = 0.000, y = 106.386, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 192004, gadget_id = 70520002, pos = { x = 200.420, y = 131.976, z = 329.992 }, rot = { x = 0.000, y = 0.000, z = 9.958 }, level = 1, area_id = 102 },
	{ config_id = 192005, gadget_id = 70520002, pos = { x = 204.851, y = 133.798, z = 326.833 }, rot = { x = 0.000, y = 116.366, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 192006, gadget_id = 70520002, pos = { x = 204.881, y = 132.253, z = 317.869 }, rot = { x = 0.000, y = 140.226, z = 0.000 }, level = 1, area_id = 102 }
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
		gadgets = { 192001, 192002, 192003, 192004, 192005, 192006 },
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