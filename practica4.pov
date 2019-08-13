/*
    Escuela de Ingenieria de Sistemas y Computacion - Universidad del Valle
    Asignatura: Computacion Grafica 750006M
    Tema: POVRAY - Trazado de Rayos (Raytracer)
    Practica: 4
    Archivo: practica4.cpp
    Version: 0.1
    Fecha de creacion: 10 Agosto 2019
    Autores:
            Juan Felipe Orozco Escobar  - 1426244
            Jeison Cardona Gomez        - 1325562
*/

#include "colors.inc"
#include "shapes3.inc"      // Rounded_Tube: aros de los monumentos
#include "stones.inc"       // Textura para los muros que sostienen a los monumentos
#include "brick.inc"        // Textura tipo ladrillo para supercie de los monumentos

//// --------------------------------------------------------------------------------------------------
//// Camara, Fuentes de Luz y Fondo: inicio

// Varios angulos de camara:

// Render 1:
camera{
    location<0,-4.5,-16>
    look_at<0,0,0>
}

// Render 2:
/*camera{
    location<-15,-3,-15>
    look_at<-6,0,0>
}*/

// Render 3:
/*camera{
    location<5,-3,-16>
    look_at<3,0,0>
}*/


// Fuente luz monumento #1:
light_source{
    <-10,3,-16>
    White 
    spotlight
    point_at <0,0,5>
}

// Fuente luz monumento #2:
light_source{
    <10,3,0>  
    White 
    spotlight
    point_at <0,0,20>
}

// Fondo:
background {Grey}


//// Camara, Fuentes de Luz y Fondo: final
//// --------------------------------------------------------------------------------------------------


//// --------------------------------------------------------------------------------------------------
//// Monumento #1: inicio

// Aro externo verde:
object {
    Rounded_Tube(
        3,      // tube radius outside
        2.3,    // tube inner radius
        0.1,    // border radius
        1.5,    // tube high
        3       // merge_on
    )
    pigment {color <.04,.25,.06>}
    finish{ambient .5}
    rotate <90,0,0>
    scale <1.4,1.4,1.4>
}

// Aro interno verde:
object {
    Rounded_Tube(
        1.1,    // tube radius outside
        0,      // tube inner radius
        0.1,    // border radius
        0.5,    // tube high
        3       // merge_on
    )
    pigment {color <.04,.25,.06>}
    rotate <90,0,0>
    translate <0,0,.6>
    scale <1.4,1.4,1.4>
}

// Aro interno rojo:
object {
    Rounded_Tube(
        .8,     // tube radius outside
        0.2,    // tube inner radius
        0.1,    // border radius
        0.5,    // tube high
        3       // merge_on
    )
    pigment {color Red}
    rotate <90,0,0>
    translate <0,0,.5>
    scale <1.4,1.4,1.4>
}

// Cilindro interno #1:
cylinder{
    <-2.30,0,0>,
    <2.30,0,0>,
    0.3
    pigment {color <.04,.25,.06>}
    rotate <0,0,93>
    translate <0,0,1>
    scale <1.4,1.4,1.4>
}

// Cilindro interno #2:
cylinder{
    <-2.30,0,0>,
    <2.30,0,0>,
    0.3
    pigment {color <.04,.25,.06>}
    rotate <0,0,33>
    translate <0,0,1>
    scale <1.4,1.4,1.4>
}

// Cilindro interno #3:
cylinder{
    <-2.30,0,0>,
    < 2.30,0,0>,
    0.3
    pigment {color <.04,.25,.06>}
    rotate <0,0,-33>
    translate <0,0,1>
    scale <1.4,1.4,1.4>
}

// Muro delantero:
box {
    <-1.2,2,0>,
    <1.2,6.3,1.2>
    texture {
        T_Stone8
        scale 2
    }
    translate <0,-7.5,-1.2>
}

// Muro trasero:
box {
    <-1.2,2,0>,
    <1.2,6.3,1.2>
    texture {
        T_Stone8
        scale 2
    }
    translate <0,-7.5,2.2>
}

// Superfice:
box {
    <-3.7,1,0>,
    <3.7,1,8>
    texture{
        brick_texture
    }
    finish{ambient .2}
    translate <0,-6.55,-3>
}

// Placa negra:
box {
    <0,0,0>,
    <1.25,.73,.1>
    pigment {color Black}
    translate <-.6,-3,-1.35>
}


//// Monumento #1: final
//// --------------------------------------------------------------------------------------------------


//// --------------------------------------------------------------------------------------------------
//// Monumento #2: inicio

// Aro externo verde:
object {
    Rounded_Tube(
        3,      // tube radius outside
        2.3,    // tube inner radius
        0.1,    // border radius
        1.5,    // tube high
        3       // merge_on
    )
    pigment {color <.04,.25,.06>}
    rotate <90,0,0>
    scale <1.6,1.6,1.6>
    translate <0,0,15>
}

// Aro interno rojo:
object {
    Rounded_Tube(
        2.35,   // tube radius outside
        2.3,    // tube inner radius
        0.1,    // border radius
        1.5,    // tube high
        3       // merge_on
    )
    pigment {color Red}
    rotate <90,0,0>
    scale <1.6,1.6,1.6>
    translate <0,0,15>
}

// Muro lateral derecho:
box {
    <-1,5,0>,
    <1,2,2.43>
    texture {
        T_Stone8
        scale 2
    }
    translate <5,-7.6,15>
}

// Techo muro lateral derecho:
prism {
    conic_sweep
    linear_spline
    0, 
    1, 
    4, 
    <2,2>,<-2,2>,<-2,-2>,<2,-2>
    rotate <180,0,0>
    texture {
        T_Stone8
        scale 2
    }
    scale <0.56,1.18,0.61>
    translate <5,-1.4,16.2>
}

// Muro lateral izquierdo:
box {
    <-1,5,0>,
    <1,2,2.43>
    texture {
        T_Stone8
        scale 2
    }
    translate <-5,-7.6,15>
}

// Techo muro lateral izquierdo:
prism {
    conic_sweep
    linear_spline
    0, 
    1, 
    4, 
    <2,2>,<-2,2>,<-2,-2>,<2,-2>
    rotate <180,0,0>
    texture {
        T_Stone8
        scale 2
    }
    scale <0.56,1.18,0.61>
    translate <-5,-1.4,16.2>
}

// Superfice:
box {
    <-9,1,0>,
    <9,1,8>
    texture{
        brick_texture
    }
    finish{ambient .2}
    translate <0,-6.5,12>
}

// Placa negra:
box {
    <0,0,0>,
    <1.25,.73,.1>
    pigment {color Black}
    translate <4.4,-3.5,14.8>
}


//// Monumento #2: final
//// --------------------------------------------------------------------------------------------------


//// --------------------------------------------------------------------------------------------------
//// Entorno: inicio

// Superfice:
box {
    <-20,1,0>,
    <20,1,50>
    texture{
        finish {diffuse  1.0}
        pigment
            {image_map
                {gif "grass.gif"
                    map_type 0
                }
            }
        scale 0.1
    }
    translate <0,-6.6,-10>
}


//// Entorno: final
//// --------------------------------------------------------------------------------------------------
