using System;

namespace Classe_Abstrata
{
    class Tanque:veiculo //Tanque Herda classe abstrata veiculo
    {
        //Atributos dos Tanques
        public string nome;

        //Método
        public void Atirar()
        {
            Mover();
            Console.WriteLine("\nTanque " + nome + " está atirando com dano " + dano);
        }

    }
}