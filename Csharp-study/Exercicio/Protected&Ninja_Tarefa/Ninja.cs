using System;

namespace Protected_Ninja_Tarefa
{
    class Ninja
    {
        /* Variáveis com acesso protegido */
        /* Podem ser acessadas por classes quer herdaram (Subzero.cs) */
        protected string nome;
        protected int vida, forca, agilidade;


        //Método Socar
        public void Socar()
        {
            Console.WriteLine(nome + " está socando! com total de força: " + forca);
        }

        //Método Chutar
        public void Chutar()
        {
            Console.WriteLine(nome + " está chutando! com total de força: " + forca);
        }
    }
}