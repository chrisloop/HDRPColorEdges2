#ifndef SHADERGRAPH_PREVIEW
    #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/NormalBuffer.hlsl"
#endif

void GetAO_float(float2 uv, out float AO)
{
    AO = 1;

    #ifndef SHADERGRAPH_PREVIEW

       AO = SAMPLE_TEXTURE2D_X(_AmbientOcclusionTexture, s_linear_clamp_sampler, uv * _RTHandleScale.xy).r;

    #endif
}