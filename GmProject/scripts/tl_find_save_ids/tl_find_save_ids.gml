/// tl_find_save_ids()

function tl_find_save_ids()
{
	// Only resolve string save_ids — never wipe already-bound instances to null
	if (is_string(temp))
		temp = save_id_find(temp)
	if (is_string(parent))
		parent = save_id_find(parent)
	if (is_string(part_of))
		part_of = save_id_find(part_of)
	if (is_string(glint_tex))
		glint_tex = save_id_find(glint_tex)
}
