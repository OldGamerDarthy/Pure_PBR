#version 450 compatibility
#define gbuffers_basic
#define vsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

out vec3 color;

void main() {
    color = gl_Color.rgb;

	gl_Position	= ftransform();
}