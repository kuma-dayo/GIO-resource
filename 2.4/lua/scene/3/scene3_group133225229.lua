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
	{ config_id = 229001, gadget_id = 70220099, pos = { x = -6140.769, y = 204.879, z = -2519.618 }, rot = { x = 348.167, y = 35.312, z = 343.482 }, level = 33, area_id = 18 },
	{ config_id = 229002, gadget_id = 70220099, pos = { x = -6195.628, y = 221.393, z = -2487.570 }, rot = { x = 339.226, y = 343.623, z = 340.599 }, level = 33, area_id = 18 },
	{ config_id = 229003, gadget_id = 70220099, pos = { x = -6198.547, y = 224.334, z = -2545.075 }, rot = { x = 0.562, y = 17.365, z = 315.144 }, level = 33, area_id = 18 },
	{ config_id = 229004, gadget_id = 70220097, pos = { x = -6199.154, y = 237.607, z = -2614.333 }, rot = { x = 9.863, y = 243.455, z = 2.206 }, level = 33, area_id = 18 },
	{ config_id = 229005, gadget_id = 70220097, pos = { x = -6256.412, y = 249.890, z = -2583.848 }, rot = { x = 18.312, y = 282.188, z = 350.430 }, level = 33, area_id = 18 },
	{ config_id = 229006, gadget_id = 70220099, pos = { x = -6281.971, y = 247.985, z = -2524.839 }, rot = { x = 353.990, y = 343.436, z = 350.468 }, level = 33, area_id = 18 },
	{ config_id = 229007, gadget_id = 70220099, pos = { x = -6223.998, y = 227.690, z = -2523.946 }, rot = { x = 344.090, y = 310.363, z = 297.247 }, level = 33, area_id = 18 },
	{ config_id = 229008, gadget_id = 70220096, pos = { x = -6226.358, y = 228.371, z = -2522.683 }, rot = { x = 9.476, y = 195.042, z = 350.415 }, level = 33, area_id = 18 },
	{ config_id = 229009, gadget_id = 70220096, pos = { x = -6255.421, y = 237.754, z = -2494.342 }, rot = { x = 331.847, y = 53.329, z = 10.710 }, level = 33, area_id = 18 },
	{ config_id = 229010, gadget_id = 70220097, pos = { x = -6255.777, y = 237.619, z = -2493.078 }, rot = { x = 334.700, y = 349.528, z = 357.097 }, level = 33, area_id = 18 }
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
		gadgets = { 229001, 229002, 229003, 229004, 229005, 229006, 229007, 229008, 229009, 229010 },
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