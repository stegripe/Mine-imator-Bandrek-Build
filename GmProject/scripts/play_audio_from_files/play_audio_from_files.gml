/// play_audio_from_files(file_directory, volume)
/// @arg file_directory
/// @arg volume

function play_audio_from_files(file_directory_l, volume = 0.8)
{
	if (is_cpp()) {
		/// CppOnly audio_play_sound_from_file(file_directory_l, false, volume, 0);
		return 1
	}
	
	// headers offset
    var buffertemp = buffer_load(file_directory_l);
			
	var sound_buffer = buffer_create(buffer_get_size(buffertemp), buffer_fixed, 2)
	buffer_copy(buffertemp, 0, buffer_get_size(buffertemp), sound_buffer, 0)
	buffer_delete(buffertemp)
			
	var sound_index = audio_create_buffer_sound(sound_buffer, buffer_s16, sample_rate, 0, buffer_get_size(sound_buffer), audio_stereo)		
	buffer_seek(sound_buffer, 0, 0)
	
	if (sound_index <= 0)
		log_error("audio", "Audio file error or missing while loading", file_directory_l)
	
	audio_play_sound(sound_index, 0, false)
	audio_sound_gain(sound_index, volume, 0)
}