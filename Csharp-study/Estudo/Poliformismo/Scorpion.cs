using System;

namespace Poliformismo
{
    class Scorpion: Ninja
    {
        //Método único de cada um dos Ninjas
        public int tempo;
        protected void Arpao()
        {
            tempo = 8;
            Console.WriteLine("Lançando arpão! Prende adversário por " + tempo + " segundos");
        }

        public override void Update()
        {
            //Chamar o update da class Ninja!
            base.Update();
            //Chamo o arpão da class Scorpion
            Arpao();
        }
    }
}