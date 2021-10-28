//Base slterra sky (ydnar)
textures/null_des2/sky
{
	qer_editorimage textures/null_des2/sky_arc_masked.tga

	q3map_lightimage textures/common/Orange_250_160_100.tga
	
	q3map_lightsubdivide 768
	q3map_backsplash 0 0

	//q3map_sunEXT 1 1 1 75 180 50 2 16
	q3map_sunEXT 1 0.9 0.95 90 180 50 2 16
	//q3map_skylight 125 5
	q3map_skylight 150 5
	
	
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	
	skyparms textures/null_des2/env/sky 512 -
	
	nopicmip
	nomipmaps
	
	{
		map textures/null_des2/sky_clouds.tga
		tcMod scale 3 3
		tcMod scroll 0.005 -0.0125
		rgbGen identityLighting
	}
	{
		clampmap textures/null_des2/sky_arc_masked.tga
		//clampmap textures/null_des2/sky_sub.tga
		//clampmap textures/null_des2/sky_q3t7m.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		tcMod scale 0.956 0.956	// note for RTCW, this line should be commented out if the sky is knackered
		tcMod transform 1 0 0 1 -1 -1
		rgbGen identityLighting
	}
}

textures/null_des2/cave_light
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	q3map_lightRGB 0.8 1 0.95
	q3map_surfacelight 600
}


textures/null_des2/caulk_struct
{
	qer_editorimage textures/null_des2/_caulk_struct.tga
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nomarks
}

textures/null_des2/caulk_wall_temp
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nomarks
}

textures/null_des2/caulk_ground_temp
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nomarks
}

textures/null_des2/caulk_cave_wall_temp
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nomarks
}

textures/null_des2/caulk_cave_floor_temp
{
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nomarks
}

textures/null_des2/waterfall1
{
	qer_editorimage textures/null_des2/waterfall.tga
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	sort 10
	{
		map textures/null_des2/waterfall_alpha2_b.tga
		//map textures/null_des2/ground017_04.jpg
		alphagen vertex
		blendfunc blend
		tcMod scroll 0.05 -2.5
		//tcmod turb 0 0.2 0 0.2
		//rgbgen const ( 0.8 0.99 1 )
		rgbgen identitylighting
	}	
	{
		map textures/null_des2/waterfall_alpha.tga
		alphagen vertex
		blendfunc blend
		tcMod scroll 0.15 -3.0
		tcmod turb 0 0.1 0 0.3
		//rgbgen const ( 0.3 0.95 1 )
	}
	//{
	//	map $lightmap
	//	alphagen vertex
	//	blendfunc gl_src_alpha gl_zero
	//}
}

textures/null_des2/waterfall2
{
	qer_editorimage textures/null_des2/waterfall.tga
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	{
		map textures/null_des2/waterfall_alpha2.tga
		alphagen vertex
		blendfunc blend
		tcmod scale 0 0.5
		tcMod scroll 0.05 -2.0
		//rgbgen const ( 0.3 0.95 1 )
	}	
	//{
	//	map $lightmap
	//	alphagen vertex
	//	blendfunc gl_one gl_one_minus_src_alpha
	//}
}

textures/null_des2/water_splash_shader
{
	qer_editorimage textures/null_des2/water_splash.tga
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	sort 9
	deformvertexes move -20 0 0 sawtooth 0 1 0 0.5
	{
		map textures/null_des2/water_splash.tga
		alphagen wave inversesawtooth 0 1 0 0.5
		blendfunc blend
		//tcmod scroll 0 -0.5
	}
}

textures/null_des2/water_splash_shader_2
{
	qer_editorimage textures/null_des2/water_splash.tga
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	sort 9
	deformvertexes move -20 0 0 sawtooth 0 1 0.5 0.5
	{
		map textures/null_des2/water_splash.tga
		alphagen wave inversesawtooth 0 1 0.5 0.5
		blendfunc blend
		//tcmod scroll 0 -0.5
	}
}

