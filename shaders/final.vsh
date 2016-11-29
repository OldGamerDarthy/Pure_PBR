#version 450 core
#define final
#define vsh
#define ShaderStage 7
#include "/lib/Syntax.glsl"

out vec2 texcoord;

void main() {
    texcoord = vec2(0.0);

    gl_Position	= ftransform();
}