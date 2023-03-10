-- 基础信息
local base_info = {
	group_id = 133220726
}

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
}

-- 区域
regions = {
	{ config_id = 726001, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2474.396, y = 220.016, z = -4111.226 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1726001, name = "ENTER_REGION_726001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_726001", action = "action_EVENT_ENTER_REGION_726001" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 726001 },
		triggers = { "ENTER_REGION_726001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_726001(context, evt)
	if evt.param1 ~= 726001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_726001(context, evt)
	-- 触发镜头注目，注目位置为坐标（-2471.71，223.09，-4110.81），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2471.71, y=223.09, z=-4110.81}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 322072699 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072699) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end