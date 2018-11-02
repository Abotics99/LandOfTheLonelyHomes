// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:2,stmr:42,stmw:42,stcp:4,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34023,y:33003,varname:node_3138,prsc:2|custl-2199-OUT,voffset-4986-OUT;n:type:ShaderForge.SFN_Tex2d,id:558,x:32415,y:32789,ptovrint:False,ptlb:FoamTexture,ptin:_FoamTexture,varname:_OceanTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dd321857565926643946170b0f2306ac,ntxv:0,isnm:False|UVIN-8275-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1890,x:30262,y:33303,varname:node_1890,prsc:2;n:type:ShaderForge.SFN_Code,id:1598,x:31438,y:32792,varname:node_1598,prsc:2,code:ZgBsAG8AYQB0ACAAcgBlAHQAIAA9ACAAMAA7AA0ACgAgACAAaQBuAHQAIABpAHQAZQByAGEAdABpAG8AbgBzACAAPQAgADYAOwANAAoAIAAgAGYAbwByACAAKABpAG4AdAAgAGkAIAA9ACAAMAA7ACAAaQAgADwAIABpAHQAZQByAGEAdABpAG8AbgBzADsAIAArACsAaQApAA0ACgAgACAAewANAAoAIAAgACAAIAAgAGYAbABvAGEAdAAyACAAcAAgAD0AIABmAGwAbwBvAHIAKABVAFYAIAAqACAAKABpACsAMQApACkAOwANAAoAIAAgACAAIAAgAGYAbABvAGEAdAAyACAAZgAgAD0AIABmAHIAYQBjACgAVQBWACAAKgAgACgAaQArADEAKQApADsADQAKACAAIAAgACAAIABmACAAPQAgAGYAIAAqACAAZgAgACoAIAAoADMALgAwACAALQAgADIALgAwACAAKgAgAGYAKQA7AA0ACgAgACAAIAAgACAAZgBsAG8AYQB0ACAAbgAgAD0AIABwAC4AeAAgACsAIABwAC4AeQAgACoAIAA1ADcALgAwADsADQAKACAAIAAgACAAIABmAGwAbwBhAHQANAAgAG4AbwBpAHMAZQAgAD0AIABmAGwAbwBhAHQANAAoAG4ALAAgAG4AIAArACAAMQAsACAAbgAgACsAIAA1ADcALgAwACwAIABuACAAKwAgADUAOAAuADAAKQA7AA0ACgAgACAAIAAgACAAbgBvAGkAcwBlACAAPQAgAGYAcgBhAGMAKABzAGkAbgAoAG4AbwBpAHMAZQApACoANAAzADcALgA1ADgANQA0ADUAMwApADsADQAKACAAIAAgACAAIAByAGUAdAAgACsAPQAgAGwAZQByAHAAKABsAGUAcgBwACgAbgBvAGkAcwBlAC4AeAAsACAAbgBvAGkAcwBlAC4AeQAsACAAZgAuAHgAKQAsACAAbABlAHIAcAAoAG4AbwBpAHMAZQAuAHoALAAgAG4AbwBpAHMAZQAuAHcALAAgAGYALgB4ACkALAAgAGYALgB5ACkAIAAqACAAKAAgAGkAdABlAHIAYQB0AGkAbwBuAHMAIAAvACAAKABpACsAMQApACkAOwANAAoAIAAgAH0ADQAKACAAIAByAGUAdAB1AHIAbgAgAHIAZQB0AC8AaQB0AGUAcgBhAHQAaQBvAG4AcwA7AA==,output:0,fname:SimpleNoise,width:247,height:112,input:1,input_1_label:UV|A-2877-OUT;n:type:ShaderForge.SFN_Time,id:4979,x:32754,y:33564,varname:node_4979,prsc:2;n:type:ShaderForge.SFN_Add,id:8275,x:32173,y:32689,varname:node_8275,prsc:2|A-6212-OUT,B-9724-OUT;n:type:ShaderForge.SFN_Code,id:4986,x:33003,y:33811,varname:node_4986,prsc:2,code:cgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMwAoADAALAAgAHYAZQByAHQAUABvAHMALgB5AA0ACgArACAAcwBpAG4AKAB2AGUAcgB0AFAAbwBzAC4AeAAgAC8AIAAxADAAIAArACAAdABpAG0AZQAqADEALgA1ACkAIAAvACAAMQAwACAAKgAgAF8ATQBhAGcAbgBpAHQAdQBkAGUADQAKACsAIABzAGkAbgAoAHYAZQByAHQAUABvAHMALgB4ACAALwAgADUAIAArACAAdABpAG0AZQAqADEALgA1ACAAKwAgAHMAaQBuACgAdABpAG0AZQAgAC8AIAAyACkAKQAgAC8AIAAxADAAIAAqACAAXwBNAGEAZwBuAGkAdAB1AGQAZQANAAoAKwAgAGMAbwBzACgAdgBlAHIAdABQAG8AcwAuAHoAIAAvACAAMQAwACAAKwAgAHQAaQBtAGUAIAAqACAAMgApACAALwAgADEAMAAgACoAIABfAE0AYQBnAG4AaQB0AHUAZABlAA0ACgArACAAcwBpAG4AKAB2AGUAcgB0AFAAbwBzAC4AegAgAC8AIAA1ACAAKwAgAHQAaQBtAGUAKgAxAC4ANQAgACsAIABzAGkAbgAoAHQAaQBtAGUAIAAvACAANAApACkAIAAvACAAMQAwACAAKgAgAF8ATQBhAGcAbgBpAHQAdQBkAGUADQAsACAAMAApADsA,output:2,fname:SinWaves,width:247,height:112,input:0,input:0,input:2,input_1_label:_Magnitude,input_2_label:time,input_3_label:vertPos|A-9568-Y,B-4979-T,C-7178-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3038,x:32596,y:33564,varname:node_3038,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:9568,x:32596,y:33712,ptovrint:False,ptlb:WaveScale,ptin:_WaveScale,varname:node_9568,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:1,v4:0;n:type:ShaderForge.SFN_Multiply,id:7178,x:32754,y:33685,varname:node_7178,prsc:2|A-3038-XYZ,B-9568-XYZ;n:type:ShaderForge.SFN_Vector1,id:5845,x:31086,y:32728,varname:node_5845,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:2877,x:31251,y:32815,varname:node_2877,prsc:2|A-8363-OUT,B-5845-OUT;n:type:ShaderForge.SFN_Code,id:1689,x:31438,y:32942,varname:node_1689,prsc:2,code:ZgBsAG8AYQB0ACAAcgBlAHQAIAA9ACAAMAA7AA0ACgAgACAAaQBuAHQAIABpAHQAZQByAGEAdABpAG8AbgBzACAAPQAgADYAOwANAAoAIAAgAGYAbwByACAAKABpAG4AdAAgAGkAIAA9ACAAMAA7ACAAaQAgADwAIABpAHQAZQByAGEAdABpAG8AbgBzADsAIAArACsAaQApAA0ACgAgACAAewANAAoAIAAgACAAIAAgAGYAbABvAGEAdAAyACAAcAAgAD0AIABmAGwAbwBvAHIAKABVAFYAIAAqACAAKABpACsAMQApACkAOwANAAoAIAAgACAAIAAgAGYAbABvAGEAdAAyACAAZgAgAD0AIABmAHIAYQBjACgAVQBWACAAKgAgACgAaQArADEAKQApADsADQAKACAAIAAgACAAIABmACAAPQAgAGYAIAAqACAAZgAgACoAIAAoADMALgAwACAALQAgADIALgAwACAAKgAgAGYAKQA7AA0ACgAgACAAIAAgACAAZgBsAG8AYQB0ACAAbgAgAD0AIABwAC4AeAAgACsAIABwAC4AeQAgACoAIAA1ADcALgAwADsADQAKACAAIAAgACAAIABmAGwAbwBhAHQANAAgAG4AbwBpAHMAZQAgAD0AIABmAGwAbwBhAHQANAAoAG4ALAAgAG4AIAArACAAMQAsACAAbgAgACsAIAA1ADcALgAwACwAIABuACAAKwAgADUAOAAuADAAKQA7AA0ACgAgACAAIAAgACAAbgBvAGkAcwBlACAAPQAgAGYAcgBhAGMAKABzAGkAbgAoAG4AbwBpAHMAZQApACoANAAzADcALgA1ADgANQA0ADUAMwApADsADQAKACAAIAAgACAAIAByAGUAdAAgACsAPQAgAGwAZQByAHAAKABsAGUAcgBwACgAbgBvAGkAcwBlAC4AeAAsACAAbgBvAGkAcwBlAC4AeQAsACAAZgAuAHgAKQAsACAAbABlAHIAcAAoAG4AbwBpAHMAZQAuAHoALAAgAG4AbwBpAHMAZQAuAHcALAAgAGYALgB4ACkALAAgAGYALgB5ACkAIAAqACAAKAAgAGkAdABlAHIAYQB0AGkAbwBuAHMAIAAvACAAKABpACsAMQApACkAOwANAAoAIAAgAH0ADQAKACAAIAByAGUAdAB1AHIAbgAgAHIAZQB0AC8AaQB0AGUAcgBhAHQAaQBvAG4AcwA7AA==,output:0,fname:SimpleNoise1,width:247,height:112,input:1,input_1_label:UV|A-9514-OUT;n:type:ShaderForge.SFN_Multiply,id:9514,x:31251,y:32957,varname:node_9514,prsc:2|A-2569-OUT,B-5508-OUT;n:type:ShaderForge.SFN_Vector1,id:5508,x:31026,y:33147,varname:node_5508,prsc:2,v1:0.1;n:type:ShaderForge.SFN_RemapRange,id:9677,x:31804,y:32806,varname:node_9677,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1598-OUT;n:type:ShaderForge.SFN_Multiply,id:9724,x:32128,y:32848,varname:node_9724,prsc:2|A-5156-OUT,B-9104-OUT;n:type:ShaderForge.SFN_Vector1,id:9104,x:31954,y:32971,varname:node_9104,prsc:2,v1:0.05;n:type:ShaderForge.SFN_FragmentPosition,id:2689,x:31795,y:32628,varname:node_2689,prsc:2;n:type:ShaderForge.SFN_Append,id:6212,x:31994,y:32644,varname:node_6212,prsc:2|A-2689-X,B-2689-Z;n:type:ShaderForge.SFN_Append,id:6243,x:30423,y:33303,varname:node_6243,prsc:2|A-1890-X,B-1890-Z;n:type:ShaderForge.SFN_Add,id:5156,x:31966,y:32823,varname:node_5156,prsc:2|A-9677-OUT,B-403-OUT;n:type:ShaderForge.SFN_RemapRange,id:403,x:31804,y:32971,varname:node_403,prsc:2,frmn:0,frmx:1,tomn:-4,tomx:4|IN-1689-OUT;n:type:ShaderForge.SFN_Color,id:8682,x:32412,y:33045,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:node_8682,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03529412,c2:0.3882353,c3:0.8784314,c4:1;n:type:ShaderForge.SFN_Add,id:9648,x:33019,y:33051,varname:node_9648,prsc:2|A-558-RGB,B-3259-OUT;n:type:ShaderForge.SFN_Add,id:8363,x:31013,y:32815,varname:node_8363,prsc:2|A-6243-OUT,B-5618-OUT;n:type:ShaderForge.SFN_Time,id:9184,x:30262,y:33148,varname:node_9184,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5618,x:30821,y:32718,varname:node_5618,prsc:2|A-9184-T,B-8595-OUT;n:type:ShaderForge.SFN_Add,id:2569,x:31013,y:32957,varname:node_2569,prsc:2|A-6243-OUT,B-2836-OUT;n:type:ShaderForge.SFN_Multiply,id:2836,x:30792,y:33147,varname:node_2836,prsc:2|A-9184-T,B-2995-OUT;n:type:ShaderForge.SFN_Vector2,id:8595,x:30668,y:32773,varname:node_8595,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Vector2,id:2995,x:30586,y:33147,varname:node_2995,prsc:2,v1:-2,v2:-2;n:type:ShaderForge.SFN_Code,id:9820,x:31451,y:33298,varname:node_9820,prsc:2,code:ZgBsAG8AYQB0ACAAcgBlAHQAIAA9ACAAMAA7AA0ACgAgACAAaQBuAHQAIABpAHQAZQByAGEAdABpAG8AbgBzACAAPQAgADYAOwANAAoAIAAgAGYAbwByACAAKABpAG4AdAAgAGkAIAA9ACAAMAA7ACAAaQAgADwAIABpAHQAZQByAGEAdABpAG8AbgBzADsAIAArACsAaQApAA0ACgAgACAAewANAAoAIAAgACAAIAAgAGYAbABvAGEAdAAyACAAcAAgAD0AIABmAGwAbwBvAHIAKABVAFYAIAAqACAAKABpACsAMQApACkAOwANAAoAIAAgACAAIAAgAGYAbABvAGEAdAAyACAAZgAgAD0AIABmAHIAYQBjACgAVQBWACAAKgAgACgAaQArADEAKQApADsADQAKACAAIAAgACAAIABmACAAPQAgAGYAIAAqACAAZgAgACoAIAAoADMALgAwACAALQAgADIALgAwACAAKgAgAGYAKQA7AA0ACgAgACAAIAAgACAAZgBsAG8AYQB0ACAAbgAgAD0AIABwAC4AeAAgACsAIABwAC4AeQAgACoAIAA1ADcALgAwADsADQAKACAAIAAgACAAIABmAGwAbwBhAHQANAAgAG4AbwBpAHMAZQAgAD0AIABmAGwAbwBhAHQANAAoAG4ALAAgAG4AIAArACAAMQAsACAAbgAgACsAIAA1ADcALgAwACwAIABuACAAKwAgADUAOAAuADAAKQA7AA0ACgAgACAAIAAgACAAbgBvAGkAcwBlACAAPQAgAGYAcgBhAGMAKABzAGkAbgAoAG4AbwBpAHMAZQApACoANAAzADcALgA1ADgANQA0ADUAMwApADsADQAKACAAIAAgACAAIAByAGUAdAAgACsAPQAgAGwAZQByAHAAKABsAGUAcgBwACgAbgBvAGkAcwBlAC4AeAAsACAAbgBvAGkAcwBlAC4AeQAsACAAZgAuAHgAKQAsACAAbABlAHIAcAAoAG4AbwBpAHMAZQAuAHoALAAgAG4AbwBpAHMAZQAuAHcALAAgAGYALgB4ACkALAAgAGYALgB5ACkAIAAqACAAKAAgAGkAdABlAHIAYQB0AGkAbwBuAHMAIAAvACAAKABpACsAMQApACkAOwANAAoAIAAgAH0ADQAKACAAIAByAGUAdAB1AHIAbgAgAHIAZQB0AC8AaQB0AGUAcgBhAHQAaQBvAG4AcwA7AA==,output:0,fname:SimpleNoise2,width:247,height:112,input:1,input_1_label:UV|A-6586-OUT;n:type:ShaderForge.SFN_Multiply,id:6586,x:31264,y:33298,varname:node_6586,prsc:2|A-1235-OUT,B-5845-OUT;n:type:ShaderForge.SFN_Code,id:7060,x:31451,y:33485,varname:node_7060,prsc:2,code:ZgBsAG8AYQB0ACAAcgBlAHQAIAA9ACAAMAA7AA0ACgAgACAAaQBuAHQAIABpAHQAZQByAGEAdABpAG8AbgBzACAAPQAgADYAOwANAAoAIAAgAGYAbwByACAAKABpAG4AdAAgAGkAIAA9ACAAMAA7ACAAaQAgADwAIABpAHQAZQByAGEAdABpAG8AbgBzADsAIAArACsAaQApAA0ACgAgACAAewANAAoAIAAgACAAIAAgAGYAbABvAGEAdAAyACAAcAAgAD0AIABmAGwAbwBvAHIAKABVAFYAIAAqACAAKABpACsAMQApACkAOwANAAoAIAAgACAAIAAgAGYAbABvAGEAdAAyACAAZgAgAD0AIABmAHIAYQBjACgAVQBWACAAKgAgACgAaQArADEAKQApADsADQAKACAAIAAgACAAIABmACAAPQAgAGYAIAAqACAAZgAgACoAIAAoADMALgAwACAALQAgADIALgAwACAAKgAgAGYAKQA7AA0ACgAgACAAIAAgACAAZgBsAG8AYQB0ACAAbgAgAD0AIABwAC4AeAAgACsAIABwAC4AeQAgACoAIAA1ADcALgAwADsADQAKACAAIAAgACAAIABmAGwAbwBhAHQANAAgAG4AbwBpAHMAZQAgAD0AIABmAGwAbwBhAHQANAAoAG4ALAAgAG4AIAArACAAMQAsACAAbgAgACsAIAA1ADcALgAwACwAIABuACAAKwAgADUAOAAuADAAKQA7AA0ACgAgACAAIAAgACAAbgBvAGkAcwBlACAAPQAgAGYAcgBhAGMAKABzAGkAbgAoAG4AbwBpAHMAZQApACoANAAzADcALgA1ADgANQA0ADUAMwApADsADQAKACAAIAAgACAAIAByAGUAdAAgACsAPQAgAGwAZQByAHAAKABsAGUAcgBwACgAbgBvAGkAcwBlAC4AeAAsACAAbgBvAGkAcwBlAC4AeQAsACAAZgAuAHgAKQAsACAAbABlAHIAcAAoAG4AbwBpAHMAZQAuAHoALAAgAG4AbwBpAHMAZQAuAHcALAAgAGYALgB4ACkALAAgAGYALgB5ACkAIAAqACAAKAAgAGkAdABlAHIAYQB0AGkAbwBuAHMAIAAvACAAKABpACsAMQApACkAOwANAAoAIAAgAH0ADQAKACAAIAByAGUAdAB1AHIAbgAgAHIAZQB0AC8AaQB0AGUAcgBhAHQAaQBvAG4AcwA7AA==,output:0,fname:SimpleNoise3,width:247,height:112,input:1,input_1_label:UV|A-3942-OUT;n:type:ShaderForge.SFN_Multiply,id:3942,x:31264,y:33487,varname:node_3942,prsc:2|A-9066-OUT,B-5508-OUT;n:type:ShaderForge.SFN_Add,id:1235,x:31026,y:33298,varname:node_1235,prsc:2|A-6001-OUT,B-6451-OUT;n:type:ShaderForge.SFN_Multiply,id:6451,x:30792,y:33298,varname:node_6451,prsc:2|A-4480-OUT,B-8595-OUT;n:type:ShaderForge.SFN_Add,id:9066,x:31026,y:33487,varname:node_9066,prsc:2|A-6001-OUT,B-6342-OUT;n:type:ShaderForge.SFN_Multiply,id:6342,x:30792,y:33487,varname:node_6342,prsc:2|A-4480-OUT,B-2995-OUT;n:type:ShaderForge.SFN_Add,id:4480,x:30586,y:33487,varname:node_4480,prsc:2|A-9184-T,B-2118-OUT;n:type:ShaderForge.SFN_Add,id:6001,x:30586,y:33298,varname:node_6001,prsc:2|A-6243-OUT,B-6243-OUT;n:type:ShaderForge.SFN_Vector1,id:2118,x:30423,y:33487,varname:node_2118,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:3259,x:32745,y:33168,varname:node_3259,prsc:2|A-8682-RGB,B-4696-RGB,T-3546-RGB;n:type:ShaderForge.SFN_Add,id:3850,x:32182,y:33216,varname:node_3850,prsc:2|A-2286-OUT,B-3943-OUT;n:type:ShaderForge.SFN_RemapRange,id:5412,x:31813,y:33333,varname:node_5412,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9820-OUT;n:type:ShaderForge.SFN_Multiply,id:3943,x:32137,y:33375,varname:node_3943,prsc:2|A-2255-OUT,B-7104-OUT;n:type:ShaderForge.SFN_Vector1,id:7104,x:31963,y:33498,varname:node_7104,prsc:2,v1:0.05;n:type:ShaderForge.SFN_FragmentPosition,id:1539,x:31804,y:33155,varname:node_1539,prsc:2;n:type:ShaderForge.SFN_Append,id:2286,x:32003,y:33171,varname:node_2286,prsc:2|A-1539-X,B-1539-Z;n:type:ShaderForge.SFN_Add,id:2255,x:31975,y:33350,varname:node_2255,prsc:2|A-5412-OUT,B-3429-OUT;n:type:ShaderForge.SFN_RemapRange,id:3429,x:31813,y:33498,varname:node_3429,prsc:2,frmn:0,frmx:1,tomn:-4,tomx:4|IN-7060-OUT;n:type:ShaderForge.SFN_Tex2d,id:3546,x:32412,y:33377,ptovrint:False,ptlb:WaterTexture,ptin:_WaterTexture,varname:_OceanTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dd321857565926643946170b0f2306ac,ntxv:0,isnm:False|UVIN-3850-OUT;n:type:ShaderForge.SFN_Color,id:4696,x:32412,y:33206,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:_node_8682_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3198773,c3:0.764151,c4:1;n:type:ShaderForge.SFN_Clamp01,id:2199,x:33274,y:33051,varname:node_2199,prsc:2|IN-9648-OUT;proporder:558-3546-9568-8682-4696;pass:END;sub:END;*/

