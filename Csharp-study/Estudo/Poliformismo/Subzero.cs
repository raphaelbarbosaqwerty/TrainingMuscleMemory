using System;

namespace Poliformismo
{
    /* Funcionamento do Poliformismo */
    /* Necessário ter a herança de um método virtual na base
    para poder funcionar o override já que substitui */
    class Subzero: Ninja
    {
        //Método único de cada um dos Ninjas
        public int tempo;
        

        /* Protected: Não consigo chamar em outros lugares
        porém na mesma classe consigo chamar. */
        protected void Gelo()
        {
            tempo = 10;
            Console.WriteLine("Lançando gelo! Tempo de congelmaneto " + tempo + " segundos");
        }

        //Métodos virtuais poliformismo
        //Override faz a substituição do virtual update em Ninja.cs(Base)
        public override void Update()
        {
            Console.WriteLine("\n==Update Subzero==");
            Socar();
            Chutar();
            Gelo(); //Especial do ninja Subzero = Exclusivo

        }
    }
}