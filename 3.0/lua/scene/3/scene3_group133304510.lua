-- 基础信息
local base_info = {
	group_id = 133304510
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 510002, monster_id = 28030313, pos = { x = -1925.181, y = 328.177, z = 2592.008 }, rot = { x = 0.000, y = 52.105, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
	{ config_id = 510003, monster_id = 28030313, pos = { x = -1926.661, y = 338.626, z = 2604.135 }, rot = { x = 0.000, y = 213.174, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 510002, 510003 },
		gadgets = { },
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