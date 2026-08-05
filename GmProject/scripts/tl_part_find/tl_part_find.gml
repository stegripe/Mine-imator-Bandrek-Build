/// tl_part_find(name)
/// @arg name

function tl_part_find(name)
{
	if (part_list != null)
		for (var p = 0; p < ds_list_size(part_list); p++)
		{
			var part = part_list[|p]
			if (part = null || is_string(part) || !instance_exists(part))
				continue
			if (part.model_part_name = name)
				return part
		}
	
	return null
}
