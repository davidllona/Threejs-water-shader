uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

uniform vec3 uFoamColor;
uniform float uFoamThreshold;
uniform float uFoamStrength;

uniform float uTime;
uniform vec3 uHighlightColor;
uniform float uHighlightStrength;

varying float vElevation;

void main()
{
    float mixStrength = (vElevation + uColorOffset) * uColorMultiplier;
    mixStrength = clamp(mixStrength, 0.0, 1.0);

    vec3 baseColor = mix(uDepthColor, uSurfaceColor, mixStrength);

    float foam = smoothstep(uFoamThreshold, 1.0, mixStrength);

    float highlight = sin(mixStrength * 18.0 + uTime * 2.0) * 0.5 + 0.5;
    highlight *= smoothstep(0.6, 1.0, mixStrength);
    highlight *= uHighlightStrength;

    vec3 color = baseColor;
    color = mix(color, uFoamColor, foam * uFoamStrength);
    color += uHighlightColor * highlight;

    gl_FragColor = vec4(color, 1.0);
    #include <colorspace_fragment>
}