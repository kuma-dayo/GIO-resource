--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 220001, monster_id = 21020401, pos = { x = 1314.069, y = 295.092, z = -1055.398 }, rot = { x = 0.000, y = 312.478, z = 0.000 }, level = 30, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 220002, gadget_id = 70220058, pos = { x = 1309.794, y = 294.880, z = -1056.073 }, rot = { x = 358.792, y = 355.968, z = 345.061 }, level = 30, area_id = 10 },
	{ config_id = 220003, gadget_id = 70220058, pos = { x = 1317.008, y = 294.516, z = -1053.506 }, rot = { x = 358.792, y = 71.707, z = 345.061 }, level = 30, area_id = 10 }
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
		monsters = { 220001 },
		gadgets = { 220002, 220003 },
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