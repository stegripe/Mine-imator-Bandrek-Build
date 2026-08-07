/// action_project_render_engine(value)
/// @arg value

function action_project_render_engine(val)
{
	if (!history_undo && !history_redo)
		history_set_var(action_project_render_engine, project_render_engine, val, 1)
	
	project_render_engine = val
	render_samples = -1
}
