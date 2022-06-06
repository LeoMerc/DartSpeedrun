//import 'dart:io';
import 'dart:core';

void main() {

Set restaurantes = {

{
"nombre": "El novillo alegre",
"tipo": "Argentina",
"calificaciones": [4, 5, 2, 1, 2]
},

{
"nombre": "Baires Grill",
"tipo": "Argentina",
"calificaciones": [3, 1, 3, 5, 5, 2, 3]
},

{
"nombre": "Mario Brothers",
"tipo": "Italiana",
"calificaciones": [4, 3, 2, 1, 1]
},

{
"nombre": "Molto bene",
"tipo": "Italiana",
"calificaciones": [4, 3, 1, 1, 5]
}


};

promedio(restaurantes);

}


 void promedio(Set restaurantes){
double promedioI = 0, promedioA = 0, promedioT = 0, conti = 0, conta = 0, contt = 0;
for (var value in restaurantes){
  if (value["tipo"] == "Italiana"){
    for (var calificacion in value["calificaciones"]){
      promedioI += calificacion;
      conti++; 

      promedioT += calificacion;
      contt++;
    }
}

  if (value["tipo"] == "Argentina"){
    for (var calificacion in value["calificaciones"]){
      promedioA += calificacion;
      conta++; 

       promedioT += calificacion;
      contt++;
      
    }
    
  }
    
 

}
promedioI /= conti;
promedioA /= conta;
promedioT /= contt;

Map promedios = {
  "Italiana": promedioI,
  "Argentina": promedioA,
  "Total": promedioT
};

print (promedios);



 }