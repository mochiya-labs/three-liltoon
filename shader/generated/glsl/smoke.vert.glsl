#version 300 es
precision highp float;
precision highp int;

layout(location = 0) in vec3 position;

void main()
{
    gl_Position = vec4(position, 1.0);
}
