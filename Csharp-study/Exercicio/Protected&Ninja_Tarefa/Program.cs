using System;

namespace Protected_Ninja_Tarefa
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Apenas estudo C# - Tarefa 2 (Herança) - raphaelbarbosaqwerty;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;

                Tarefa:
                Definir 3 vars protected na classe Ninja;                
             */

            Console.WriteLine("Tarefa Herança");

        //Instanciando objeto
        Subzero subzero = new Subzero("Subzero", 100, 100, 100);
            subzero.Chutar();
            subzero.Socar();
            subzero.Gelo();            
        }
    }
}
