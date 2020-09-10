using System;

namespace War_Tanks
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Apenas estudo C# - Projeto1 (Guerra dos Tanques) - raphaelbarbosaqwerty;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;        
                Versão simples    
             */
            Console.WriteLine("Guerra dos Tanques!\n");

        /* Instanciando 2 tanques para uso! */
            Tanques panzer = new Tanques("Panzer", 100, 70, 80);
            Tanques cascavel = new Tanques("Cascavel", 120, 90, 100);
        
        /* Instanciando gerenciador de batalha! */
            Gerenciador gerenciador = new Gerenciador();
            /* Definindo os dois tanques para a batalha */
                gerenciador.tanque1 = panzer;
                gerenciador.tanque2 = cascavel;
                
                //Gerenciando
                gerenciador.Gerenciar();
                
        }
    }
}
