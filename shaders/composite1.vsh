#version 450 compatibility
#define composite1
#define vsh
#define ShaderStage 1
#include "/lib/Syntax.glsl"

out vec2 texcoord;

void main() {
    gl_Position	= ftransform();
    texcoord = gl_MultiTexCoord0.st;
}