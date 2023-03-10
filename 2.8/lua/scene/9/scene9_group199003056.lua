-- 基础信息
local base_info = {
	group_id = 199003056
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 56001, monster_id = 21020201, pos = { x = -755.708, y = 120.081, z = -25.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", area_id = 403 },
	{ config_id = 56002, monster_id = 21010901, pos = { x = -754.037, y = 120.000, z = -28.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 403 },
	{ config_id = 56003, monster_id = 21030101, pos = { x = -752.549, y = 120.000, z = -32.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", area_id = 403 },
	{ config_id = 56004, monster_id = 20011101, pos = { x = -722.740, y = 120.000, z = 52.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 403 },
	{ config_id = 56005, monster_id = 20011101, pos = { x = -723.363, y = 120.000, z = 46.097 }, rot = { x = 0.000, y = 101.868, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 403 },
	{ config_id = 56006, monster_id = 20011101, pos = { x = -724.716, y = 120.000, z = 49.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 403 },
	{ config_id = 56007, monster_id = 21010301, pos = { x = -670.820, y = 120.000, z = -52.716 }, rot = { x = 0.000, y = 123.902, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 403 },
	{ config_id = 56008, monster_id = 21010501, pos = { x = -671.665, y = 120.222, z = -50.658 }, rot = { x = 0.000, y = 115.219, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 403 },
	{ config_id = 56009, monster_id = 20010201, pos = { x = -696.146, y = 122.405, z = -76.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", pose_id = 201, area_id = 403 },
	{ config_id = 56010, monster_id = 20010201, pos = { x = -694.793, y = 123.187, z = -69.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", pose_id = 201, area_id = 403 },
	{ config_id = 56011, monster_id = 20010201, pos = { x = -698.702, y = 123.183, z = -71.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", pose_id = 201, area_id = 403 }
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
		monsters = { 56001, 56002, 56003, 56004, 56005, 56006, 56007, 56008, 56009, 56010, 56011 },
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