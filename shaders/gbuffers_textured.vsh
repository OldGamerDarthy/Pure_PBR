#version 450 compatibility
#define gbuffers_textured
#define vsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

out vec2 texcoord;
out vec4 color;

void main() {
    texcoord = gl_MultiTexCoord0.st;
    color = gl_Color;

	gl_Position	= ftransform();
}