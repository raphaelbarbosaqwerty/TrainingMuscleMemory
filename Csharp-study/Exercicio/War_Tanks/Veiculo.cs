using System;

namespace War_Tanks
{
    public abstract class Veiculo
    {
        /* Apenas uma ideia de veiculos */

      
        public void Mover()
        {
            Console.WriteLine("O tanque está se movendo!");
        }

        public void Desviar()
        {
            Console.WriteLine("O tanque está desviando!");
        }
        
        //Método atirar
        public void Atirar()
        {
            Console.WriteLine("O tanque está atirando!");
        }  
    }
}