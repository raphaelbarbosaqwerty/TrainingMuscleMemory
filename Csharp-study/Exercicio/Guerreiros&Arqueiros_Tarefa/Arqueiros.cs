using System;

namespace Guerreiros_Arqueiros_Tarefa
{
    
    //Acesso
    public class Arqueiros
    {
        //Atributos dos arqueiros
        string nome, local;
        int vida, agilidade, flechas, dano, curar;

        //Construct

        public Arqueiros(string defineNome, string defineLocal, int defineVida, int defineAgilidade, int defineFlechas, int defineDano, int defineCurar)
        {
            nome = defineNome;
            local = defineLocal;
            vida = defineVida;
            agilidade = defineAgilidade;
            flechas = defineFlechas;
            dano = defineDano;
            curar = defineCurar;

        }

        //Método de ataque
        public void Atacar()
        {
            Console.WriteLine("Arqueiro " + nome + " deu de dano: " + dano);
        }

        //Método para esquivar
        public void Esquivar()
        {
            Console.WriteLine("Arqueiro " + nome + " tem velocidade para se esquivar de: " + agilidade);
        }

        //Método para usar poção
        public void Curar()
        {
            Console.WriteLine("Arqueiro " + nome + " conseguiu curar: " + curar + "\n");
        }
    }
}