-- 基础信息
local base_info = {
	group_id = 133217353
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 353001, monster_id = 20060101, pos = { x = -4242.558, y = 223.904, z = -4219.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 353002, monster_id = 20060101, pos = { x = -4239.400, y = 222.314, z = -4227.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 353003, monster_id = 20060101, pos = { x = -4245.120, y = 223.313, z = -4225.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 },
	{ config_id = 353007, monster_id = 20060101, pos = { x = -4236.388, y = 222.407, z = -4222.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "飘浮灵", pose_id = 101, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 353004, gadget_id = 70211102, pos = { x = -4241.989, y = 223.378, z = -4223.273 }, rot = { x = 0.000, y = 351.068, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
	{ config_id = 353005, shape = RegionShape.SPHERE, radius = 10, pos = { x = -4241.310, y = 223.231, z = -4223.700 }, area_id = 14 }
}

-- 触发器
triggers = {
	{ config_id = 1353005, name = "ENTER_REGION_353005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_353005", action = "action_EVENT_ENTER_REGION_353005" },
	{ config_id = 1353006, name = "ANY_MONSTER_DIE_353006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_353006", action = "action_EVENT_ANY_MONSTER_DIE_353006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 353004 },
		regions = { 353005 },
		triggers = { "ENTER_REGION_353005", "ANY_MONSTER_DIE_353006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 353001, 353002, 353003, 353007 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_353006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_353005(context, evt)
	if evt.param1 ~= 353005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_353005(context, evt)
	-- 将configid为 353004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 353004, GadgetState.ChestLocked) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133217353, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_353006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_353006(context, evt)
	-- 将configid为 353004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 353004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end