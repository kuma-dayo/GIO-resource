--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 172001, gadget_id = 70210107, pos = { x = 1148.606, y = 268.148, z = 1210.199 }, rot = { x = 348.468, y = 227.643, z = 178.885 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 172002, gadget_id = 70210107, pos = { x = 1205.100, y = 258.321, z = 1225.689 }, rot = { x = 3.015, y = 326.971, z = 168.809 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 },
	{ config_id = 172003, gadget_id = 70210107, pos = { x = 1228.559, y = 275.997, z = 1415.196 }, rot = { x = 33.448, y = 28.553, z = 182.183 }, level = 21, drop_tag = "一次性搜刮点峭壁璃月", isOneoff = true, persistent = true, autopick = true, area_id = 6 }
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
		monsters = { },
		gadgets = { 172001, 172002, 172003 },
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