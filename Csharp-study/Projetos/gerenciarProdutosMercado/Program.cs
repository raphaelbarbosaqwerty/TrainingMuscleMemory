using System;
using System.Text;
using System.Linq;
using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace GerenciarProdutosMercado
{
    class Program
    {
        static void Main(string[] args)
        {
                /* Apenas estudo C# - Gerenciamento de Mercado - raphaelbarbosaqwerty;
                    Linux Sylvia 18.3
                    Visual Studio Code;
                    Framework: netcoreapp2.1;            
                
                Cadastro de produtos:
                    *ID, Nome, Empresa, Categoria e Preço.
                        > Atributos em classe
                        > ID auto-incremento
                Registro de vendas:
                    *User registrar quatnidade de produtos vendidos
                        > Ao digitar o nome ou ID do produto deve ser registrado +1 de venda
                        > Tanto nome quanto id devem permitir registro
                Exibição de catálogo:
                    *Deve ser permitido visualizar produtos de uma mesma categoria
                        > Se limpeza for digitado, ver todos dessa
                Modificar preço:
                    *Deve ser possível modificar o preço do produto
                        > ID ou Nome para poder atualizar
                Ranking de vendas:
                    *Exibir em ordem descrescente dos produtos com mais vendas
                Ranking de rentabilidade:
                    *Exibição em ordem descrescente dos produtos que geraram mais receita
                */
                int option = 99;

            Menu:
                Console.WriteLine("Seja bem-vindo ao mercado do mago");
                Console.WriteLine("1 - Cadastro de produtos");
                Console.WriteLine("2 - Registro de vendas"); //Problema em incrementar
                Console.WriteLine("3 - Exibição do catálogo");
                Console.WriteLine("4 - Modificar preço");
                Console.WriteLine("---- Rankings ----");
                Console.WriteLine("5 - Ranking de vendas");
                Console.WriteLine("6 - Ranking de rentabilidade");
                Console.WriteLine("\nEntrar com opção desejada:");

            while(option != 0)
            {
                option = int.Parse(Console.ReadLine());
                switch(option)
                {
                    case 1:
                    Produtos cadastrarproduto = new Produtos();
                        cadastrarproduto.Capturar_armazenar();
                        goto Menu;
                    case 2:
                    Registro atualizar = new Registro();
                        atualizar.Atualizar();
                        break;
                    case 3:
                    Catalogo catalogo = new Catalogo();
                        catalogo.Consultar();
                        goto Menu;
                    case 4:
                    Produtos modificar = new Produtos();
                        modificar.Modificar();
                        goto Menu;
                    case 5:
                    Ranking vendas = new Ranking();
                        vendas.Rvendas();
                        goto Menu;
                    case 6:
                    Ranking rentabilidade = new Ranking();
                        rentabilidade.Rpreco();
                        goto Menu;
                    case 0: //Sair do programa
                        return;
                    default:
                        Console.WriteLine("\nOpção incorreta! Digite uma opção válida!");
                        break;
                }

            }
        }
    }
}