textures/null_des2/ground_base
{
	qer_editorimage textures/null_des2/ground018_alpha.tga
	q3map_lightimage textures/null_des2/ground018.tga
	q3map_nonplanar
	q3map_shadeAngle 99
	q3map_lightmapSampleOffset 8
	{
		map textures/null_des2/ground018_alpha.tga
		//rgbgen const ( 0.5 0.5 0.5 )
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/rock_wall
{
	qer_editorimage textures/null_des2/grey_stone_l.tga
	q3map_lightimage textures/null_des2/grey_stone.tga
	q3map_nonplanar
	q3map_shadeAngle 120
	q3map_lightmapSampleOffset 8
	{
		map textures/null_des2/grey_stone_l.tga
		//rgbgen const ( 0.5 0.5 0.5 )
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/ground_rock_blend
{
	qer_editorimage textures/null_des2/g_r_b.tga
	q3map_lightimage textures/null_des2/ground018.tga
	q3map_nonplanar
	q3map_shadeAngle 120
	{
		map textures/null_des2/grey_stone_l.tga
		//rgbgen const ( 0.5 0.5 0.5 )
	}
	{
		map textures/null_des2/ground018_alpha.tga	
		//rgbgen const ( 0.5 0.5 0.5 )
		alphagen oneminusvertex
		alphafunc GE128
		//blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/test_terra_3_w
{
	qer_editorimage textures/null_des2/grey_stone_l.tga
	q3map_lightimage textures/null_des2/grey_stone.tga
	q3map_nonplanar
	q3map_shadeAngle 120
	{
		map textures/null_des2/grey_stone_l.tga
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/ground_veg
{
	qer_editorimage textures/null_des2/ground018_veg5.tga
	q3map_lightimage textures/null_des2/ground018.tga
	q3map_nonplanar
	q3map_shadeAngle 120
	{
		map textures/null_des2/ground018_alpha.tga
		//rgbgen const ( 0.5 0.5 0.5 )
	}
	{
		map textures/null_des2/ground018_veg5.tga
		alphagen oneminusvertex //Visiabel when v.alpha = 0
		blendfunc blend
		//alphafunc GE128
		//rgbgen const ( 0.5 0.5 0.5 )
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/cave_floor
{
	qer_editorimage textures/null_des2/kat_stone3_2.tga
	q3map_lightimage textures/null_des2/kat_stone3_2.tga
	q3map_nonplanar
	q3map_shadeangle 120
	q3map_bouncescale 2
	q3map_lightmapSampleOffset 8
	q3map_splotchFix
	{
		//map textures/null_des2/rock023.tga
		map textures/null_des2/kat_stone3_2.tga
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/cave_wall_model
{
	qer_editorimage textures/null_des2/kat_stone4_d2_mod1.tga
	q3map_lightimage textures/null_des2/kat_stone4_d2_mod1.tga
	q3map_nonplanar
	q3map_shadeangle 120
	q3map_bouncescale 2
	q3map_lightmapSampleOffset 8
	{
		map textures/null_des2/kat_stone4_d2_mod1.tga
		rgbgen vertex
	}
}

textures/null_des2/cave_wall
{
	qer_editorimage textures/null_des2/kat_stone4_d2_mod1.tga
	q3map_lightimage textures/null_des2/kat_stone4_d2_mod1.tga
	q3map_nonplanar
	q3map_shadeangle 120
	q3map_bouncescale 2
	q3map_lightmapSampleOffset 8
	q3map_splotchFix
	{
		//map textures/null_des2/rock029.tga
		map textures/null_des2/kat_stone4_d2_mod1.tga
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/cave_blend
{
	qer_editorimage textures/null_des2/qer_kat_stone4_d2_mod1.tga
	q3map_lightimage textures/null_des2/kat_stone4_d2_mod1.tga
	q3map_nonplanar
	q3map_shadeangle 120
	q3map_bouncescale 2
	q3map_lightmapSampleOffset 8
	q3map_splotchFix
	//wall
	{
		map textures/null_des2/kat_stone4_d2_mod1.tga
	}
	//floor
	{
		map textures/null_des2/kat_stone3_2.tga
		alphagen vertex
		alphafunc ge128
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

////////////////
// PLANTS     //
////////////////

textures/null_des2/grass1
{
	qer_editorimage textures/null_des2/grass1_alpha.tga
	q3map_forcemeta
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm alphashadow
	cull none
	nomipmaps
	nopicmip
	{
		map textures/null_des2/grass1_alpha.tga
		alphafunc GE128
		depthwrite
	}	
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/null_des2/plant1
{
	qer_editorimage textures/null_des2/planet1_alpha.tga
	q3map_forcemeta
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm alphashadow
	cull none
	nomipmaps
	nopicmip
	{
		map textures/null_des2/planet1_alpha.tga
		alphafunc GE128
		depthwrite
	}	
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}
textures/null_des2/plant2
{
	qer_editorimage textures/null_des2/planet2_alpha.tga
	q3map_forcemeta
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm alphashadow
	cull none
	nomipmaps
	nopicmip
	{
		map textures/null_des2/planet2_alpha.tga
		alphafunc GE128
		depthwrite
	}	
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}
textures/null_des2/plant3
{
	qer_editorimage textures/null_des2/planet3_alpha.tga
	q3map_forcemeta
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm alphashadow
	cull none
	nomipmaps
	nopicmip
	{
		map textures/null_des2/planet3_alpha.tga
		alphafunc GE128
		depthwrite
	}	
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}
textures/null_des2/plant4
{
	qer_editorimage textures/null_des2/planet4_alpha.tga
	q3map_forcemeta
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm alphashadow
	cull none
	nomipmaps	
	nopicmip
	{
		map textures/null_des2/planet4_alpha.tga
		alphafunc GE128
		depthwrite
	}	
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/null_des2/grass_blade1
{
	cull none
	surfaceparm nolightmap
	surfaceparm nonsolid
	q3map_forcemeta
	surfaceparm nomarks
	{
		map textures/null_des2/blade1.tga
		//rgbgen identityLighting
	}
	//{
	//	map $whiteimage
	//	rgbgen vertex	
	//	blendfunc filter
	//}
}

textures/null_des2/grass_blade2
{
	cull none
	surfaceparm nolightmap
	surfaceparm nonsolid
	q3map_forcemeta
	surfaceparm nomarks
	{
		map textures/null_des2/blade2.tga
		//rgbgen vertex
	}
	//{
	//	map $whiteimage
	//	rgbgen vertex
	//	blendfunc filter
	//}
}

textures/null_des2/water1_fx_scroll
{
	qer_editorimage textures/null_des2/water1.tga
	deformVertexes wave 512 sin 0 40 0 0.1
	q3map_tessSize 512
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	//surfaceparm water
	cull none
	{
		map textures/null_des2/water1.tga
		blendfunc blend
		tcMod scroll 1.1 0.01
		tcMod turb 0 0.5 0 0.05
	}
	{
		map textures/null_des2/water005_e1.tga
		rgbgen wave sin 0.3 0.2 0 0.2
		blendfunc gl_one gl_one
		tcmod scale 0.5 0.5
		tcMod scroll 0.45 0.02
		tcmod turb 0 0.1 0 0.2
		//tcGen environment
	}
	{
		map textures/null_des2/water005_e1.tga
		rgbgen wave sin 0.3 0.275 0.5 0.2
		blendfunc gl_one gl_one
		tcmod scale 0.4 0.6
		tcMod scroll 0.4 0.01
		tcmod turb 0 0.075 0.5 0.075
		//tcGen environment
	}
	{
		map $lightmap
		//blendfunc gl_dst_color gl_src_color
		blendfunc filter
	}	
}

textures/null_des2/water1_fx_scroll_nodef
{
	qer_editorimage textures/null_des2/water1.tga
	//deformVertexes wave 512 sin 0 40 0 0.1
	//q3map_tessSize 512
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	//surfaceparm water
	cull none
	{
		alphagen vertex
		map textures/null_des2/water1.tga
		blendfunc blend
		tcMod scroll 1.4 0.01
		tcMod turb 0 0.5 0 0.05
	}
	{
		map textures/null_des2/water005_e1.tga
		rgbgen wave sin 0.3 0.2 0 0.2
		blendfunc gl_src_alpha gl_one
		tcmod scale 0.5 0.5
		tcMod scroll 0.6 0.02
		tcmod turb 0 0.1 0 0.2
		//tcGen environment
		alphagen vertex
	}
	{
		map textures/null_des2/water005_e1.tga
		rgbgen wave sin 0.3 0.275 0.5 0.2
		blendfunc gl_src_alpha gl_one
		tcmod scale 0.4 0.6
		tcMod scroll 0.55 0.01
		tcmod turb 0 0.075 0.5 0.075
		//tcGen environment
		alphagen vertex
	}
}

textures/null_des2/water1_fx_foam1
{
	qer_editorimage textures/null_des2/water_foam1.tga
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	{
		clampmap textures/null_des2/water_foam1.tga
		blendfunc blend
		alphagen wave inversesawtooth -0.5 1.5 0 1
		tcmod scroll 0.1 1
		//tcmod turb 0 0.3 0 0.3
	}
	{
		map $lightmap
		//blendfunc gl_dst_color gl_src_color
		blendfunc filter
	}
}

textures/null_des2/water2_fx_foam1
{
	qer_editorimage textures/null_des2/foam1.tga
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	sort 11
	{
		map textures/null_des2/foam1.tga
		//rgbgen const ( 1 0.7 0.2 )
		tcmod scroll 0.1 0.4
		tcmod turb 0.3 0.1 0 0.03
		blendfunc blend
		alphagen vertex
		alphafunc gt0
	}
	{
		alphafunc ge128
		alphagen vertex
		map textures/null_des2/foam1.tga
		//rgbgen const ( 1 0.4 0.2 )
		tcmod scroll 0.1 0.4
		tcmod turb 0.3 0.1 0 0.03
		blendfunc blend
	}
	//{
	//	map $lightmap
	//	blendfunc filter
	//}
}

textures/null_des2/water_caulk
{
	qer_trans 0.4
	surfaceparm nodraw
	surfaceparm water
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
}

textures/null_des2/bridge_support_ropes
{
	qer_editorimage textures/null_des2/bridge_rope_alpha.tga
	cull none	
	//deformvertexes autosprite2
	{
		map textures/null_des2/bridge_rope_alpha.tga
		rgbgen vertex
		alphafunc GE128
	}
}

textures/null_des2/bridge_wood_planks
{
	qer_editorimage textures/null_des2/bridge_wood_planks.tga
	q3map_forcemeta
	q3map_lightmapsampleoffset 4
	cull none
	{
		map textures/null_des2/bridge_wood_planks.tga
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/water_rock_foam
{
	qer_editorimage textures/null_des2/waterfall_alpha.tga
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	sort 11
	{
		map textures/null_des2/waterfall_alpha2.tga
		blendfunc blend
		alphagen vertex
		tcmod scroll 0.01 1.6		
		rgbgen vertex
	}
}

textures/null_des2/flame1
{
	qer_editorimage textures/sfx/flame1.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull none
	q3map_surfacelight 2500
	

	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/sfx/flameball.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/null_des2/cave_light
{
	qer_editorimage textures/null_des2/cave_light.tga
	qer_trans 0.5	

	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
	
	q3map_lightimage textures/null_des2/cave_light_image.tga
	q3map_surfacelight 1500

}

textures/null_des2/ut_wall5_alpha
{
	qer_editorimage textures/null_des2/ut_wall5.tga
	
	surfaceparm trans
	surfaceparm alphashadow
	surfaceparm lightfilter

	q3map_forcemeta
	q3map_shadeangle 110
	q3map_lightimage textures/null_des2/ut_wall5_light_filter.tga

	cull none

	{
		map textures/null_des2/ut_wall5.tga
		alphafunc ge128
		depthwrite
		//rgbgen const ( 0.5 0.5 0.5 ) 
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}	
}

textures/null_des2/clip_no_wall_kick
{
	qer_trans 0.40
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm playerclip
	surfaceparm slick
}

models/mapobjects/null_des2_lt1_tv/front_anim
{
	{
		tcmod scale 1 1
		animmap 3 textures/null_des2_tv/sub1.tga  textures/null_des2_tv/sub2.tga textures/null_des2_tv/sub3.tga textures/null_des2_tv/sub4.tga textures/null_des2_tv/sub5.tga textures/null_des2_tv/sub6.tga
	}
	{
		map textures/null_des2/tvfront.tga
		blendfunc blend
		rgbgen vertex
	}
	{
		map textures/null_des2/tv_fx.tga
		blendfunc add
	}
}

textures/null_des2/house_glass_fx
{
	qer_editorimage textures/null_des2/house_glass.tga
	q3map_lightimage textures/null_des2/house_glass.tga
	surfaceparm trans
	{
		rgbgen vertex
		tcGen environment
		map textures/null_des2/house_glass.tga
		blendfunc add
	}
}

textures/null_des2/bomb_marker
{
	qer_editorimage textures/null_des2/qer_minimap_bomb.tga
	surfaceparm trans
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm nomarks
	polygonOffset
	{
		clampmap textures/null_des2/minimap_bomb.tga
		tcMod stretch sin 0.9 0.3 0 0.65
		tcMod rotate 30
		alphagen wave sin 1.2 1 0 0.65
		blendfunc blend
	}
}

textures/null_des2/vulture_shader
{
	qer_editorimage textures/null_des2/vulture.tga
	
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nolightmap
	surfaceparm nomarks
	cull none
	
	{
		map textures/null_des2/vulture.tga
		alphafunc ge128
	}
}

textures/null_des2/tv_redo
{
	qer_editorimage textures/null_des2/tvfront.tga
	{
		map textures/null_des2/tvfront.tga
		rgbgen vertex
	}
	{
		map textures/null_des2/tv_fx_2.tga
		alphafunc ge128
		depthwrite
	}
	{
		depthfunc equal
		tcmod scale 1 1
		blendfunc add
		animmap 0.75 textures/null_des2_tv/sub1.tga  textures/null_des2_tv/sub2.tga textures/null_des2_tv/sub3.tga textures/null_des2_tv/sub4.tga textures/null_des2_tv/sub5.tga textures/null_des2_tv/sub6.tga textures/null_des2_tv/sub7.tga  textures/null_des2_tv/sub8.tga
	}
}


textures/null_des2/lvlshot2
{
	qer_editorimage textures/null_des2/null_des_mask_l_1.tga 
	{
		map levelshots/null_des2/_lvl1.tga 
	}
	{
		map levelshots/null_des2/null_des_mask_l_1.tga 
		alphafunc ge128
	}
	// Percentage Bar
	{
		map levelshots/null_des2/p_bar.tga
		alphagen wave sawtooth 0 1 0 0.3
		alphafunc ge128
	}
}

textures/null_des2/lvlshot
{
	qer_editorimage textures/null_des2/null_des_mask_l_1.tga 
	{
		map levelshots/algiers/texture.tga 
	}
	{
		map levelshots/algiers/tris_a.tga
		alphagen wave inversesawtooth 0.5 0.5 0 0.1
		alphafunc ge128
		blendfunc filter
	}
	{
		map levelshots/null_des2/null_des_mask_l_1.tga 
		alphafunc ge128
	}
	{
		map levelshots/null_des2/p_bar.tga
		alphagen wave sawtooth 0.5 0.5 0 0.1
		alphafunc ge128
		blendfunc blend
	}
}

textures/null_des2/cave_ground_blend
{
	qer-editorimage textures/null_des2/cave_ground_blend.tga
	q3map_lightimage textures/null_des2/ground018.tga
	q3map_nonplanar
	q3map_shadeAngle 120
	q3map_lightmapSampleOffset 8
	{
		map textures/null_des2/ground018.tga
	}
	{
		map textures/null_des2/kat_stone4_d2_mod1.tga
		alphagen oneminusvertex
		alphafunc ge128
		//blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}
textures/null_des2/wagon_wheels
{
	qer_editorimage textures/null_des2/wood056.tga
	cull none
	{
		map textures/null_des2/wood056.tga
		rgbgen vertex
	}
}

textures/null_des2/wagon_sheet
{
	qer_editorimage textures/null_des2/wagon_canvas_alpha.tga
	q3map_forcemeta
	//q3map_nonplanar
	//q3map_shadeangle 170
	polygonoffset
	cull none
	{
		//depthwrite
		map textures/null_des2/wagon_canvas_alpha.tga
		alphafunc ge128
		//rgbgen const ( 0.921 0.722 0.52 )
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
	}
}

textures/null_des2/grass_shader
{
	qer_editorimage textures/null_des2/grass.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	{
		map textures/null_des2/grass.tga
		rgbgen vertex
		alphafunc ge128
	}	
}

textures/null_des2/water_flow_splash
{
	qer_editorimage textures/null_des2/foam1.tga
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	sort 11
	{
		map textures/null_des2/foam1.tga
		tcmod scroll 0.2 0.8
		tcmod turb 0.3 0.1 0 0.03
		blendfunc blend
		alphagen vertex
	}
	{
		alphafunc ge128
		alphagen vertex
		map textures/null_des2/foam1.tga
		tcmod scroll 0.4 0.8
		tcmod turb 0.3 0.1 0 0.03
		blendfunc blend
	}
}

textures/null_des2/glass1
{
	qer_editorimage textures/null_des2/window.tga
	cull none
	surfaceparm alphashadow
	surfaceparm trans
	surfaceparm lightfilter
        {
		map textures/effects/tinfx.tga
                tcgen environment
		blendFunc gl_dst_color gl_one
		rgbGen identity
	}
	{
		map textures/null_des2/window.tga
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_des2/alpha_75
{
	qer_trans 0.5
	q3map_alphaMod volume
	q3map_alphaMod set 0.75
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

textures/null_des2/alpha_50
{
	qer_trans 0.5
	q3map_alphaMod volume
	q3map_alphaMod set 0.5
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

textures/null_des2/alpha_25
{
	qer_trans 0.5
	q3map_alphaMod volume
	q3map_alphaMod set 0.25
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

textures/null_des2/alpha_0
{
	qer_trans 0.5
	q3map_alphaMod volume
	q3map_alphaMod set 0
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

levelshots/ut_canyon2
{
	nopicmip
	{
		map levelshots/null_des2/null_des_mask_l_0.tga 
		
	}
	{
		animmap 4 levelshots/null_des2/_lvl1.tga levelshots/null_des2/_lvl2.tga levelshots/null_des2/_lvl3.tga levelshots/null_des2/_lvl4.tga levelshots/null_des2/_lvl5.tga levelshots/null_des2/_lvl6.tga
		alphafunc ge128
	}
}
