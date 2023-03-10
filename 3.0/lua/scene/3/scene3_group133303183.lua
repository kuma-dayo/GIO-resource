-- 基础信息
local base_info = {
	group_id = 133303183
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 183002, monster_id = 25210301, pos = { x = -1212.484, y = 227.235, z = 3766.364 }, rot = { x = 0.000, y = 134.802, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, area_id = 23 },
	{ config_id = 183003, monster_id = 25210202, pos = { x = -1216.834, y = 227.214, z = 3768.507 }, rot = { x = 0.000, y = 171.696, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 183004, gadget_id = 70210101, pos = { x = -1211.942, y = 227.981, z = 3765.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 183005, gadget_id = 70210101, pos = { x = -1211.377, y = 228.538, z = 3778.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 183006, gadget_id = 70210101, pos = { x = -1255.850, y = 231.016, z = 3799.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 183007, gadget_id = 70210101, pos = { x = -1244.721, y = 226.167, z = 3810.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 23 }
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
		{ config_id = 183001, monster_id = 25210201, pos = { x = -1228.198, y = 221.228, z = 3781.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9006, area_id = 23 }
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
		monsters = { 183002, 183003 },
		gadgets = { 183004, 183005, 183006, 183007 },
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