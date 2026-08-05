/// Logging (Bandrek)
/// Levelled, tagged lines → Data/log.txt. Format: [LEVEL] [tag] message: v1, v2
/// Levels (e_log_level): TRACE < INFO < WARN < ERROR. Emit if level >= log_min_level.

/// log_startup()
/// Init filter. Call early from app_startup.

function log_startup()
{
	globalvar log_min_level;
	log_min_level = e_log_level.INFO
	log_info("app", "log ready", "min=" + log_level_name(log_min_level))
	return 1
}

/// log_level_name(level)

function log_level_name(level)
{
	if (level = e_log_level.TRACE)
		return "TRACE"
	if (level = e_log_level.INFO)
		return "INFO"
	if (level = e_log_level.WARN)
		return "WARN"
	if (level = e_log_level.ERROR)
		return "ERROR"
	return "INFO"
}

/// log_emit(level, tag, text)
/// Filter + write. `text` is the full message (values already appended).

function log_emit(level, tag, text)
{
	globalvar log_min_level;
	
	if (level < log_min_level)
		return 0
	
	if (!is_string(tag) || tag = "")
		tag = "app"
	
	log_message("[" + log_level_name(level) + "] [" + tag + "] " + string(text))
	return 1
}

/// log_at(level, tag, message, [values...])

function log_at()
{
	if (argument_count < 3)
		return 0
	
	var text = string(argument[2])
	if (argument_count > 3)
	{
		text += ": "
		for (var a = 3; a < argument_count; a++)
		{
			text += string(argument[a])
			if (a < argument_count - 1)
				text += ", "
		}
	}
	return log_emit(argument[0], argument[1], text)
}

/// log_trace(tag, message, [values...])

function log_trace()
{
	if (argument_count < 2)
		return 0
	var text = string(argument[1])
	if (argument_count > 2)
	{
		text += ": "
		for (var a = 2; a < argument_count; a++)
		{
			text += string(argument[a])
			if (a < argument_count - 1)
				text += ", "
		}
	}
	return log_emit(e_log_level.TRACE, argument[0], text)
}

/// log_info(tag, message, [values...])

function log_info()
{
	if (argument_count < 2)
		return 0
	var text = string(argument[1])
	if (argument_count > 2)
	{
		text += ": "
		for (var a = 2; a < argument_count; a++)
		{
			text += string(argument[a])
			if (a < argument_count - 1)
				text += ", "
		}
	}
	return log_emit(e_log_level.INFO, argument[0], text)
}

/// log_warn(tag, message, [values...])

function log_warn()
{
	if (argument_count < 2)
		return 0
	var text = string(argument[1])
	if (argument_count > 2)
	{
		text += ": "
		for (var a = 2; a < argument_count; a++)
		{
			text += string(argument[a])
			if (a < argument_count - 1)
				text += ", "
		}
	}
	return log_emit(e_log_level.WARN, argument[0], text)
}

/// log_error(tag, message, [values...])

function log_error()
{
	if (argument_count < 2)
		return 0
	var text = string(argument[1])
	if (argument_count > 2)
	{
		text += ": "
		for (var a = 2; a < argument_count; a++)
		{
			text += string(argument[a])
			if (a < argument_count - 1)
				text += ", "
		}
	}
	return log_emit(e_log_level.ERROR, argument[0], text)
}

/// log(string, [ values...])
/// Legacy → INFO [app]. Prefer log_info / log_warn / log_error / log_trace.

function log()
{
	if (argument_count < 1)
		return 0
	
	var text = string(argument[0])
	if (argument_count > 1)
	{
		text += ": "
		for (var a = 1; a < argument_count; a++)
		{
			text += string(argument[a])
			if (a < argument_count - 1)
				text += ", "
		}
	}
	return log_emit(e_log_level.INFO, "app", text)
}
