// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:1,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:2,stmr:255,stmw:10,stcp:6,stps:2,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4494,x:33706,y:33466,varname:node_4494,prsc:2|custl-6976-OUT,clip-4343-OUT;n:type:ShaderForge.SFN_Tex2d,id:9632,x:32603,y:33771,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_9632,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:94710822362f7b44898a51c513d4de9f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_If,id:7261,x:32804,y:33076,varname:node_7261,prsc:2|A-6079-OUT,B-9896-G,GT-7042-OUT,EQ-1928-OUT,LT-8725-OUT;n:type:ShaderForge.SFN_Code,id:3447,x:31929,y:33305,varname:node_3447,prsc:2,code:cgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMwAoADAALAAgAHYAZQByAHQAUABvAHMALgB5AA0ACgArACAAcwBpAG4AKAB2AGUAcgB0AFAAbwBzAC4AeAAgAC8AIAAxADAAIAArACAAdABpAG0AZQAqADEALgA1ACkAIAAvACAAMQAwACAAKgAgAF8ATQBhAGcAbgBpAHQAdQBkAGUADQAKACsAIABzAGkAbgAoAHYAZQByAHQAUABvAHMALgB4ACAALwAgADUAIAArACAAdABpAG0AZQAqADEALgA1ACAAKwAgAHMAaQBuACgAdABpAG0AZQAgAC8AIAAyACkAKQAgAC8AIAAxADAAIAAqACAAXwBNAGEAZwBuAGkAdAB1AGQAZQANAAoAKwAgAGMAbwBzACgAdgBlAHIAdABQAG8AcwAuAHoAIAAvACAAMQAwACAAKwAgAHQAaQBtAGUAIAAqACAAMgApACAALwAgADEAMAAgACoAIABfAE0AYQBnAG4AaQB0AHUAZABlAA0ACgArACAAcwBpAG4AKAB2AGUAcgB0AFAAbwBzAC4AegAgAC8AIAA1ACAAKwAgAHQAaQBtAGUAKgAxAC4ANQAgACsAIABzAGkAbgAoAHQAaQBtAGUAIAAvACAANAApACkAIAAvACAAMQAwACAAKgAgAF8ATQBhAGcAbgBpAHQAdQBkAGUADQAsACAAMAApADsA,output:2,fname:OceanWave,width:564,height:132,input:0,input:0,input:2,input_1_label:_Magnitude,input_2_label:time,input_3_label:vertPos|A-6766-OUT,B-7257-T,C-1972-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3685,x:31338,y:33088,varname:node_3685,prsc:2;n:type:ShaderForge.SFN_Time,id:7257,x:31698,y:33084,varname:node_7257,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1972,x:31698,y:33222,varname:node_1972,prsc:2|A-3685-XYZ,B-2675-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:2675,x:31364,y:33328,ptovrint:False,ptlb:WaveScale,ptin:_WaveScale,varname:node_2675,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_Vector1,id:7042,x:32147,y:33099,varname:node_7042,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1928,x:32147,y:33147,varname:node_1928,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8725,x:32147,y:33198,varname:node_8725,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6079,x:32147,y:32960,varname:node_6079,prsc:2,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:9896,x:32608,y:33297,varname:node_9896,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-3447-OUT;n:type:ShaderForge.SFN_Multiply,id:6766,x:31666,y:33392,varname:node_6766,prsc:2|A-2675-Y,B-7003-OUT;n:type:ShaderForge.SFN_Vector1,id:7003,x:31473,y:33481,varname:node_7003,prsc:2,v1:-1;n:type:ShaderForge.SFN_Code,id:9279,x:31622,y:33921,varname:node_9279,prsc:2,code:cgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMwAoADAALAAgAHYAZQByAHQAUABvAHMALgB5AA0ACgArACAAcwBpAG4AKAB2AGUAcgB0AFAAbwBzAC4AeAAgAC8AIAAxADAAIAArACAAdABpAG0AZQAqADEALgA1ACkAIAAvACAAMQAwACAAKgAgAF8ATQBhAGcAbgBpAHQAdQBkAGUADQAKACsAIABzAGkAbgAoAHYAZQByAHQAUABvAHMALgB4ACAALwAgADUAIAArACAAdABpAG0AZQAqADEALgA1ACAAKwAgAHMAaQBuACgAdABpAG0AZQAgAC8AIAAyACkAKQAgAC8AIAAxADAAIAAqACAAXwBNAGEAZwBuAGkAdAB1AGQAZQANAAoAKwAgAGMAbwBzACgAdgBlAHIAdABQAG8AcwAuAHoAIAAvACAAMQAwACAAKwAgAHQAaQBtAGUAIAAqACAAMgApACAALwAgADEAMAAgACoAIABfAE0AYQBnAG4AaQB0AHUAZABlAA0ACgArACAAcwBpAG4AKAB2AGUAcgB0AFAAbwBzAC4AegAgAC8AIAA1ACAAKwAgAHQAaQBtAGUAKgAxAC4ANQAgACsAIABzAGkAbgAoAHQAaQBtAGUAIAAvACAANAApACkAIAAvACAAMQAwACAAKgAgAF8ATQBhAGcAbgBpAHQAdQBkAGUADQAsACAAMAApADsA,output:2,fname:OceanWave1,width:564,height:132,input:0,input:0,input:2,input_1_label:_Magnitude,input_2_label:time,input_3_label:vertPos|A-6766-OUT,B-5590-OUT,C-1972-OUT;n:type:ShaderForge.SFN_TexCoord,id:4874,x:32248,y:34172,varname:node_4874,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:5590,x:31234,y:33846,varname:node_5590,prsc:2|A-7257-T,B-6624-OUT;n:type:ShaderForge.SFN_Vector1,id:6624,x:31058,y:33909,varname:node_6624,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_ComponentMask,id:2486,x:32267,y:34003,varname:node_2486,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9279-OUT;n:type:ShaderForge.SFN_Lerp,id:2536,x:32437,y:34003,varname:node_2536,prsc:2|A-9896-G,B-2486-OUT,T-4874-V;n:type:ShaderForge.SFN_Multiply,id:1170,x:32637,y:34003,varname:node_1170,prsc:2|A-2536-OUT,B-7747-OUT;n:type:ShaderForge.SFN_Vector1,id:7747,x:32437,y:34268,varname:node_7747,prsc:2,v1:-1;n:type:ShaderForge.SFN_Add,id:9017,x:32853,y:34044,varname:node_9017,prsc:2|A-1170-OUT,B-2362-OUT;n:type:ShaderForge.SFN_Vector1,id:2362,x:32649,y:34148,varname:node_2362,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Round,id:6241,x:33170,y:34018,varname:node_6241,prsc:2|IN-9017-OUT;n:type:ShaderForge.SFN_Clamp01,id:8207,x:33413,y:34018,varname:node_8207,prsc:2|IN-6241-OUT;n:type:ShaderForge.SFN_Add,id:4343,x:33031,y:33850,varname:node_4343,prsc:2|A-9632-A,B-8207-OUT;n:type:ShaderForge.SFN_Multiply,id:154,x:32900,y:33691,varname:node_154,prsc:2|A-9632-RGB,B-9632-A;n:type:ShaderForge.SFN_Color,id:3977,x:33015,y:33365,ptovrint:False,ptlb:WaterColor,ptin:_WaterColor,varname:node_3977,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.04705883,c2:0.4039216,c3:0.9137256,c4:1;n:type:ShaderForge.SFN_Lerp,id:6976,x:33352,y:33658,varname:node_6976,prsc:2|A-764-OUT,B-154-OUT,T-9632-A;n:type:ShaderForge.SFN_Color,id:3918,x:33015,y:33197,ptovrint:False,ptlb:FoamColor,ptin:_FoamColor,varname:_WaterColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:9002,x:33111,y:33128,varname:node_9002,prsc:2,v1:0.6;n:type:ShaderForge.SFN_If,id:764,x:33372,y:33274,varname:node_764,prsc:2|A-9002-OUT,B-9017-OUT,GT-3918-RGB,EQ-3977-RGB,LT-3977-RGB;proporder:9632-2675-3977-3918;pass:END;sub:END;*/

