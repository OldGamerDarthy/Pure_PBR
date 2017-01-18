#version 450 compatibility
#define composite2
#define vsh
#define ShaderStage 2
#include "/lib/Syntax.glsl"

uniform mat4 gbufferModelViewInverse;
uniform mat4 gbufferPreviousModelView;
uniform mat4 gbufferPreviousProjection;

out vec2 texcoord;
out mat4 cur_pos_to_last_frame_pos;

void main() {
    gl_Position	= ftransform();
    texcoord = gl_MultiTexCoord0.st;

    cur_pos_to_last_frame_pos = gbufferModelViewInverse * gbufferPreviousModelView * gbufferPreviousProjection;
}