Shader "Shader Forge/OceanLowQuality" {
    Properties {
        _FoamTexture ("FoamTexture", 2D) = "white" {}
        _WaterTexture ("WaterTexture", 2D) = "white" {}
        _WaveScale ("WaveScale", Vector) = (1,1,1,0)
        _Color1 ("Color1", Color) = (0.03529412,0.3882353,0.8784314,1)
        _Color2 ("Color2", Color) = (0,0.3198773,0.764151,1)
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            float SimpleNoise( float2 UV ){
            float ret = 0;
              int iterations = 6;
              for (int i = 0; i < iterations; ++i)
              {
                 float2 p = floor(UV * (i+1));
                 float2 f = frac(UV * (i+1));
                 f = f * f * (3.0 - 2.0 * f);
                 float n = p.x + p.y * 57.0;
                 float4 noise = float4(n, n + 1, n + 57.0, n + 58.0);
                 noise = frac(sin(noise)*437.585453);
                 ret += lerp(lerp(noise.x, noise.y, f.x), lerp(noise.z, noise.w, f.x), f.y) * ( iterations / (i+1));
              }
              return ret/iterations;
            }
            
            float3 SinWaves( float _Magnitude , float time , float3 vertPos ){
            return float3(0, vertPos.y
            + sin(vertPos.x / 10 + time*1.5) / 10 * _Magnitude
            + sin(vertPos.x / 5 + time*1.5 + sin(time / 2)) / 10 * _Magnitude
            + cos(vertPos.z / 10 + time * 2) / 10 * _Magnitude
            + sin(vertPos.z / 5 + time*1.5 + sin(time / 4)) / 10 * _Magnitude, 0);
            }
            
            uniform float4 _WaveScale;
            float SimpleNoise1( float2 UV ){
            float ret = 0;
              int iterations = 6;
              for (int i = 0; i < iterations; ++i)
              {
                 float2 p = floor(UV * (i+1));
                 float2 f = frac(UV * (i+1));
                 f = f * f * (3.0 - 2.0 * f);
                 float n = p.x + p.y * 57.0;
                 float4 noise = float4(n, n + 1, n + 57.0, n + 58.0);
                 noise = frac(sin(noise)*437.585453);
                 ret += lerp(lerp(noise.x, noise.y, f.x), lerp(noise.z, noise.w, f.x), f.y) * ( iterations / (i+1));
              }
              return ret/iterations;
            }
            
            uniform float4 _Color1;
            float SimpleNoise2( float2 UV ){
            float ret = 0;
              int iterations = 6;
              for (int i = 0; i < iterations; ++i)
              {
                 float2 p = floor(UV * (i+1));
                 float2 f = frac(UV * (i+1));
                 f = f * f * (3.0 - 2.0 * f);
                 float n = p.x + p.y * 57.0;
                 float4 noise = float4(n, n + 1, n + 57.0, n + 58.0);
                 noise = frac(sin(noise)*437.585453);
                 ret += lerp(lerp(noise.x, noise.y, f.x), lerp(noise.z, noise.w, f.x), f.y) * ( iterations / (i+1));
              }
              return ret/iterations;
            }
            
            float SimpleNoise3( float2 UV ){
            float ret = 0;
              int iterations = 6;
              for (int i = 0; i < iterations; ++i)
              {
                 float2 p = floor(UV * (i+1));
                 float2 f = frac(UV * (i+1));
                 f = f * f * (3.0 - 2.0 * f);
                 float n = p.x + p.y * 57.0;
                 float4 noise = float4(n, n + 1, n + 57.0, n + 58.0);
                 noise = frac(sin(noise)*437.585453);
                 ret += lerp(lerp(noise.x, noise.y, f.x), lerp(noise.z, noise.w, f.x), f.y) * ( iterations / (i+1));
              }
              return ret/iterations;
            }
            
            uniform sampler2D _WaterTexture; uniform float4 _WaterTexture_ST;
            uniform float4 _Color2;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 node_4979 = _Time;
                v.vertex.xyz += SinWaves( _WaveScale.g , node_4979.g , (mul(unity_ObjectToWorld, v.vertex).rgb*_WaveScale.rgb) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float2 node_6243 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_9184 = _Time;
                float2 node_8595 = float2(0.5,0.5);
                float node_5845 = 1.0;
                float2 node_2995 = float2(-2,-2);
                float node_5508 = 0.1;
                float2 node_8275 = (float2(i.posWorld.r,i.posWorld.b)+(((SimpleNoise( ((node_6243+(node_9184.g*node_8595))*node_5845) )*2.0+-1.0)+(SimpleNoise1( ((node_6243+(node_9184.g*node_2995))*node_5508) )*8.0+-4.0))*0.05));
                float4 _FoamTexture_var = tex2D(_FoamTexture,TRANSFORM_TEX(node_8275, _FoamTexture));
                float2 node_6001 = (node_6243+node_6243);
                float node_4480 = (node_9184.g+1.0);
                float2 node_3850 = (float2(i.posWorld.r,i.posWorld.b)+(((SimpleNoise2( ((node_6001+(node_4480*node_8595))*node_5845) )*2.0+-1.0)+(SimpleNoise3( ((node_6001+(node_4480*node_2995))*node_5508) )*8.0+-4.0))*0.05));
                float4 _WaterTexture_var = tex2D(_WaterTexture,TRANSFORM_TEX(node_3850, _WaterTexture));
                float3 finalColor = saturate((_FoamTexture_var.rgb+lerp(_Color1.rgb,_Color2.rgb,_WaterTexture_var.rgb)));
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
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            float3 SinWaves( float _Magnitude , float time , float3 vertPos ){
            return float3(0, vertPos.y
            + sin(vertPos.x / 10 + time*1.5) / 10 * _Magnitude
            + sin(vertPos.x / 5 + time*1.5 + sin(time / 2)) / 10 * _Magnitude
            + cos(vertPos.z / 10 + time * 2) / 10 * _Magnitude
            + sin(vertPos.z / 5 + time*1.5 + sin(time / 4)) / 10 * _Magnitude, 0);
            }
            
            uniform float4 _WaveScale;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 node_4979 = _Time;
                v.vertex.xyz += SinWaves( _WaveScale.g , node_4979.g , (mul(unity_ObjectToWorld, v.vertex).rgb*_WaveScale.rgb) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
