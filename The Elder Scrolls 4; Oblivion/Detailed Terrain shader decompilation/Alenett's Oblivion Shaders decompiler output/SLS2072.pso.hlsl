    const int4 const_0 = {2, -1, 0, 0};
    float2 texcoord_0 : TEXCOORD0;
    float2 texcoord_1 : TEXCOORD1;
    float3 texcoord_2 : TEXCOORD2_centroid;
    float3 texcoord_3 : TEXCOORD3_centroid;
    float4 IN.color_0 : COLOR0;
    float4 IN.color_1 : COLOR1;
    sampler2D texture_0;
    sampler2D texture_1;
    r0.xyzw = tex2D(texture_1, IN.texcoord_1.xy);
    r1.xyzw = tex2D(texture_0, IN.texcoord_0.xy);
    r0.xyz = (2 * r0.xyz) - 1;
    r2.xyz = normalize(r0.xyz);
    r0.xyz = (IN.texcoord_3.xyz * 2) - 1;
    r0.x = saturate(dot(r0.xyz, r2.xyz));
    r0.xyz = r0.x * const_2.xyz;
    r0.xyz = r1.xyz * r0.xyz;
    r0.xyz = r0.xyz * IN.texcoord_2.xyz;
    r1.x = dot(const_3.xyzw, IN.color_0.rgba);
    r1.y = dot(const_4.xyzw, IN.color_1.rgba);
    r1.x = r1.x + r1.y;
    r1.x = (r1.x * 2) + r1.w;
    r0.w = saturate(r1.x - 1);
    OUT.color_0.rgba = r0.xyzw;

// approximately 17 instruction slots used (2 texture, 15 arithmetic)