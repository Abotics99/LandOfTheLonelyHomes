// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:0,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1222,x:33077,y:32782,varname:node_1222,prsc:2|custl-3488-OUT;n:type:ShaderForge.SFN_Color,id:2535,x:32130,y:32739,ptovrint:False,ptlb:Col1,ptin:_Col1,varname:node_2535,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8270292,c2:0.8588006,c3:0.990566,c4:1;n:type:ShaderForge.SFN_Color,id:4202,x:31825,y:32954,ptovrint:False,ptlb:Col2,ptin:_Col2,varname:node_4202,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2688679,c2:0.482608,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:3488,x:32404,y:32996,varname:node_3488,prsc:2|A-2535-RGB,B-4202-RGB,T-1675-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:3539,x:31159,y:32890,varname:node_3539,prsc:2;n:type:ShaderForge.SFN_Clamp01,id:5278,x:32195,y:33129,varname:node_5278,prsc:2|IN-1675-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9587,x:31167,y:33225,varname:node_9587,prsc:2;n:type:ShaderForge.SFN_Subtract,id:2025,x:31549,y:33138,varname:node_2025,prsc:2|A-9587-Y,B-3539-Y;n:type:ShaderForge.SFN_RemapRange,id:1675,x:31995,y:33188,varname:node_1675,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-8501-OUT;n:type:ShaderForge.SFN_ObjectScale,id:5466,x:31587,y:33308,varname:node_5466,prsc:2,rcp:False;n:type:ShaderForge.SFN_Divide,id:8501,x:31759,y:33214,varname:node_8501,prsc:2|A-2025-OUT,B-5466-Y;proporder:2535-4202;pass:END;sub:END;*/

Shader "Custom/SkyboxGradient" {
    Properties {
        _Col1 ("Col1", Color) = (0.8270292,0.8588006,0.990566,1)
        _Col2 ("Col2", Color) = (0.2688679,0.482608,1,1)
    }
    SubShader {
        Tags {
            "Queue"="Background"
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Front
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Col1;
            uniform float4 _Col2;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float3 recipObjScale = float3( length(unity_WorldToObject[0].xyz), length(unity_WorldToObject[1].xyz), length(unity_WorldToObject[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
////// Lighting:
                float node_1675 = (((i.posWorld.g-objPos.g)/objScale.g)*0.5+0.5);
                float3 finalColor = lerp(_Col1.rgb,_Col2.rgb,node_1675);
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
            Cull Front
            
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
