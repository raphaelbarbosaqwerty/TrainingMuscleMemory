using System;

namespace Herança
{
    /* Funcionamento da herança, pegamos atributos da classe principal
    Class principal é Ninja */
    class Scorpion: Ninja
    {
        //Método único de cada um dos Ninjas
        public int tempo;
        public void Arpao()
        {
            tempo = 8;
            Console.WriteLine("Lançando arpão! Prende adversário por " + tempo + " segundos");
        }
    }
}