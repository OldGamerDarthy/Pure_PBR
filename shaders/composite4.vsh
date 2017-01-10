#version 450 compatibility
#define final
#define vsh
#define ShaderStage 7
#include "/lib/Syntax.glsl"

out vec2 texcoord;

void main() {
    gl_Position	= ftransform();
    texcoord = gl_MultiTexCoord0.st;
}