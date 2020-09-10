using System;
using System.Threading;

namespace corridaCavalos
{
    public class Cavalos
    {
        string nome;

        public Cavalos(string defineNome) 
        {
            nome = defineNome;
        }

        public void Correr()
        {
            Random numMetrosCorridos = new Random();
            int valoresMetrosCorridos = numMetrosCorridos.Next(27, 30);
            
            Console.WriteLine("Cavalo " + nome + " está correndo, correu " + valoresMetrosCorridos + " metros!" );
            Pular();

            if(valoresMetrosCorridos == 30)
            {
                Console.WriteLine("\nVencedor da corrida foi: " + nome);
            } 
                else if(valoresMetrosCorridos == 29)
                {
                    Console.WriteLine("\nSegundo lugar da corrida foi: " + nome);
                }
                else if(valoresMetrosCorridos == 28)
                {
                    Console.WriteLine("\nTerceiro lugar da corrida foi: " + nome);
                }
            else
            {

            }
        }

        private void Pular()
        {

            Random numMPulos = new Random();
            int valoresMetrosPulos = numMPulos.Next(1,4);
            
            Console.WriteLine("Cavalo " + nome + " está pulando: " + valoresMetrosPulos + " metros!");
            Descansar();

        }

        private void Descansar()
        {
            Console.WriteLine("Cavalo " + nome + " está descansando, após seu pulo, velocidade reduzida!");
        }

    }
}