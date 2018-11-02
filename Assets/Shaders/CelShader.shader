// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:108,x:33704,y:33285,varname:node_108,prsc:2|custl-6125-OUT,voffset-7254-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:5380,x:31987,y:33644,varname:node_5380,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5170,x:32176,y:33644,varname:node_5170,prsc:2|A-5380-OUT,B-7019-OUT;n:type:ShaderForge.SFN_LightColor,id:8643,x:32675,y:33775,varname:node_8643,prsc:2;n:type:ShaderForge.SFN_LightPosition,id:9061,x:31995,y:33085,varname:node_9061,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:2381,x:32222,y:33188,varname:node_2381,prsc:2;n:type:ShaderForge.SFN_LightVector,id:3848,x:31829,y:33797,varname:node_3848,prsc:2;n:type:ShaderForge.SFN_Dot,id:7019,x:31987,y:33787,varname:node_7019,prsc:2,dt:1|A-4912-OUT,B-3848-OUT;n:type:ShaderForge.SFN_NormalVector,id:4912,x:31829,y:33644,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:6011,x:33156,y:33554,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_6011,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c4e75592a3b3529459f7efde8758e147,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6125,x:33388,y:33454,varname:node_6125,prsc:2|A-4746-OUT,B-6011-RGB;n:type:ShaderForge.SFN_Add,id:4746,x:32883,y:33512,varname:node_4746,prsc:2|A-1265-RGB,B-9230-OUT;n:type:ShaderForge.SFN_AmbientLight,id:1265,x:32675,y:33512,varname:node_1265,prsc:2;n:type:ShaderForge.SFN_Posterize,id:4605,x:32348,y:33643,varname:node_4605,prsc:2|IN-5170-OUT,STPS-4115-OUT;n:type:ShaderForge.SFN_Vector1,id:4115,x:32176,y:33765,varname:node_4115,prsc:2,v1:5;n:type:ShaderForge.SFN_Multiply,id:9230,x:32675,y:33643,varname:node_9230,prsc:2|A-7792-OUT,B-8643-RGB;n:type:ShaderForge.SFN_NormalVector,id:3109,x:33328,y:33643,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:7254,x:33502,y:33643,varname:node_7254,prsc:2|A-3109-OUT,B-6293-OUT;n:type:ShaderForge.SFN_Slider,id:6293,x:33154,y:33861,ptovrint:False,ptlb:Inflation,ptin:_Inflation,varname:node_6293,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.008547009,max:1;n:type:ShaderForge.SFN_HalfVector,id:1037,x:31828,y:34073,varname:node_1037,prsc:2;n:type:ShaderForge.SFN_Dot,id:7681,x:31828,y:33919,varname:node_7681,prsc:2,dt:1|A-4912-OUT,B-1037-OUT;n:type:ShaderForge.SFN_Power,id:7890,x:31986,y:33929,varname:node_7890,prsc:2|VAL-7681-OUT,EXP-7477-OUT;n:type:ShaderForge.SFN_Vector1,id:7477,x:31986,y:34073,varname:node_7477,prsc:2,v1:20;n:type:ShaderForge.SFN_Add,id:7792,x:32504,y:33643,varname:node_7792,prsc:2|A-4605-OUT,B-381-OUT;n:type:ShaderForge.SFN_Posterize,id:1663,x:32348,y:33802,varname:node_1663,prsc:2|IN-7890-OUT,STPS-9395-OUT;n:type:ShaderForge.SFN_Vector1,id:9395,x:32176,y:33836,varname:node_9395,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:381,x:32504,y:33802,varname:node_381,prsc:2|A-1663-OUT,B-9805-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9805,x:32348,y:33950,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_9805,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;proporder:6011-6293-9805;pass:END;sub:END;*/

Shader "Custom/CelShader" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Inflation ("Inflation", Range(0, 1)) = 0.008547009
        _Gloss ("Gloss", Float ) = 2
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Inflation;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_Inflation);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation,i, i.posWorld.xyz);
                float node_4115 = 5.0;
                float node_9395 = 3.0;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 finalColor = ((UNITY_LIGHTMODEL_AMBIENT.rgb+((floor((attenuation*max(0,dot(i.normalDir,lightDirection))) * node_4115) / (node_4115 - 1)+(floor(pow(max(0,dot(i.normalDir,halfDirection)),20.0) * node_9395) / (node_9395 - 1)*_Gloss))*_LightColor0.rgb))*_Texture_var.rgb);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Inflation;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_Inflation);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation,i, i.posWorld.xyz);
                float node_4115 = 5.0;
                float node_9395 = 3.0;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 finalColor = ((UNITY_LIGHTMODEL_AMBIENT.rgb+((floor((attenuation*max(0,dot(i.normalDir,lightDirection))) * node_4115) / (node_4115 - 1)+(floor(pow(max(0,dot(i.normalDir,halfDirection)),20.0) * node_9395) / (node_9395 - 1)*_Gloss))*_LightColor0.rgb))*_Texture_var.rgb);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Inflation;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_Inflation);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
