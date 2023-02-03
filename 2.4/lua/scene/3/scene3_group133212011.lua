--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 28020801, pos = { x = -3571.657, y = 238.166, z = -2111.088 }, rot = { x = 0.000, y = 21.007, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 11002, gadget_id = 70360277, pos = { x = -3570.844, y = 237.345, z = -2103.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 101, area_id = 13 },
	{ config_id = 11003, gadget_id = 70360273, pos = { x = -3571.531, y = 237.618, z = -2094.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 13 },
	{ config_id = 11004, gadget_id = 70360273, pos = { x = -3569.181, y = 236.656, z = -2086.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 13 },
	{ config_id = 11005, gadget_id = 70360274, pos = { x = -3552.871, y = 231.288, z = -2092.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 13 },
	{ config_id = 11006, gadget_id = 70310001, pos = { x = -3552.871, y = 231.288, z = -2092.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
	{ config_id = 11007, gadget_id = 70210101, pos = { x = -3552.140, y = 231.289, z = -2091.077 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 13 },
	{ config_id = 11008, gadget_id = 70360276, pos = { x = -3552.871, y = 231.288, z = -2092.986 }, rot = { x = 353.290, y = 359.601, z = 358.957 }, level = 30, area_id = 13 },
	{ config_id = 11011, gadget_id = 70360273, pos = { x = -3567.355, y = 234.975, z = -2072.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 13 },
	{ config_id = 11012, gadget_id = 70360273, pos = { x = -3552.728, y = 231.273, z = -2092.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 4, area_id = 13 },
	{ config_id = 11013, gadget_id = 70310001, pos = { x = -3550.655, y = 230.921, z = -2091.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 11014, gadget_id = 70310001, pos = { x = -3553.462, y = 231.686, z = -2089.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1011009, name = "ANY_MONSTER_DIE_11009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11009", action = "action_EVENT_ANY_MONSTER_DIE_11009" },
	{ config_id = 1011010, name = "GADGET_STATE_CHANGE_11010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11010", action = "action_EVENT_GADGET_STATE_CHANGE_11010" },
	{ config_id = 1011015, name = "GADGET_STATE_CHANGE_11015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11015", action = "action_EVENT_GADGET_STATE_CHANGE_11015" }
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
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 11002, state = 0 },
			{ config_id = 11003, state = 0 },
			{ config_id = 11004, state = 0 },
			{ config_id = 11005, state = 0 },
			{ config_id = 11011, state = 0 },
			{ config_id = 11012, state = 0 }
		},
		monsters = {
			{ config_id = 11001 }
		},
		regions = { },
		triggers = { "ANY_MONSTER_DIE_11009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 11006, state = 0 },
			{ config_id = 11008, state = 0 },
			{ config_id = 11013, state = 0 },
			{ config_id = 11014, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_11010" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 11007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_11015" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11009(context, evt)
	--判断死亡怪物的死亡类型是否为1，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 1 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11009(context, evt)
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133212011, 2, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133212011, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11010(context, evt)
	if 11006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11010(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 6016, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 11008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 11006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133212011, 3)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133212011, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11015(context, evt)
	if 11007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11015(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133212011, 4)
	
	return 0
end