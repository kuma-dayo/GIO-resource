--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 433002, monster_id = 21010701, pos = { x = 1129.887, y = 245.245, z = -297.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_tag = "丘丘人", pose_id = 9013, area_id = 10 },
	{ config_id = 433003, monster_id = 21010701, pos = { x = 1135.592, y = 244.687, z = -302.211 }, rot = { x = 0.000, y = 149.779, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 10 },
	{ config_id = 433004, monster_id = 21020101, pos = { x = 1167.294, y = 243.962, z = -325.674 }, rot = { x = 0.000, y = 282.418, z = 0.000 }, level = 35, drop_tag = "丘丘暴徒", area_id = 10 },
	{ config_id = 433005, monster_id = 28020601, pos = { x = 1115.974, y = 250.722, z = -329.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_tag = "走兽", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 433001, gadget_id = 70211001, pos = { x = 1135.695, y = 245.096, z = -296.402 }, rot = { x = 3.861, y = 188.925, z = 4.215 }, level = 16, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 5 }
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
		monsters = { 433002, 433003, 433004, 433005 },
		gadgets = { 433001 },
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