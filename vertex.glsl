// This is our input from js world
attribute vec2 coords;
// This is output for the fragment shader
// varying variables are a little special
// you will see why later
varying highp vec2 vTextureCoord;

void main (void) {
    // Texture and verticies have different coordinate spaces
    // we do this to invert Y axis
    vTextureCoord = -coords;

    // Setting vertix position for shape assembler 
    // GLSL has many convenient vector functions
    // here we extending 2D coords vector to 4D with 2 values
    // 0.0 is a Z coordinate
    // 1.1 is a W, special value needed for 3D math
    // just leave it 1 for now
    gl_Position = vec4(coords, 0.0, 1.0);
}