#define  PI 3.14159265358979323846264338327950288419 // Pi
#define RAD 0.0174533 // Degrees per radian

#ifdef FREEZE_TIME
	#define TIME 0.0
#else
	#define TIME frameTimeCounter
#endif

#define sum4(v) ((v.x + v.y) + (v.z + v.w))

#define diagonal2(mat) vec2((mat)[0].x, (mat)[1].y)
#define diagonal3(mat) vec3((mat)[0].x, (mat)[1].y, mat[2].z)

#define transMAD(mat, v) (     mat3(mat) * (v) + (mat)[3].xyz)
#define  projMAD(mat, v) (diagonal3(mat) * (v) + (mat)[3].xyz)

#define textureRaw(samplr, coord) texelFetch(samplr, ivec2((coord) * vec2(viewWidth, viewHeight)), 0)
#define ScreenTex(samplr) texelFetch(samplr, ivec2(gl_FragCoord.st), 0)

#if !defined gbuffers_shadow
	#define cameraPosition() (vec3(mod(cameraPosition.x + 12345.0, 987654.0), cameraPosition.y, mod(cameraPosition.z + 12345.0, 987654.0)) + gbufferModelViewInverse[3].xyz)
#else
	#define cameraPosition() vec3(mod(cameraPosition.x + 12345.0, 987654.0), cameraPosition.y, mod(cameraPosition.z + 12345.0, 987654.0))
#endif

#include "/lib/Utility/Clamping.glsl"

float pow2(float f) {
	return dot(f, f);
}

vec3 pow2(vec3 f) {
	return f*f;
}

vec2 rotate(in vec2 vector, float radians) {
	return vector *= mat2(
		cos(radians), -sin(radians),
		sin(radians),  cos(radians));
}
