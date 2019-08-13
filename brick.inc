#declare brick_texture =
texture{
     pigment{ brick
              color White
              color rgb<0.8,0.25,0.1>
              // color mortar, color brick
              brick_size <0.25, 0.0525, 0.125 >
              // format in x-,y-,z- direction
              mortar 0.01 // size of the mortar
            }
     normal { wrinkles 0.75 scale 0.01}
     finish { diffuse 0.9 phong 0.2}
     } // end of texture