using System;

namespace Poliformismo
{
    class Ninja
    {

        //Variáveis acesso public
        public int vida, forca, agilidade;

        /* Método construct não é usado. */

        //Método socar
        public void Socar()
        {
            Console.WriteLine("Socando!");
        }

        //Método chutar
        public void Chutar()
        {
            Console.WriteLine("Chutando!");
        }

        //Método virtual Update para mostrar poliformismo
        public virtual void Update()
        {
            Console.WriteLine("\n==Update==");
            Socar();
            Chutar();

        }
    }
}