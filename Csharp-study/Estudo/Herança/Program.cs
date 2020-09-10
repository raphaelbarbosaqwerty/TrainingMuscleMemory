using System;

namespace Herança
{
    class Program
    {
        static void Main(string[] args)
        {

            /* Apenas estudo C# - Herança - raphaelbarbosaqwerty;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;

                Exercicio:
                    Herança;                
             */
            Console.WriteLine("Funcionamento de Herança");

        //Funcionamento da Herança

            /* Classe ninja contém os atributos comuns dos ninjas */

            /* Classe Subzero contém o atributo especial do Ninja */
            Subzero subzero = new Subzero();

                Console.WriteLine("\nSubzero:");
                subzero.vida = 100; //vida está em classe Ninja, é algo comum.
                subzero.forca = 80; //forca está em classe Ninja, é algo comum.
                subzero.agilidade = 60; //agilidade está em classe Ninja, é algo comum.
                subzero.Socar(); //Socar está em classe Ninja, é algo comum.
                subzero.Chutar(); //Chutar está em classe Ninja, é algo comum.
            
            /* Atributo especial do Subzero */
                subzero.Gelo(); //Gelo está em classe Subzero, é algo incomum pois é exclusivo

            /* Classe Scorpion contém o atributo especial do Ninja */
            Scorpion scorpion = new Scorpion();

                Console.WriteLine("\nScorpion:");
                subzero.vida = 100; //vida está em classe Ninja, é algo comum.
                subzero.forca = 60; //forca está em classe Ninja, é algo comum.
                subzero.agilidade = 50; //agilidade está em classe Ninja, é algo comum.
                subzero.Socar(); //Socar está em classe Ninja, é algo comum.
                subzero.Chutar(); //Chutar está em classe Ninja, é algo comum.

            /* Atributo especial do Scorpion */
                scorpion.Arpao(); //Arpao está em classe Scorpion, é algo incomum pois é exclusivo

            /* Classe Reptile contém o atributo especial do Ninja */
            Reptile reptile = new Reptile();

                Console.WriteLine("\nReptile:");
                subzero.vida = 100; //vida está em classe Ninja, é algo comum.
                subzero.forca = 50; //forca está em classe Ninja, é algo comum.
                subzero.agilidade = 70; //agilidade está em classe Ninja, é algo comum.
                subzero.Socar(); //Socar está em classe Ninja, é algo comum.
                subzero.Chutar(); //Chutar está em classe Ninja, é algo comum.

            /* Atributo especial do Reptile */
                reptile.Acido(); //Acido está em classe Reptile, é algo incomum pois é exclusivo
            
        }
    }
}
