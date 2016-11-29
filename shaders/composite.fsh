#version 450 compatibility
#define final
#define fsh
#define ShaderStage 7
#include "/lib/Syntax.glsl"

/*
const int colortex0Format = RGBA16F;
*/

uniform sampler2D colortex0;

in vec2 texcoord;

layout (location = 0) out vec3 albedo;

void main() {
    albedo = texture(colortex0, texcoord).rgb;
}