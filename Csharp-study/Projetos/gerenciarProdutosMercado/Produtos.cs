using System;
using System.Text;
using System.Linq;
using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace GerenciarProdutosMercado
{
    class Produtos
    {
        //Conexão DB
        public MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=toor");

        //Variáveis
        string nome, empresa, categoria;
        float preco;

        //Método de captura e armazenamento
        public void Capturar_armazenar()
        {
        //Capturar informações
            Console.WriteLine("Entrar com o nome do produto: ");
                nome = Console.ReadLine();
            Console.WriteLine("Entrar com nome da empresa: ");
                empresa = Console.ReadLine();
            Console.WriteLine("Entrar com a categoria do produto: ");
                categoria = Console.ReadLine();
            Console.WriteLine("Entrar com o valor do produto: ");
                preco = float.Parse(Console.ReadLine());
            
            
        //Armazenar na tabela produtos
            string insertQuery = "INSERT INTO magodb.produtos(nome, empresa, categoria, preco) VALUES('"+nome+"','"+empresa+"','"+categoria+"',"+preco+")";
            
            connection.Open();
            MySqlCommand command = new MySqlCommand(insertQuery, connection);
            
                if(command.ExecuteNonQuery()==1)
                    {
                        Console.WriteLine("\nProduto cadastrado!\n");
                            System.Threading.Thread.Sleep(2000);                

                    }
                    else
                    {
                        Console.WriteLine("\nErro, produto não cadastrado, verificar código!\n");
                    }

        //Registrar na tabela pvendas
            string insertRegistro = "INSERT INTO magodb.pvendas(produto, vendas, preco) VALUES('"+nome+"', "+0+", "+preco+")";
            
            MySqlCommand command1 = new MySqlCommand(insertRegistro, connection);
                if(command1.ExecuteNonQuery()==1)
                    {
                        Console.WriteLine("Produto registrado, com 0 vendas!");
                            System.Threading.Thread.Sleep(2000);
                    }
                    else
                    {
                        Console.WriteLine("Erro ao registrar produto, verificar código!\n");
                    }

            connection.Close();

        }

        //Modificar o valor
        public void Modificar()
        {
            Console.WriteLine("Nome do produto? ");
            string updateproduto = Console.ReadLine();
            Console.WriteLine("Novo valor? ");
            float novovalor = int.Parse(Console.ReadLine());

            string updateQuery = "UPDATE magodb.produtos SET preco = "+novovalor+" WHERE nome= '"+updateproduto+"'";
            connection.Open();

            try
            {
                MySqlCommand command = new MySqlCommand(updateQuery, connection);
                if(command.ExecuteNonQuery() == 1)
                {
                    Console.WriteLine("\nValor atualizado!");
                            System.Threading.Thread.Sleep(2000);                

                }
                else
                {
                    Console.WriteLine("Erro! Verificar código!");
                            System.Threading.Thread.Sleep(2000);                

                }
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            connection.Close();
        }

    }
}