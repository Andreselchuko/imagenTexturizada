
#include "colors.inc" //Para incluir nombres de colores

//C�mara
//Me permite colocar una c�mara y aputarla a una localizaci�n espec�fica.
camera{
    //D�nde se encuentra la c�mara con coordenadas <x,y,z>
    location <4,10,25>
    //A donde apunta con coordenadas <x,y,z>
    look_at <4,5,8>
    }

//Fuente de luz
global_settings { ambient_light rgb<1, 1, 1> 
} 

//Esfera
sphere{
    //Localizaci�n y radio
    <4,5,8>, 3.54
    //Textura de la esfera
    texture{
	//Solo se usa pigmento    
        pigment{ image_map
                    { png "C:\Users\Andres\Music\Povraytexturas\descarga.png"
                          map_type 0
  }
}
	//El acabado final y representa una propiedad de la reflexi�n de la luz
        /*finish{
            phong 1         
        } */  
    }
}

//Plano 
  plane {
    y, -1
    texture {     
	    pigment{     
	        //azul 
		    color rgb<0,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }

