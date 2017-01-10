#version 450 compatibility
#define gbuffers_basic
#define fsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

/* DRAWBUFFERS:0 */

layout (location = 0) out vec4 albedo;

in vec4 color;

void main() {
    albedo = color;
}