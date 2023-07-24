// See https://aka.ms/new-console-template for more information
using System.Collections.Generic;

Console.WriteLine("Emplieza");



//Declaracion de Variables
List<string> frutas = new List<string>();
List<string> animales = new List<string>();
List<string> color = new List<string>();
string controlSwich = "menu";
int coins = 0;
string nombreDePalabra = "";
string palabraAdvivinada = "";
string letra= "";
string momentoPalabra= "";





//categoria animales
animales.Add("perro");
animales.Add("gato");
animales.Add("elefante");
animales.Add("pez");
animales.Add("leon");
//categoria frutas
frutas.Add("anana");
frutas.Add("manzana");
frutas.Add("naranja");
frutas.Add("pera");
frutas.Add("limon");
//categoria colores
color.Add("gris");
color.Add("blanco");
color.Add("violeta");
color.Add("borravino");
color.Add("negro");




while (true)
{
    Console.WriteLine("Bienvenido a el Ahorcado hecho por Werty");
    Console.WriteLine("Cuantos Creditos deseas ? \n " + "recuerda que neceneitas una por ronda");
     coins = int.Parse(Console.ReadLine());

   for (int i = 0; i < coins; i++)
   {

     nombreDePalabra = "";
     palabraAdvivinada = "";


        switch (controlSwich)
        {
            case"menu":
            Console.WriteLine("escribe que 'si' para empezar a jugar");
             controlSwich = Console.ReadLine();
            i = i - 1;
            break;

             case"si":
 

            do
            {
                    Console.WriteLine("Elige una letra para completar el ahorcado");
                    string letraElegida = Console.ReadLine();
                    Console.WriteLine($"Elegiste la letra : {letraElegida} ");



                    Console.WriteLine($"la palabra quedaria :  {momentoPalabra} ");

            }
            




        }
    
    
   }
}

