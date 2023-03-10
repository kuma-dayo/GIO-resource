--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 56001, monster_id = 24020301, pos = { x = -3592.075, y = 200.075, z = -1204.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 17 },
	{ config_id = 56003, monster_id = 24020101, pos = { x = -3647.930, y = 200.386, z = -1113.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 17 },
	{ config_id = 56004, monster_id = 24020401, pos = { x = -3497.679, y = 200.101, z = -1116.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 17 },
	{ config_id = 56005, monster_id = 24020201, pos = { x = -3544.399, y = 200.926, z = -1136.608 }, rot = { x = 0.000, y = 178.037, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 17 },
	{ config_id = 56006, monster_id = 24020201, pos = { x = -3557.312, y = 207.602, z = -1183.701 }, rot = { x = 0.000, y = 288.853, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, area_id = 17 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 56002, monster_id = 24020201, pos = { x = -3546.924, y = 207.947, z = -1153.770 }, rot = { x = 0.000, y = 146.522, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 100, area_id = 17 }
	}
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
		monsters = { 56001, 56003, 56004, 56005, 56006 },
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