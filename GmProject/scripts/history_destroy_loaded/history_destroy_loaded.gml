/// history_destroy_loaded()
/// @desc Destroy the loaded objects.

function history_destroy_loaded()
{
	for (var i = 0; i < loaded_amount; i++)
	{
		var inst = save_id_find(loaded_save_id[i])
		if (inst = null || inst = noone || !instance_exists(inst))
			continue
		
		with (inst)
		{
			if (object_index = obj_timeline)
				tl_remove_clean()
			
			if (object_index = obj_resource && copied)
				file_delete_lib(app.project_folder + "/" + filename)
			instance_destroy()
		}
	}
}
