using System;

namespace Poliformismo
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Apenas estudo C# - Poliformismo - raphaelbarbosaqwerty;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;            
             */

            Console.WriteLine("Funcionamento do Poliformismo!(Acessar as classes)");
            
            //Instanciando objetos! e declarando atributos
            Subzero subzero = new Subzero();
                subzero.forca = 50;
                subzero.vida = 50;
                subzero.agilidade = 100;
                subzero.Update();
            
            Ninja ninja = new Ninja();
                ninja.forca = 50;
                ninja.vida = 60;
                ninja.agilidade = 20;
                ninja.Update();
            
            Scorpion scorpion = new Scorpion();
                scorpion.forca = 30;
                scorpion.vida = 30;
                scorpion.agilidade = 30;
                scorpion.Update();

        }
    }
}
