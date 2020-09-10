using System;

namespace Classes_Objetos
{
    //Acesso
    public class Mago
    {
            //Atributos
            string nome, escola;
            int vida, mana, forca, defesa, agilidade;
            
            //Método Construct
            public Mago(string defineNome, string defineEscola, int defineVida, int defineMana, int defineForca, int defineDefesa, int defineAgilidade)
            {
                nome = defineNome;
                escola = defineEscola;
                vida = defineVida;
                mana = defineMana;
                forca = defineForca;
                defesa = defineDefesa;
                agilidade = defineAgilidade;
            }

            //Método de Dtaque
            public void Atacar()
            {
                Console.WriteLine("Mago " + nome + " atacou com total de dano: " + forca);
            }

            //Método de Defesa
            public void Defender()
            {
                Console.WriteLine("Mago " + nome + " defendeu com total de defesa: " + defesa);
            }

            //Método de Velocidade
            public void Velocidade()
            {
                Console.WriteLine("Mago " + nome + " se esquivou com total de velocidade: " + agilidade + "\n");
            }
    }
}