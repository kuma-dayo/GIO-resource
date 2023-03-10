--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 356, monster_id = 20010401, pos = { x = 2512.450, y = 316.444, z = -351.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 4 },
	{ config_id = 357, monster_id = 20010301, pos = { x = 2513.611, y = 317.007, z = -349.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 358, monster_id = 20010301, pos = { x = 2515.037, y = 316.637, z = -353.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 359, monster_id = 21010701, pos = { x = 2425.340, y = 305.456, z = -292.267 }, rot = { x = 12.642, y = 260.751, z = 9.734 }, level = 18, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 360, monster_id = 21010101, pos = { x = 2423.583, y = 304.964, z = -294.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "丘丘人", area_id = 3 },
	{ config_id = 367, monster_id = 20010101, pos = { x = 2397.444, y = 302.447, z = -287.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 201, area_id = 3 },
	{ config_id = 368, monster_id = 20010101, pos = { x = 2389.691, y = 301.602, z = -283.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", pose_id = 201, area_id = 3 }
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
	rand_suite = true
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
		monsters = { 356, 357, 358, 359, 360, 367, 368 },
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