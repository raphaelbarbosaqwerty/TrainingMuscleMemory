using System;

namespace Jogador_Inimigo
{
    //Acesso public para poder ser acessado de fora
    public class Inimigo
    {
        //Atributos

        /* Definindo como Public para o main poder acessar
        e pegar os valores que estão contidos dentro das variáveis */
        public string nome;
        public int forca, ataque, defesa, velocidade;
        public float dinheiro;

        //Método Construct
        public Inimigo(string defineNome, int defineForca, int defineAtaque, int defineDefesa, int defineVelocidade, float defineDinheiro)
        {
            this.nome = defineNome;
            this.forca = defineForca;
            this.defesa = defineDefesa;
            this.ataque = defineAtaque;
            this.velocidade = defineVelocidade;
            this.dinheiro = defineDinheiro;
        }

        //Método Atacar
        public void Atacar()
        {
            Console.WriteLine(nome + " atacou com força!");
        }

        //Método Defender
        public void Defesa()
        {
            Console.WriteLine(nome + " defendeu com força!\n");
        }
    }
}