using System;

namespace Banco_Conta
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Apenas estudo C# - Exercicio 2 - raphaelbarbosaqwerty;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;

                        Exercicio:
                    
                    Banco && Contas;
                
             */
            
            //Apenas chamando
            Console.WriteLine("Banco && Contas");
            Banco banco = new Banco();
                banco.IniciaContas();
                banco.EncontrarMaiorSaldo();
        }
    }
}
