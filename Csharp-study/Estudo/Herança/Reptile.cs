using System;

namespace Herança
{
    /* Funcionamento da herança, pegamos atributos da classe principal
    Class principal é Ninja */
    class Reptile: Ninja
    {
        //Método único de cada um dos Ninjas
        public int tempo;
        public void Acido()
        {
            tempo = 8;
            Console.WriteLine("Lançando Ácido! Tempo de derretimento " + tempo + " segundos");
        }
    }
}