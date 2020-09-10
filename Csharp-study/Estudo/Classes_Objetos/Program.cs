using System;

namespace Classes_Objetos
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Apenas estudo C# - Classes && Objetos;
                Linux Sylvia 18.3
                Visual Studio Code;
                Framework: netcoreapp2.1;


                Criar 5 magos com:
                Atributos && Métodos;
             */

            Console.WriteLine("Criar classe e objetos dos 5 magos, juntamente com seus atributos e métodos\n");

            //Instanciando objeto criar 5 magos com seus atributos e métodos
            Mago magoGandalf = new Mago("Gandalf", "Egito", 100, 200, 100, 100, 100);
                //Chamando métodos de defesa e ataque
                magoGandalf.Atacar();
                magoGandalf.Defender();
                magoGandalf.Velocidade();

            Mago magoSaruman = new Mago("Saruman", "Egito", 80, 80, 80, 80, 80);
                //Chamando métodos de defesa e ataque
                magoSaruman.Atacar();
                magoSaruman.Defender();
                magoSaruman.Velocidade();

            Mago magoHarryPotter = new Mago("Harry Potter", "Hogwarts", 70, 70, 70, 70, 70);
                //Chamando métodos de defesa e ataque
                magoHarryPotter.Atacar();
                magoHarryPotter.Defender();
                magoSaruman.Velocidade();

            Mago magoMestredosmagos = new Mago("Mestre dos magos", "Caverna", 60, 60, 60, 60, 60);
                //Chamando métodos de defesa e ataque
                magoMestredosmagos.Atacar();
                magoMestredosmagos.Defender();
                magoMestredosmagos.Velocidade();

            Mago magoLuminus = new Mago("Luminus", "Iluminus", 333, 333, 333, 333, 333);        
                //Chamando métodos de defesa e ataque
                magoLuminus.Atacar();
                magoLuminus.Defender();
                magoLuminus.Velocidade();            
        }
    }
}
