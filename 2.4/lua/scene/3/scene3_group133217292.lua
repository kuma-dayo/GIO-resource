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
	{ config_id = 292001, gadget_id = 70210101, pos = { x = -4426.563, y = 215.767, z = -3975.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石稻妻", area_id = 14 },
	{ config_id = 292002, gadget_id = 70210101, pos = { x = -4426.189, y = 215.714, z = -3979.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石稻妻", area_id = 14 },
	{ config_id = 292003, gadget_id = 70210101, pos = { x = -4436.077, y = 215.770, z = -3983.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 14 },
	{ config_id = 292004, gadget_id = 70210101, pos = { x = -4435.146, y = 215.863, z = -3985.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 14 },
	{ config_id = 292005, gadget_id = 70210101, pos = { x = -4435.564, y = 215.255, z = -3965.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 14 },
	{ config_id = 292006, gadget_id = 70210101, pos = { x = -4438.716, y = 215.252, z = -3970.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 14 },
	{ config_id = 292007, gadget_id = 70210101, pos = { x = -4442.745, y = 223.453, z = -3979.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", area_id = 14 },
	{ config_id = 292008, gadget_id = 70210101, pos = { x = -4453.430, y = 222.771, z = -3977.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 14 },
	{ config_id = 292009, gadget_id = 70210101, pos = { x = -4444.162, y = 222.339, z = -3985.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 14 },
	{ config_id = 292010, gadget_id = 70210101, pos = { x = -4402.434, y = 209.822, z = -3967.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 14 },
	{ config_id = 292011, gadget_id = 70210101, pos = { x = -4397.945, y = 206.556, z = -3975.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 14 },
	{ config_id = 292012, gadget_id = 70210101, pos = { x = -4383.136, y = 204.151, z = -3968.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 14 },
	{ config_id = 292013, gadget_id = 70210101, pos = { x = -4378.989, y = 204.089, z = -3977.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 14 }
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
		gadgets = { 292001, 292002, 292003, 292004, 292005, 292006, 292007, 292008, 292009, 292010, 292011, 292012, 292013 },
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