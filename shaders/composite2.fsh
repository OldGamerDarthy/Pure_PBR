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
uniform sampler2D colortex2;

in vec2 texcoord;

layout (location = 0) out vec4 albedo;
layout (location = 2) out vec4 previousAlbedo;

void main() {
    vec4 albedoCurrent = texture(colortex0, texcoord);
    vec4 albedoPrev = texture(colortex2, texcoord);

    albedo = (albedoCurrent + albedoPrev) * 0.5;
    previousAlbedo = albedoCurrent;
}