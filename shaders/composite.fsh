#version 450 compatibility
#define final
#define fsh
#define ShaderStage 7
#include "/lib/Syntax.glsl"

/*
const int colortex0Format = RGBA16F;
*/

/*
// TODO: GI(RSM-flux) https://pdfs.semanticscholar.org/1b29/71e7024a3e1c4108718e59b5ba4327c44b93.pdf, 
         AO(GTAO) http://iryoku.com/downloads/Practical-Realtime-Strategies-for-Accurate-Indirect-Occlusion.pdf
*/

//allahuakbar

uniform sampler2D colortex0;

in vec2 texcoord;

layout (location = 0) out vec3 albedo;

void main() {
    albedo = texture(colortex0, texcoord).rgb;
}