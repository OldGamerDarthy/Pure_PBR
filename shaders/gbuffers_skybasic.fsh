#version 450 compatibility
#define gbuffers_basic
#define fsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

/* DRAWBUFFERS:0 */

layout (location = 0) out vec3 albedo;

uniform sampler2D texture;

in vec2 texcoord;
in vec3 color;

void main() {
    albedo = texture2D3(texture, texcoord) * color;
}