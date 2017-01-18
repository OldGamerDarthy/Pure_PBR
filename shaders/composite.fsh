#version 450 compatibility
#define composite0
#define fsh
#define ShaderStage 0
#include "/lib/Syntax.glsl"

/*
// TODO: GI(RSM-flux) https://pdfs.semanticscholar.org/1b29/71e7024a3e1c4108718e59b5ba4327c44b93.pdf, 
         AO(GTAO) http://iryoku.com/downloads/Practical-Realtime-Strategies-for-Accurate-Indirect-Occlusion.pdf
*/

/* DRAWBUFFERS:0 */

uniform sampler2D colortex0;

in vec2 texcoord;

layout (location = 0) out vec4 albedo;

#include "/lib/Debug.glsl"

void main() {
    albedo = texture(colortex0, texcoord);

    exit();
}