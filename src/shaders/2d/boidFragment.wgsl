uniform avoidMouse : u32;
uniform zoom : f32;
uniform mousePos : vec2<f32>;

varying wPos : vec2<f32>;

@fragment
fn main(input : FragmentInputs) -> FragmentOutputs {
    var d = 1.0;
    if(uniforms.avoidMouse > 0) {
        d = distance(input.wPos, uniforms.mousePos) / uniforms.zoom;
    }
    fragmentOutputs.color = vec4(0, d * 0.5, d, 1.0); // *** Can change boid color here
}