using System;

namespace Guerreiros_Arqueiros_Tarefa
{
    //Acesso
    public class Guerreiros
    {
        //Atributos dos guerreiros
        string nome, local;
        int vida, agilidade, dano, defesa;

        //Construct
        public Guerreiros(string defineNome, string defineLocal, int defineVida, int defineAgilidade, int defineDano, int defineDfesa)
        {
            nome = defineNome;
            local = defineLocal;
            vida = defineVida;
            agilidade = defineAgilidade;
            dano = defineDano;
            defesa = defineDfesa;
        }

        //Método de ataque
        public void Atacar()
        {
            Console.WriteLine("Guerreiro " + nome + " deu dano de: " + dano);
        }

        //Método de defesa
        public void Defender()
        {
            Console.WriteLine("Guerreiro " + nome + " se defendeu com total de: " + defesa);

        }

        //Método de cura
        public void Agilidade()
        {
            Console.WriteLine("Guerreiro " + nome + " tem velocidade de: " + agilidade + "\n");
        }
    }
}