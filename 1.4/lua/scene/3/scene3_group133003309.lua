--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1015, monster_id = 20011501, pos = { x = 2946.848, y = 222.577, z = -1741.032 }, rot = { x = 0.000, y = 253.573, z = 0.000 }, level = 24, drop_tag = "大史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 1017, monster_id = 20011401, pos = { x = 2953.283, y = 223.028, z = -1757.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 1018, monster_id = 20011401, pos = { x = 2950.016, y = 222.585, z = -1749.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 1 },
	{ config_id = 1019, monster_id = 20011401, pos = { x = 2949.578, y = 220.196, z = -1724.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3260, gadget_id = 70211101, pos = { x = 2943.761, y = 221.977, z = -1748.855 }, rot = { x = 0.000, y = 92.845, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 3261, gadget_id = 70220020, pos = { x = 2955.654, y = 223.597, z = -1766.502 }, rot = { x = 0.000, y = 154.011, z = 0.000 }, level = 31, area_id = 1 },
	{ config_id = 3262, gadget_id = 70220020, pos = { x = 2954.564, y = 223.395, z = -1765.361 }, rot = { x = 0.000, y = 163.633, z = 0.000 }, level = 31, area_id = 1 }
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
		monsters = { 1015, 1017, 1018, 1019 },
		gadgets = { 3260, 3261, 3262 },
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