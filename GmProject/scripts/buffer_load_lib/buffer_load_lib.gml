/// buffer_load_lib(filename)
/// @arg filename

function buffer_load_lib(fn)
{
	if (file_copy_temp)
	{
		file_delete_lib(temp_file)
		file_copy_lib(fn, temp_file)
		var buf = buffer_load(temp_file)
		file_delete_lib(temp_file)
		return buf
	}
	else
		return buffer_load(fn)
}
