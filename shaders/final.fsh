/*
Get some hot motion blur along with some dank tonemapping
https://github.com/iryoku/smaa
*/

#version 450 compatibility
#define final
#define fsh
#define ShaderStage 7
#include "/lib/Syntax.glsl"

uniform sampler2D colortex0;

in vec2 texcoord;

out vec3 finalColor;

void main() {
    finalColor = texture(colortex0, texcoord).rgb;
}