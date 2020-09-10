using System;

namespace Protected_Ninja_Tarefa
{
    class Subzero:Ninja //Herdando classe Ninja
    {
        //Método public
        
        /* Construct com acesso público acessando as variáveis com valores protegidos */
        public Subzero(string defineNome, int defineVida, int defineForca, int defineAgilidade)
        { 
            this.nome = defineNome;
            this.vida = defineVida;
            this.forca = defineForca;
            this.agilidade = defineAgilidade;
        }

        //Método Gelo
        public void Gelo()
        {
            Console.WriteLine(nome + " está congelando oponente!");
        }
    }
}