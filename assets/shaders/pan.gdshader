shader_type canvas_item;

uniform vec2 speed = vec2(1.0, 1.0); // Speed of the texture movement
// scale factoring for TIME, lesser values may cause jitter.
uniform float timescale = 0.1;
void fragment() {
    float scaled_time = TIME * timescale;
    vec2 offset = mod(UV + scaled_time * speed, 1.0);
    COLOR = texture(TEXTURE, offset);
}
