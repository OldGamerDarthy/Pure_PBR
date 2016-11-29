#version 450 core
#define final
#define fsh
#define ShaderStage 7
#include "/lib/Syntax.glsl"

uniform sampler2D colortex0;

in vec2 texcoord;

void main() {
    gl_FragColor = texture(colortex0, texcoord);
}