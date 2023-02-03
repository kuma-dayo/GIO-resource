--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 242001, monster_id = 25030201, pos = { x = 485.163, y = 206.997, z = 144.711 }, rot = { x = 359.135, y = 206.965, z = 358.993 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9005, area_id = 9 },
	{ config_id = 242002, monster_id = 25010401, pos = { x = 485.853, y = 207.987, z = 150.396 }, rot = { x = 8.264, y = 214.986, z = 5.624 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 9 },
	{ config_id = 242003, monster_id = 25010601, pos = { x = 492.491, y = 206.988, z = 147.433 }, rot = { x = 2.133, y = 220.189, z = 357.911 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 9 }
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
		monsters = { 242001, 242002, 242003 },
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