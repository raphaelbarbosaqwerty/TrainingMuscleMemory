using System;

namespace War_Tanks
{
    public class Tanques:Veiculo
    {
        /* Tanques existentes */
        public string nome;
        public int vida, armadura, dano, tempo;

        public Tanques(string defineNome, int defineVida, int defineArmadura, int defineDano)
        {
            this.nome = defineNome;
            this.vida = defineVida;
            this.armadura = defineArmadura;
            this.dano = defineDano;
            Console.WriteLine(nome + " foi escolhido!");
        }
        //Método de guerra
        public void Movimento()
        {
            Mover();
            Atirar();
            Desviar();
            Recarregar();
        }

        //Método recarregar

        public void Recarregar()
        {
            tempo = 4;
            Console.WriteLine("O tanque está recarregando! " + tempo + " segundos de recarga!");
        }


    }
}