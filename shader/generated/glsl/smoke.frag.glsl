#version 300 es
precision mediump float;
precision highp int;

layout(location = 0) out highp vec4 out_var_SV_Target;

void main()
{
    out_var_SV_Target = vec4(1.0, 0.0, 1.0, 1.0);
}
