/// shader_border_set()

function shader_border_set()
{
	render_set_uniform_vec2("uTexSize", render_width, render_height)
	var col = c_yellow
	if (border_mode = e_render_mode.SELECT)
		col = render_select_outline_color
	render_set_uniform_color("uColor", col, 1)
}
