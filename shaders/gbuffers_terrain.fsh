#version 450 compatibility
#define gbuffers_basic
#define fsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

/* DRAWBUFFERS:0 */

layout (location = 0) out vec4 albedo;
layout (location = 2) out vec3 normalTangentSpace;

uniform sampler2D texture;
uniform sampler2D normals;

in vec2 texcoord;
in vec4 color;

in mat3 tbnMatrix;

vec3 getNormalMapping(vec2 coord)
{
    return texture2D3(normals, coord);
}

void main() {
    albedo = texture2D(texture, texcoord) * color;

    vec3 bump = getNormalMapping(texcoord);

    normalTangentSpace = normalize(tbnMatrix * bump);

}