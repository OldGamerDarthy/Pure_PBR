#version 450 compatibility
#define gbuffers_textured
#define vsh
#define ShaderStage -1
#include "/lib/Syntax.glsl"
#include "/lib/Utility.glsl"

uniform mat4 gbufferModelViewInverse;
uniform mat4 gbufferModelView;

attribute vec4 at_tangent;

out vec2 texcoord;
out vec4 color;

out mat3 tbnMatrix;

mat3 CalculateTBN(vec3 worldPosition) {
    vec3 tangent  = normalize(at_tangent.xyz);
    vec3 binormal = normalize(-cross(gl_Normal, at_tangent.xyz));
    
    tangent  = mat3(gbufferModelViewInverse) * gl_NormalMatrix * normalize( tangent);
    binormal = mat3(gbufferModelViewInverse) * gl_NormalMatrix * normalize(binormal);
    
    vec3 normal = normalize(cross(-tangent, binormal));
    
    return mat3(gbufferModelView) * mat3(tangent, binormal, normal);
}

vec3 GetWorldSpacePosition() {
    vec3 position = transMAD(gl_ModelViewMatrix, gl_Vertex.xyz);
    
    return mat3(gbufferModelViewInverse) * position;
}

void main() {
    texcoord = gl_MultiTexCoord0.st;
    color = gl_Color;
    
    vec3 worldPosition = GetWorldSpacePosition();
    tbnMatrix = CalculateTBN(worldPosition);

	gl_Position	= ftransform();
}