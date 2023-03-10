--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 501002, monster_id = 21010301, pos = { x = 1160.312, y = 305.769, z = -1398.348 }, rot = { x = 0.000, y = 87.188, z = 0.000 }, level = 10, drop_tag = "丘丘人", pose_id = 9012, area_id = 2 },
	{ config_id = 501003, monster_id = 21010301, pos = { x = 1163.320, y = 305.559, z = -1398.303 }, rot = { x = 0.000, y = 290.924, z = 0.000 }, level = 10, drop_tag = "丘丘人", pose_id = 9012, area_id = 2 },
	{ config_id = 501010, monster_id = 20010401, pos = { x = 1126.934, y = 320.131, z = -1362.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "大史莱姆", area_id = 10 },
	{ config_id = 501011, monster_id = 20010301, pos = { x = 1142.539, y = 317.472, z = -1361.777 }, rot = { x = 0.000, y = 277.220, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 10 },
	{ config_id = 501012, monster_id = 20010301, pos = { x = 1140.338, y = 317.843, z = -1354.156 }, rot = { x = 0.000, y = 83.366, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 10 },
	{ config_id = 501013, monster_id = 20010301, pos = { x = 1141.798, y = 317.597, z = -1360.453 }, rot = { x = 0.000, y = 52.178, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 10 },
	{ config_id = 501016, monster_id = 22010101, pos = { x = 1237.503, y = 311.976, z = -1295.134 }, rot = { x = 0.000, y = 57.430, z = 0.000 }, level = 10, drop_tag = "深渊法师", area_id = 10 },
	{ config_id = 501017, monster_id = 20010201, pos = { x = 1314.914, y = 311.982, z = -1253.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "大史莱姆", pose_id = 201, area_id = 2 },
	{ config_id = 501018, monster_id = 20010201, pos = { x = 1311.073, y = 290.426, z = -1369.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "大史莱姆", pose_id = 201, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 501001, gadget_id = 70211001, pos = { x = 1161.813, y = 306.139, z = -1395.008 }, rot = { x = 5.900, y = 203.856, z = 6.472 }, level = 6, drop_tag = "战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 501004, gadget_id = 70290011, pos = { x = 1125.041, y = 320.445, z = -1360.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 10 },
	{ config_id = 501005, gadget_id = 70500000, pos = { x = 1125.041, y = 320.445, z = -1360.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3009, owner = 501004, area_id = 10 },
	{ config_id = 501006, gadget_id = 70290011, pos = { x = 1126.396, y = 320.205, z = -1359.810 }, rot = { x = 0.000, y = 36.156, z = 0.000 }, level = 10, area_id = 10 },
	{ config_id = 501007, gadget_id = 70500000, pos = { x = 1126.396, y = 320.205, z = -1359.810 }, rot = { x = 0.000, y = 36.156, z = 0.000 }, level = 10, point_type = 3009, owner = 501006, area_id = 10 },
	{ config_id = 501008, gadget_id = 70290011, pos = { x = 1139.669, y = 317.934, z = -1369.395 }, rot = { x = 0.000, y = 294.268, z = 0.000 }, level = 10, area_id = 10 },
	{ config_id = 501009, gadget_id = 70500000, pos = { x = 1139.669, y = 317.934, z = -1369.395 }, rot = { x = 0.000, y = 294.268, z = 0.000 }, level = 10, point_type = 3009, owner = 501008, area_id = 10 },
	{ config_id = 501014, gadget_id = 70290009, pos = { x = 1204.000, y = 299.519, z = -1397.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 501015, gadget_id = 70500000, pos = { x = 1204.000, y = 299.519, z = -1397.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3005, owner = 501014, area_id = 2 }
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
		monsters = { 501002, 501003, 501010, 501011, 501012, 501013, 501016, 501017, 501018 },
		gadgets = { 501001, 501004, 501005, 501006, 501007, 501008, 501009, 501014, 501015 },
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