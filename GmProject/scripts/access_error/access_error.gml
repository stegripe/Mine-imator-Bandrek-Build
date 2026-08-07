/// access_error()

function access_error()
{
	play_audio_from_files(audio_directory + "error.wav")
	show_message(
		"There was an error with the Mine-imator Bandrek Build startup.\n"+
		"Make sure you have administrative rights (Right click->Run as administrator) or try re-installing the program in a different location."
	)
}
