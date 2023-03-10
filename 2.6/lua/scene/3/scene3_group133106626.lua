-- 基础信息
local base_info = {
	group_id = 133106626
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 626003, monster_id = 28020301, pos = { x = -545.468, y = 173.173, z = 1614.287 }, rot = { x = 0.000, y = 11.411, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 626004, monster_id = 28020301, pos = { x = -550.213, y = 172.305, z = 1609.395 }, rot = { x = 0.000, y = 37.214, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 626011, monster_id = 20010201, pos = { x = -575.060, y = 175.334, z = 1621.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", pose_id = 201, area_id = 19 },
	{ config_id = 626012, monster_id = 28020102, pos = { x = -573.988, y = 175.151, z = 1618.012 }, rot = { x = 0.000, y = 342.702, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 626021, monster_id = 28020302, pos = { x = -537.259, y = 168.242, z = 1650.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 626033, monster_id = 28020603, pos = { x = -530.591, y = 183.678, z = 1743.147 }, rot = { x = 0.000, y = 229.748, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 },
	{ config_id = 626034, monster_id = 28020603, pos = { x = -536.625, y = 185.569, z = 1736.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 19 }
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
		{ config_id = 626020, monster_id = 28020301, pos = { x = -541.346, y = 168.148, z = 1667.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "走兽", disableWander = true, area_id = 19 }
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
		monsters = { 626003, 626004, 626011, 626012, 626021, 626033, 626034 },
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