using System;

namespace War_Tanks
{
    public class Gerenciador
    {
        /* Gerenciador de batalha entre tanques! */

        public Tanques tanque1, tanque2;    
        public void Gerenciar()
        {
            Console.WriteLine("\n"+tanque1.nome + " enfrenta " + tanque2.nome);
            
        }
    }
}