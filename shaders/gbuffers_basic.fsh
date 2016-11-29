#version 450 core
#define gbuffers_basic
#define fsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"

/* DRAWBUFFERS:0 */

in vec3 color;

void main() {
    gl_FragData[0] = vec4(color.rgb, 1.0);
}