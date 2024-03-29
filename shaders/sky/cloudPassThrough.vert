#version 330 core

// input
layout(location = 0) in vec3 vs_in_position;
layout(location = 1) in vec3 vs_in_size_time_rand;

// output
out vec3 vs_out_position;
out float vs_out_size;
out float vs_out_remainingLifeTime;
out float vs_out_rand; // random value from -1 to 1

void main()
{
    vs_out_position = vs_in_position;
    vs_out_size = vs_in_size_time_rand.x;
    vs_out_remainingLifeTime = vs_in_size_time_rand.y;
    vs_out_rand = vs_in_size_time_rand.z;
}