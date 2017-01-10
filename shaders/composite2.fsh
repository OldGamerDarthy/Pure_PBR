#version 450 compatibility
#define composite2
#define fsh
#define ShaderStage 2
#include "/lib/Syntax.glsl"

/*
    sky - frostbite from spheremap
    clouds - frostbite
    raytracing - https://casual-effects.blogspot.com/2014/08/screen-space-ray-tracing.html
    brdf - gotanda F - frostbite correlated ggx smith V - ggx D
*/

uniform sampler2D colortex0;

in vec2 texcoord;

layout (location = 0) out vec4 albedo;

void main() {
    albedo = texture(colortex0, texcoord);
}