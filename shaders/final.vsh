#version 450 core
#define final
#define vsh
#define ShaderStage 7
#include "/lib/Syntax.glsl"

layout(location = 0) in vec3 position_in;

out vec2 texcoord;

void main() {
    gl_Position	= vec4(position_in * 2.0 - 1.0, 1);
    texcoord = gl_Position.xy * 0.5 + 0.5;
}