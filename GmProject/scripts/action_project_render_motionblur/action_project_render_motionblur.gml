/// action_project_render_motionblur(enable)
/// @arg enable

function action_project_render_motionblur(enable)
{
	if (!history_undo && !history_redo)
		history_set_var(action_project_render_motionblur, project_render_motionblur, enable, 1)
	
	project_render_motionblur = enable
	render_samples = -1
}