Shader "Custom/WindowInside" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _WaveScale ("WaveScale", Vector) = (1,1,1,0)
        _WaterColor ("WaterColor", Color) = (0.04705883,0.4039216,0.9137256,1)
        _FoamColor ("FoamColor", Color) = (1,1,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "RenderType"="TransparentCutout"
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            float3 OceanWave( float _Magnitude , float time , float3 vertPos ){
            return float3(0, vertPos.y
            + sin(vertPos.x / 10 + time*1.5) / 10 * _Magnitude
            + sin(vertPos.x / 5 + time*1.5 + sin(time / 2)) / 10 * _Magnitude
            + cos(vertPos.z / 10 + time * 2) / 10 * _Magnitude
            + sin(vertPos.z / 5 + time*1.5 + sin(time / 4)) / 10 * _Magnitude, 0);
            }
            
            uniform float4 _WaveScale;
            float3 OceanWave1( float _Magnitude , float time , float3 vertPos ){
            return float3(0, vertPos.y
            + sin(vertPos.x / 10 + time*1.5) / 10 * _Magnitude
            + sin(vertPos.x / 5 + time*1.5 + sin(time / 2)) / 10 * _Magnitude
            + cos(vertPos.z / 10 + time * 2) / 10 * _Magnitude
            + sin(vertPos.z / 5 + time*1.5 + sin(time / 4)) / 10 * _Magnitude, 0);
            }
            
            uniform float4 _WaterColor;
            uniform float4 _FoamColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float node_6766 = (_WaveScale.g*(-1.0));
                float4 node_7257 = _Time;
                float3 node_1972 = (i.posWorld.rgb*_WaveScale.rgb);
                float3 node_9896 = OceanWave( node_6766 , node_7257.g , node_1972 ).rgb;
                float node_9017 = ((lerp(node_9896.g,OceanWave1( node_6766 , (node_7257.g+(-0.5)) , node_1972 ).g,i.uv0.g)*(-1.0))+0.6);
                clip((_Texture_var.a+saturate(round(node_9017))) - 0.5);
////// Lighting:
                float node_764_if_leA = step(0.6,node_9017);
                float node_764_if_leB = step(node_9017,0.6);
                float3 finalColor = lerp(lerp((node_764_if_leA*_WaterColor.rgb)+(node_764_if_leB*_FoamColor.rgb),_WaterColor.rgb,node_764_if_leA*node_764_if_leB),(_Texture_var.rgb*_Texture_var.a),_Texture_var.a);
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            float3 OceanWave( float _Magnitude , float time , float3 vertPos ){
            return float3(0, vertPos.y
            + sin(vertPos.x / 10 + time*1.5) / 10 * _Magnitude
            + sin(vertPos.x / 5 + time*1.5 + sin(time / 2)) / 10 * _Magnitude
            + cos(vertPos.z / 10 + time * 2) / 10 * _Magnitude
            + sin(vertPos.z / 5 + time*1.5 + sin(time / 4)) / 10 * _Magnitude, 0);
            }
            
            uniform float4 _WaveScale;
            float3 OceanWave1( float _Magnitude , float time , float3 vertPos ){
            return float3(0, vertPos.y
            + sin(vertPos.x / 10 + time*1.5) / 10 * _Magnitude
            + sin(vertPos.x / 5 + time*1.5 + sin(time / 2)) / 10 * _Magnitude
            + cos(vertPos.z / 10 + time * 2) / 10 * _Magnitude
            + sin(vertPos.z / 5 + time*1.5 + sin(time / 4)) / 10 * _Magnitude, 0);
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float node_6766 = (_WaveScale.g*(-1.0));
                float4 node_7257 = _Time;
                float3 node_1972 = (i.posWorld.rgb*_WaveScale.rgb);
                float3 node_9896 = OceanWave( node_6766 , node_7257.g , node_1972 ).rgb;
                float node_9017 = ((lerp(node_9896.g,OceanWave1( node_6766 , (node_7257.g+(-0.5)) , node_1972 ).g,i.uv0.g)*(-1.0))+0.6);
                clip((_Texture_var.a+saturate(round(node_9017))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
