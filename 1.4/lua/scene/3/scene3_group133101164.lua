--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 164001, monster_id = 28020102, pos = { x = 1512.480, y = 205.595, z = 1104.389 }, rot = { x = 0.000, y = 275.641, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 5 },
	{ config_id = 164002, monster_id = 28020102, pos = { x = 1504.514, y = 203.570, z = 1089.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 5 },
	{ config_id = 164003, monster_id = 28020102, pos = { x = 1499.216, y = 211.096, z = 1120.685 }, rot = { x = 0.000, y = 142.849, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 5 },
	{ config_id = 164004, monster_id = 28030101, pos = { x = 1493.487, y = 213.789, z = 1103.444 }, rot = { x = 0.000, y = 45.223, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 5 }
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
		monsters = { 164001, 164002, 164003, 164004 },
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