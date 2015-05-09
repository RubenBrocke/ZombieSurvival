//http://www.flipcode.com/archives/Perlin_Noise_Class.shtml

// My side note: this is just as bad as defining external DLL functions in C++.
// Not harder, not easier. Just dedication.

var sDll;
sDll = "NoiseHelper.dll";

global.__nsh_init =
external_define( sDll, "Init", dll_cdecl, ty_real, 0 );
global.__nsh_cleanup =
external_define( sDll, "CleanUp", dll_cdecl, ty_real, 0 );

global.__nsh_create_perlin =
 external_define( sDll, "CreatePerlin", dll_cdecl, ty_real, 4, ty_real, ty_real, ty_real, ty_real );
global.__nsh_get_perlin =
 external_define( sDll, "GetPerlin", dll_cdecl, ty_real, 3, ty_real, ty_real, ty_real );
global.__nsh_delete_perlin =
 external_define( sDll, "DeletePerlin", dll_cdecl, ty_real, 1, ty_real );
 
external_call( global.__nsh_init );