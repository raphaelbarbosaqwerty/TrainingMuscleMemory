using System;

namespace Classe_Abstrata
{
    //Classe abstrata veiculo é apenas uma ideia
    public abstract class veiculo
    {
        public int vida, armadura, dano;

        public void Mover()
        {
            Console.WriteLine("Veículo está se movendo!");
        }

    }
}