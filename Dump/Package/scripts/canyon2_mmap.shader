maps/ut_canyon2
{
	nopicmip
	{
		map maps/ut_canyon_tex.TGA
		blendfunc blend
		alphagen vertex
	}
	{
		map maps/ut_canyon_mask.tga
		blendfunc gl_zero gl_one
		alphafunc GT0
		depthwrite
	}
	{
		depthfunc equal
		alphagen vertex
		map textures/null_des2/water1.tga
		blendfunc blend
		tcmod scale 8 8
		tcMod scroll -1.8 -0.01
		tcMod turb 0 0.5 0 0.05
	}
	{
		depthfunc equal
		map maps/water005.tga
		rgbgen wave sin 0.8 0.2 0 0.2
		alphagen vertex
		blendfunc gl_src_alpha gl_one
		tcmod scale 12 12
		tcMod scroll -0.8 -0.02
		tcmod turb 0 0.1 0 0.2
	}
}