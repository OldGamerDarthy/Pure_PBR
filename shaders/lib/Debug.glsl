//#define DEBUG
#define DEBUG_VIEW 1

vec3 Debug;

#if ShaderStage < 0
	varying vec3 vDebug;
#endif

#if ShaderStage == -2
	#define Debug vDebug
#endif

void show(bool x) { Debug = vec3(float(x)); }
void show(float x) { Debug = vec3(x); }
void show(vec2 x) { Debug = vec3(x, 0.0); }
void show(vec3 x) { Debug = x; }
void show(vec4 x) { Debug = x.rgb; }

#define show(x) show(x);

#if ShaderStage == -2
	#undef Debug
#endif


void exit() {

#if ShaderStage < 0
	Debug = max(Debug, vDebug); // This will malfunction if you have a show() in both the vertex and fragment
#endif

	#ifdef DEBUG
		#if ShaderStage == DEBUG_VIEW
			if(isnan(length(Debug))) {
				Debug = vec3(1.0, 0.0, 1.0);
			}

			#if ShaderStage == -1
				albedo = vec4(Debug, 1.0);
			#elif ShaderStage == 7
				finalColor = vec4(Debug, 1.0);
			#else
				albedo = vec4(Debug, 1.0);
			#endif

		#elif ShaderStage > DEBUG_VIEW
			#if   ShaderStage == 0
				discard;

			#elif ShaderStage == 1
				#if DEBUG_VIEW == 0
					albedo = vec4(texture2D(colortex0, texcoord).rgb, 1.0);
				#else
					albedo = vec4(texture2D(colortex0, texcoord).rgb, 1.0);
				#endif

			#elif ShaderStage == 2
				albedo = vec4(texture2D(colortex0, texcoord).rgb, 1.0);

			#elif ShaderStage == 3
				albedo = vec4(texture2D(colortex0, texcoord).rgb, 1.0);

			#elif ShaderStage == 4
				albedo = vec4(texture2D(colortex0, texcoord).rgb, 1.0);

			#elif ShaderStage == 7
				finalColor = vec4(texture2D(colortex0, texcoord).rgb, 1.0);

			#endif
		#endif
	#endif
}

#if (defined DEBUG && (defined composite0 || defined composite1))
	#define discard exit(); return
#endif
