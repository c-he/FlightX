#version 330 core
layout(location = 0) in vec3 position;
layout(location = 1) in vec2 vertexUV;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec2 UV;
out float height;

void main()
{
    gl_Position = projection * view * model * vec4(position, 1.0f);
    UV = vertexUV;
    height =  position.y;

}
