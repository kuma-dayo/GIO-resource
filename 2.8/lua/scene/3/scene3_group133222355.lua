-- 基础信息
local base_info = {
	group_id = 133222355
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
	{ config_id = 355001, gadget_id = 70950046, pos = { x = -4643.980, y = 152.268, z = -4251.219 }, rot = { x = 271.221, y = 229.304, z = 151.944 }, level = 30, area_id = 14 },
	{ config_id = 355002, gadget_id = 70950046, pos = { x = -4643.911, y = 156.344, z = -4251.418 }, rot = { x = 271.221, y = 229.303, z = 177.187 }, level = 30, area_id = 14 },
	{ config_id = 355003, gadget_id = 70950046, pos = { x = -4644.009, y = 154.047, z = -4251.244 }, rot = { x = 271.220, y = 229.303, z = 151.944 }, level = 30, area_id = 14 },
	{ config_id = 355004, gadget_id = 70950046, pos = { x = -4653.922, y = 153.808, z = -4234.063 }, rot = { x = 357.957, y = 313.494, z = 268.062 }, level = 30, area_id = 14 },
	{ config_id = 355005, gadget_id = 70950046, pos = { x = -4655.661, y = 154.883, z = -4232.717 }, rot = { x = 357.186, y = 272.028, z = 269.900 }, level = 30, area_id = 14 },
	{ config_id = 355006, gadget_id = 70290086, pos = { x = -4625.027, y = 167.439, z = -4271.846 }, rot = { x = 33.676, y = 180.000, z = 180.000 }, level = 30, area_id = 14 },
	{ config_id = 355007, gadget_id = 70950046, pos = { x = -4636.847, y = 164.253, z = -4271.499 }, rot = { x = 356.994, y = 22.685, z = 97.151 }, level = 30, area_id = 14 }
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
		gadgets = { 355001, 355002, 355003, 355004, 355005, 355006, 355007 },
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