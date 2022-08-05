// VERTEX SHADER
#version 450 core 
layout (location = 0) in vec2 position; 
layout (location = 1) in vec3 transformer;
out vec3 color_data;

uniform float time;

void main() {
    gl_Position = vec4(
        (position.x*sin(time) + position.y*tan(time + degrees(180)))*sin(time), 
        (position.x*tan(time + degrees(180)) + position.y*cos(time))*sin(time), 
        0.0f, 1.0f
    );
    color_data = transformer;
}
