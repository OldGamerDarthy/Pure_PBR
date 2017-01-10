#version 450 compatibility
#define gbuffers_basic
#define fsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

/* DRAWBUFFERS:0 */

layout (location = 0) out vec4 albedo;
layout (location = ur number fgt) out vec3 normal;

uniform sampler2D texture;

in vec2 texcoord;
in vec3 normals;
in vec4 color;

void main() {
    albedo = texture2D(texture, texcoord) * color;
}