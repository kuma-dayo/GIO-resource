--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 22001, monster_id = 28040101, pos = { x = 2056.179, y = 201.650, z = -778.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "水族", area_id = 3 },
	{ config_id = 22002, monster_id = 28040101, pos = { x = 2054.594, y = 201.650, z = -779.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "水族", area_id = 3 },
	{ config_id = 22003, monster_id = 28040101, pos = { x = 2054.657, y = 201.650, z = -781.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_tag = "水族", area_id = 3 }
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
		monsters = { 22001, 22002, 22003 },
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