using System;

namespace Banco_Conta
{
    public class Conta
    {
        public string nomeCliente;
        public double saldo;

        public void Registro()
        {
            //Fazer a captura de nome cliente e saldo
            Console.WriteLine("Digite o nome do cliente!");
            nomeCliente = Console.ReadLine();

            Console.Write("Digita saldo da conta do cliente!\n");
            saldo = double.Parse(Console.ReadLine());

        }
    }
}