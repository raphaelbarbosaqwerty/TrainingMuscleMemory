using System;

namespace Herança
{
    /* Funcionamento da herança, pegamos atributos da classe principal
    Class principal é Ninja */
    class Subzero : Ninja
    {
        //Método único de cada um dos Ninjas
        public int tempo;

        public void Gelo()
        {
            tempo = 10;
            Console.WriteLine("Lançando gelo! Tempo de congelmaneto " + tempo + " segundos");
        }
    }
}