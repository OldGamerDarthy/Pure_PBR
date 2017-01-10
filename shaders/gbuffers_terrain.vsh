#version 450 compatibility
#define gbuffers_textured
#define vsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

out vec2 texcoord;
out vec3 normals;
out vec4 color;

void main() {
    texcoord = gl_MultiTexCoord0.st;
    color = gl_Color;

    normals = normalize(gl_NormalMatrix * gl_Normal);

	gl_Position	= ftransform();
}