// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:1,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:2,stmr:42,stmw:10,stcp:6,stps:2,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5502,x:33273,y:32726,varname:node_5502,prsc:2|custl-618-RGB,clip-4111-OUT,voffset-1659-OUT;n:type:ShaderForge.SFN_Code,id:8159,x:32033,y:32951,varname:node_8159,prsc:2,code:cgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMwAoADAALAAgAHYAZQByAHQAUABvAHMALgB5AA0ACgArACAAcwBpAG4AKAB2AGUAcgB0AFAAbwBzAC4AeAAgAC8AIAAxADAAIAArACAAdABpAG0AZQAqADEALgA1ACkAIAAvACAAMQAwACAAKgAgAF8ATQBhAGcAbgBpAHQAdQBkAGUADQAKACsAIABzAGkAbgAoAHYAZQByAHQAUABvAHMALgB4ACAALwAgADUAIAArACAAdABpAG0AZQAqADEALgA1ACAAKwAgAHMAaQBuACgAdABpAG0AZQAgAC8AIAAyACkAKQAgAC8AIAAxADAAIAAqACAAXwBNAGEAZwBuAGkAdAB1AGQAZQANAAoAKwAgAGMAbwBzACgAdgBlAHIAdABQAG8AcwAuAHoAIAAvACAAMQAwACAAKwAgAHQAaQBtAGUAIAAqACAAMgApACAALwAgADEAMAAgACoAIABfAE0AYQBnAG4AaQB0AHUAZABlAA0ACgArACAAcwBpAG4AKAB2AGUAcgB0AFAAbwBzAC4AegAgAC8AIAA1ACAAKwAgAHQAaQBtAGUAKgAxAC4ANQAgACsAIABzAGkAbgAoAHQAaQBtAGUAIAAvACAANAApACkAIAAvACAAMQAwACAAKgAgAF8ATQBhAGcAbgBpAHQAdQBkAGUADQAsACAAMAApADsA,output:2,fname:Function_node_8159,width:380,height:176,input:0,input:0,input:2,input_1_label:_Magnitude,input_2_label:time,input_3_label:vertPos|A-3962-OUT,B-670-T,C-6398-OUT;n:type:ShaderForge.SFN_Time,id:670,x:31734,y:32780,varname:node_670,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:425,x:31498,y:32780,varname:node_425,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6398,x:31734,y:32925,varname:node_6398,prsc:2|A-425-XYZ,B-833-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:833,x:31498,y:32925,ptovrint:False,ptlb:WaveScale,ptin:_WaveScale,varname:node_833,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_Multiply,id:3962,x:31734,y:33068,varname:node_3962,prsc:2|A-833-Y,B-4882-OUT;n:type:ShaderForge.SFN_Vector1,id:4882,x:31498,y:33102,varname:node_4882,prsc:2,v1:-1;n:type:ShaderForge.SFN_ComponentMask,id:4591,x:32524,y:32955,varname:node_4591,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8159-OUT;n:type:ShaderForge.SFN_If,id:1074,x:32729,y:32955,varname:node_1074,prsc:2|A-817-OUT,B-4591-OUT,GT-842-OUT,EQ-2249-OUT,LT-3502-OUT;n:type:ShaderForge.SFN_Vector1,id:817,x:32524,y:32900,varname:node_817,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:842,x:32524,y:33101,varname:node_842,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2249,x:32524,y:33155,varname:node_2249,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3502,x:32524,y:33207,varname:node_3502,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:4111,x:32978,y:32998,ptovrint:False,ptlb:ClipAboveWater,ptin:_ClipAboveWater,varname:node_4111,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3799-OUT,B-1074-OUT;n:type:ShaderForge.SFN_Vector1,id:3799,x:32777,y:32826,varname:node_3799,prsc:2,v1:1;n:type:ShaderForge.SFN_NormalVector,id:7186,x:32820,y:33208,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:1659,x:33008,y:33208,varname:node_1659,prsc:2|A-7186-OUT,B-5068-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5068,x:32820,y:33375,ptovrint:False,ptlb:VertOffset,ptin:_VertOffset,varname:node_5068,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:618,x:32978,y:32782,ptovrint:False,ptlb:node_618,ptin:_node_618,varname:node_618,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;proporder:833-4111-5068-618;pass:END;sub:END;*/

Shader "Custom/OceanMaskInside" {
    Properties {
        _WaveScale ("WaveScale", Vector) = (1,1,1,0)
        [MaterialToggle] _ClipAboveWater ("ClipAboveWater", Float ) = 0
        _VertOffset ("VertOffset", Float ) = 0
        _node_618 ("node_618", Color) = (1,1,1,1)
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
            Cull Front
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            float3 Function_node_8159( float _Magnitude , float time , float3 vertPos ){
            return float3(0, vertPos.y
            + sin(vertPos.x / 10 + time*1.5) / 10 * _Magnitude
            + sin(vertPos.x / 5 + time*1.5 + sin(time / 2)) / 10 * _Magnitude
            + cos(vertPos.z / 10 + time * 2) / 10 * _Magnitude
            + sin(vertPos.z / 5 + time*1.5 + sin(time / 4)) / 10 * _Magnitude, 0);
            }
            
            uniform float4 _WaveScale;
            uniform fixed _ClipAboveWater;
            uniform float _VertOffset;
            uniform float4 _node_618;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                v.vertex.xyz += (v.normal*_VertOffset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_670 = _Time;
                float node_1074_if_leA = step(0.0,Function_node_8159( (_WaveScale.g*(-1.0)) , node_670.g , (i.posWorld.rgb*_WaveScale.rgb) ).g);
                float node_1074_if_leB = step(Function_node_8159( (_WaveScale.g*(-1.0)) , node_670.g , (i.posWorld.rgb*_WaveScale.rgb) ).g,0.0);
                clip(lerp( 1.0, lerp((node_1074_if_leA*1.0)+(node_1074_if_leB*0.0),0.0,node_1074_if_leA*node_1074_if_leB), _ClipAboveWater ) - 0.5);
////// Lighting:
                float3 finalColor = _node_618.rgb;
                return fixed4(finalColor,1);
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            float3 Function_node_8159( float _Magnitude , float time , float3 vertPos ){
            return float3(0, vertPos.y
            + sin(vertPos.x / 10 + time*1.5) / 10 * _Magnitude
            + sin(vertPos.x / 5 + time*1.5 + sin(time / 2)) / 10 * _Magnitude
            + cos(vertPos.z / 10 + time * 2) / 10 * _Magnitude
            + sin(vertPos.z / 5 + time*1.5 + sin(time / 4)) / 10 * _Magnitude, 0);
            }
            
            uniform float4 _WaveScale;
            uniform fixed _ClipAboveWater;
            uniform float _VertOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                v.vertex.xyz += (v.normal*_VertOffset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_670 = _Time;
                float node_1074_if_leA = step(0.0,Function_node_8159( (_WaveScale.g*(-1.0)) , node_670.g , (i.posWorld.rgb*_WaveScale.rgb) ).g);
                float node_1074_if_leB = step(Function_node_8159( (_WaveScale.g*(-1.0)) , node_670.g , (i.posWorld.rgb*_WaveScale.rgb) ).g,0.0);
                clip(lerp( 1.0, lerp((node_1074_if_leA*1.0)+(node_1074_if_leB*0.0),0.0,node_1074_if_leA*node_1074_if_leB), _ClipAboveWater ) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
