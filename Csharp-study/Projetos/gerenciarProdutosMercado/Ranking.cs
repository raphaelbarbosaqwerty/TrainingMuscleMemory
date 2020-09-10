using System;
using System.Text;
using System.Linq;
using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace GerenciarProdutosMercado
{
    class Ranking
    {
        //Conexão DB
        public MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;username=root;password=toor");

        //Método consultar ranking de vendas
        public void Rvendas()
        {
            //Inicio MYSQL
            MySqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT * FROM magodb.pvendas ORDER BY pvendas.vendas DESC";
            
            try
            {
                connection.Open();
                
             
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            
            MySqlDataReader reader = command.ExecuteReader();
            
            while(reader.Read())
            {
                Console.WriteLine("");
                Console.WriteLine("ID: " + reader["id"].ToString());
                Console.WriteLine("Produto: " + reader["produto"].ToString());
                Console.WriteLine("Vendas: " + reader["vendas"].ToString());
                Console.WriteLine("Preço: " + reader["preco"].ToString());
                Console.WriteLine("");

            }

            System.Threading.Thread.Sleep(2000);
            Console.WriteLine("Inserir opção do menu!");
            
            connection.Close();
        }

        //Método consultar ranking de preço
        public void Rpreco()
        {
            //Inicio MYSQL
            MySqlCommand command = connection.CreateCommand();
            command.CommandText = "SELECT * FROM magodb.pvendas ORDER BY pvendas.vendas ASC, pvendas.preco ASC";
            
            try
            {
                connection.Open();
                
             
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            
            MySqlDataReader reader = command.ExecuteReader();
            
            while(reader.Read()) //Fazer a leitura das columns
            {
                Console.WriteLine("");
                Console.WriteLine("ID: " + reader["id"].ToString());
                Console.WriteLine("Produto: " + reader["produto"].ToString());
                Console.WriteLine("Vendas: " + reader["vendas"].ToString());
                Console.WriteLine("Preço: " + reader["preco"].ToString());
                Console.WriteLine("");

            }

            System.Threading.Thread.Sleep(2000);
            Console.WriteLine("Inserir opção do menu!");
            
            connection.Close();

        }
    }
}