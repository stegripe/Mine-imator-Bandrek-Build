/// open_url(url)
/// @arg url

function open_url(url)
{
	log_info("ui", "Open URL", url)
	external_call(lib_open_url, url)
}

function popup_open_url(url)
{
	open_url(url)
}