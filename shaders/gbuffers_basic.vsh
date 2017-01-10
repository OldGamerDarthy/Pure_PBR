#version 450 compatibility
#define gbuffers_textured
#define vsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

out vec4 color;

void main() {
    color = gl_Color;

	gl_Position	= ftransform();
}