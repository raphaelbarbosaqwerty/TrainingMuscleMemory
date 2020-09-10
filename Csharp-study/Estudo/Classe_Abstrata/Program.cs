using System;

namespace Classe_Abstrata
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Apenas estudo C# - Classes && Métodos Abstratos - raphaelbarbosaqwerty;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;            
             */
            Console.WriteLine("Classes && Métodos Abstratos");
        
        //Instanciando objeto
            //Instanciando objeto em classe normal funciona
            Tanque panzer = new Tanque();
                //Atributos do obj
                panzer.nome = "Panzer";
                panzer.vida = 100;
                panzer.dano = 90;
                panzer.armadura = 70;
                panzer.Atirar();

            /* Instanciar objeto em classe abstrata não funciona
            pois é só uma ideia. */
        }
    }
}
