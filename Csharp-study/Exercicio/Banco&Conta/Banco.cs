using System;

namespace Banco_Conta
{
    class Banco
    {
        /* Devera conter um array de contas e um método
        para permitir que seja digitado um valor para
        iniciar o array. */

        //Array
        Conta[] contas;
        
        public void IniciaContas()
        {
            //Usuario digita a quantia definindo var quantia
            int quantia;
            Console.WriteLine("Digite número de contas");
            quantia = int.Parse(Console.ReadLine());
            
            //instancia array de contas com var tamanho
            contas = new Conta[quantia];
            
            //percorrey array de contas
            for(int i = 0; i < quantia; i++)
            {
                //Instancia objeto conta em cada posição
                contas[i] = new Conta();

                //Chama método registro
                contas[i].Registro();
            }
        }

        public void EncontrarMaiorSaldo()
        {
            //Variável
            int msaldo = 0;

            //For para fazer a varredura
            for(int i = 1; i < contas.Length; i++)
            {
                //Caso a saldo seja maior
                if(contas[i].saldo > contas[msaldo].saldo)
                {
                    msaldo = i;
                }
            }

            //Imprimir
            Console.WriteLine("Nome do rico: " + contas[msaldo].nomeCliente);
            Console.WriteLine("Maior saldo: " + contas[msaldo].saldo);
        }

    }
}