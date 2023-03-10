--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 165001, monster_id = 28030102, pos = { x = -5081.698, y = 211.898, z = -4176.009 }, rot = { x = 0.000, y = 298.625, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 165002, monster_id = 28030102, pos = { x = -5082.943, y = 212.021, z = -4178.590 }, rot = { x = 0.000, y = 285.168, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 165003, monster_id = 28050212, pos = { x = -5083.021, y = 205.419, z = -4262.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "魔法生物", isOneoff = true, pose_id = 9, area_id = 14, guest_ban_drop = 63 },
	{ config_id = 165023, monster_id = 28030202, pos = { x = -5044.420, y = 236.896, z = -4184.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 14 },
	{ config_id = 165024, monster_id = 28030202, pos = { x = -5003.441, y = 235.517, z = -4318.379 }, rot = { x = 0.000, y = 45.720, z = 0.000 }, level = 30, drop_tag = "鸟类", climate_area_id = 10, area_id = 14 },
	{ config_id = 165026, monster_id = 28020602, pos = { x = -5021.645, y = 203.647, z = -4184.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 14 },
	{ config_id = 165029, monster_id = 28020603, pos = { x = -5021.776, y = 203.377, z = -4183.758 }, rot = { x = 0.000, y = 183.455, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 14 }
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
		{ config_id = 165013, monster_id = 28020301, pos = { x = -5196.673, y = 200.000, z = -4302.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 14 },
		{ config_id = 165014, monster_id = 28020301, pos = { x = -5183.717, y = 200.000, z = -4298.973 }, rot = { x = 0.000, y = 193.022, z = 0.000 }, level = 30, drop_tag = "走兽", area_id = 14 }
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
		monsters = { 165001, 165002, 165003, 165023, 165024, 165026, 165029 },
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