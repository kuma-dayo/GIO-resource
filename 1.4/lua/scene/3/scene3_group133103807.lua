--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 807001, monster_id = 28020102, pos = { x = 955.704, y = 260.254, z = 1588.425 }, rot = { x = 0.000, y = 260.945, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807002, monster_id = 28020102, pos = { x = 808.248, y = 326.423, z = 1525.113 }, rot = { x = 0.000, y = 54.374, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807003, monster_id = 28020102, pos = { x = 640.115, y = 242.043, z = 1562.637 }, rot = { x = 0.000, y = 46.789, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807004, monster_id = 28020102, pos = { x = 616.874, y = 236.856, z = 1761.904 }, rot = { x = 0.000, y = 9.607, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807005, monster_id = 28020102, pos = { x = 1088.037, y = 280.076, z = 1328.648 }, rot = { x = 0.000, y = 137.881, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807006, monster_id = 28020102, pos = { x = 797.563, y = 268.680, z = 1347.902 }, rot = { x = 0.000, y = 89.866, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807007, monster_id = 28020102, pos = { x = 767.876, y = 321.660, z = 1807.760 }, rot = { x = 0.000, y = 29.415, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807009, monster_id = 28020102, pos = { x = 531.219, y = 349.353, z = 1339.067 }, rot = { x = 0.000, y = 284.986, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807010, monster_id = 28020102, pos = { x = 498.744, y = 331.220, z = 1872.096 }, rot = { x = 0.000, y = 49.335, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807011, monster_id = 28020102, pos = { x = 965.179, y = 336.110, z = 1422.750 }, rot = { x = 0.000, y = 175.098, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807012, monster_id = 28020102, pos = { x = 1066.166, y = 268.787, z = 1717.831 }, rot = { x = 0.000, y = 102.921, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807013, monster_id = 28020102, pos = { x = 494.805, y = 298.699, z = 1619.830 }, rot = { x = 0.000, y = 180.260, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807014, monster_id = 28020102, pos = { x = 651.149, y = 369.823, z = 1915.743 }, rot = { x = 0.000, y = 291.411, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807015, monster_id = 28020102, pos = { x = 1090.037, y = 349.728, z = 1515.590 }, rot = { x = 0.000, y = 29.738, z = 0.000 }, level = 24, drop_tag = "走兽", area_id = 6 }
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
		monsters = { 807001, 807002, 807003, 807004, 807005, 807006, 807007, 807009, 807010, 807011, 807012, 807013, 807014, 807015 },
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