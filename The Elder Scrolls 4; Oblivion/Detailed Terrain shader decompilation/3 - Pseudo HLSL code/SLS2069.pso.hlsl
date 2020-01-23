    const int4 const_0 = {1, 0, 0, 0};
    float2 texcoord_0 : TEXCOORD0;
    float2 texcoord_1 : TEXCOORD1;
    float3 texcoord_2 : TEXCOORD2_centroid;
    sampler2D texture_0;
    sampler2D texture_1;
    r0.xyzw = tex2D(texture_0, IN.texcoord_0.xy);
    r1.xyzw = tex2D(texture_1, IN.texcoord_1.xy);
    r0.xyz = r0.xyz * r1.xyz;
    r0.xyz = r0.xyz * IN.texcoord_2.xyz;
    r0.w = 1;
    OUT.color_0.rgba = r0.xyzw;

// approximately 6 instruction slots used (2 texture, 4 arithmetic)