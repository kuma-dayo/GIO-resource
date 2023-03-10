--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 28010201, pos = { x = 1816.095, y = 203.495, z = -308.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "采集动物", area_id = 3 },
	{ config_id = 8002, monster_id = 28050101, pos = { x = 1869.993, y = 223.511, z = -362.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 },
	{ config_id = 8003, monster_id = 28050101, pos = { x = 1799.537, y = 216.908, z = -363.964 }, rot = { x = 0.000, y = 74.496, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 },
	{ config_id = 8004, monster_id = 28050101, pos = { x = 1825.466, y = 218.505, z = -397.759 }, rot = { x = 0.000, y = 74.496, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 },
	{ config_id = 8005, monster_id = 28050101, pos = { x = 1795.879, y = 212.842, z = -266.803 }, rot = { x = 0.000, y = 74.496, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 },
	{ config_id = 8006, monster_id = 28050101, pos = { x = 1794.013, y = 212.641, z = -268.168 }, rot = { x = 0.000, y = 74.496, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 },
	{ config_id = 8007, monster_id = 28050101, pos = { x = 1798.210, y = 212.695, z = -269.295 }, rot = { x = 0.000, y = 74.496, z = 0.000 }, level = 10, drop_tag = "魔法生物", area_id = 3 }
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
		monsters = { 8001, 8002, 8003, 8004, 8005, 8006, 8007 },
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