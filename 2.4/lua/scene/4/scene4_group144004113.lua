--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113002, monster_id = 21010901, pos = { x = 120.033, y = 203.708, z = -447.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "远程丘丘人", area_id = 101 },
	{ config_id = 113003, monster_id = 21010901, pos = { x = 118.775, y = 203.579, z = -449.862 }, rot = { x = 0.000, y = 226.504, z = 0.000 }, level = 25, drop_tag = "远程丘丘人", area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113001, gadget_id = 70950092, pos = { x = 119.318, y = 200.000, z = -448.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
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
		monsters = { 113002, 113003 },
		gadgets = { 113001 },
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