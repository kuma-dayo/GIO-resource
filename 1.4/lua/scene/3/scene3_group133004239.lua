--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 611, monster_id = 28030101, pos = { x = 2623.091, y = 281.114, z = -365.819 }, rot = { x = 0.000, y = 150.226, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 612, monster_id = 28030401, pos = { x = 2601.730, y = 272.506, z = -323.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 613, monster_id = 28030401, pos = { x = 2602.156, y = 272.541, z = -324.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 614, monster_id = 28030401, pos = { x = 2603.515, y = 272.459, z = -323.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 615, monster_id = 28030401, pos = { x = 2595.321, y = 272.515, z = -324.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 616, monster_id = 28030401, pos = { x = 2606.278, y = 274.858, z = -355.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 617, monster_id = 28030401, pos = { x = 2604.699, y = 275.469, z = -358.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 618, monster_id = 28030401, pos = { x = 2607.134, y = 275.655, z = -357.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 },
	{ config_id = 619, monster_id = 28030401, pos = { x = 2604.798, y = 275.102, z = -357.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", area_id = 4 }
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
		monsters = { 611, 612, 613, 614, 615, 616, 617, 618, 619 },
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