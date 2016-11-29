#version 450 core
#define gbuffers_basic
#define fsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

/* DRAWBUFFERS:0 */

layout (location = 0) out vec3 albedo;

in vec3 color;

void main() {
    albedo = color.rgb;
}